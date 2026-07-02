-- ==========================================
-- CONFIGURATION
local TARGET_TEXT = "https://auth.platorelay.com" 
local API_KEY = "0a58d5c9-973a-4073-a257-4b3347514b86"
local API_URL = "https://api.izen.lol/v1/bypass"
local LOG_FILE = "bypass.log"

-- Delta Cache Directory (Where the bypassed key goes)
local DELTA_CACHE_DIR = "/storage/emulated/0/Delta/Internals/Cache/"
local LICENSE_FILE = DELTA_CACHE_DIR .. "license"

-- Roblox Auto-Launch Settings (Where the game opens to)
local ROBLOX_PKG  = "com.roblox.clienu"
local SERVER_LINK = "roblox://placeID=920587237"
-- ==========================================

local function logMessage(level, msg)
    local log_line = os.date("%Y-%m-%d %H:%M:%S") .. " [" .. level .. "] " .. msg
    print(log_line)
    local f = io.open(LOG_FILE, "a")
    if f then
        f:write(log_line .. "\n")
        f:close()
    end
end

local function checkDependencies()
    local errors = {}
    local cmd_handle = io.popen("command -v termux-clipboard-get")
    if cmd_handle:read("*a"):match("^%s*$") then table.insert(errors, "Termux API missing") end
    cmd_handle:close()

    local curl_handle = io.popen("command -v curl")
    if curl_handle:read("*a"):match("^%s*$") then table.insert(errors, "Curl missing") end
    curl_handle:close()

    local su_handle = io.popen("command -v su")
    if su_handle:read("*a"):match("^%s*$") then table.insert(errors, "Root access (su) missing") end
    su_handle:close()

    if #errors > 0 then
        for _, err in ipairs(errors) do logMessage("FATAL", "Dependency fail: " .. err) end
        return false
    end
    return true
end

if not checkDependencies() then os.exit(1) end

local function getClipboard()
    local handle = io.popen("termux-clipboard-get")
    if not handle then return nil end
    local content = handle:read("*a")
    handle:close()
    return content:gsub("[\n\r]*$", "")
end

local function launchRoblox()
    logMessage("INFO", "Preparing to launch Roblox...")

    -- Force stop the existing package (Errors printed to console now)
    os.execute(string.format('su -c "am force-stop %s"', ROBLOX_PKG))
    os.execute("sleep 2")

    -- Launch the predefined server link using the -p (package) flag
    logMessage("INFO", "Executing Android Intent to join server...")
    
    local launch_cmd = string.format(
        'su -c "am start -a android.intent.action.VIEW -p %s -d \'%s\'"',
        ROBLOX_PKG, SERVER_LINK
    )
    
    -- Actually run it without hiding the output
    local success = os.execute(launch_cmd)
    
    if success then
        logMessage("SUCCESS", "Launch command sent to Android.")
    else
        logMessage("ERROR", "Android failed to execute the launch command.")
    end
end

local function bypassUrl(target_url)
    print("bypass....")
    logMessage("INFO", "Triggered. Attempting to bypass: " .. target_url)
    
    local safe_url = target_url:gsub('"', '') 
    local cmd = string.format(
        'curl -s -G "%s" --data-urlencode "url=%s" -H "x-api-key: %s"', 
        API_URL, safe_url, API_KEY
    )
    
    local max_retries = 3
    local attempt = 1

    -- Retry Loop Starts Here
    while attempt <= max_retries do
        logMessage("INFO", string.format("API Request Attempt %d of %d", attempt, max_retries))
        
        local handle = io.popen(cmd)
        local response = handle:read("*a")
        handle:close()
        
        if not response or response == "" then
            logMessage("ERROR", "Empty response from curl. Check network connection.")
        else
            local status = response:match('"status"%s*:%s*"([^"]+)"')
            
            if status == "success" then
                local result = response:match('"result"%s*:%s*"([^"]+)"')
                
                if result then
                    logMessage("SUCCESS", "Bypassed successfully.")
                    
                    -- Save the bypassed key to Delta's cache
                    os.execute('mkdir -p "' .. DELTA_CACHE_DIR .. '"')
                    local file = io.open(LICENSE_FILE, "w")
                    if file then
                        file:write(result)
                        file:close()
                        logMessage("INFO", "Result successfully written to " .. LICENSE_FILE)
                        
                        -- CRITICAL: Break out of the retry loop because it was successful!
                        break
                    else
                        logMessage("ERROR", "Permission denied writing to " .. LICENSE_FILE)
                        -- If file writing fails, retrying the API won't fix it, so we break.
                        break
                    end
                else
                    logMessage("ERROR", "API returned success, but failed to parse 'result'.")
                end
            else
                local msg = response:match('"message"%s*:%s*"([^"]+)"')
                logMessage("ERROR", "API Bypass Failed. Message: " .. (msg or "Unknown error."))
            end
        end

        -- If the script reaches this point, the attempt failed.
        if attempt < max_retries then
            logMessage("INFO", "Retrying in 2 seconds...")
            os.execute("sleep 40")
        else
            logMessage("ERROR", "Max retries reached. API Bypass totally failed.")
        end

        -- Increment the attempt counter
        attempt = attempt + 1
    end
end

-- ==========================================
-- SCRIPT EXECUTION STARTS HERE
-- ==========================================

-- Launch Roblox FIRST as requested
launchRoblox()

logMessage("INFO", "Script started. Monitoring clipboard for: '" .. TARGET_TEXT .. "'")

-- Main Loop: Monitor the clipboard in the background while the game runs
while true do
    local text = getClipboard()

    if text and text ~= "" and string.find(text, TARGET_TEXT, 1, true) then
        local extracted_url = text:match("(https?://%S+)")
        
        if extracted_url then
            bypassUrl(extracted_url)
            break -- Exits the loop after a successful bypass trigger
        end
    end

    os.execute("sleep 2")
end

logMessage("INFO", "Script finished.")
