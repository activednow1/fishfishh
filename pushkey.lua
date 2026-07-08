-- ==========================================
-- PERSISTENT KEY CHECKER
-- ==========================================
local DELTA_CACHE_DIR = "/storage/emulated/0/Delta/Internals/Cache/"
local LICENSE_FILE    = DELTA_CACHE_DIR .. "license"
local CHECK_INTERVAL  = 300 -- 5 minutes in seconds

local stored_key = nil

local function log(msg)
    print(os.date("%Y-%m-%d %H:%M:%S") .. " [KEY-CHECKER] " .. msg)
end

local function readLicenseFile()
    log("Reading license file: " .. LICENSE_FILE)
    local f = io.open(LICENSE_FILE, "r")
    if not f then
        log("WARN: License file not found at " .. LICENSE_FILE)
        return nil
    end
    log("License file opened successfully.")
    local content = f:read("*a")
    f:close()
    content = content:gsub("^%s+", ""):gsub("%s+$", "")
    if content == "" then
        log("WARN: License file exists but is empty.")
        return nil
    end
    log("License file read. Key length: " .. #content .. " chars.")
    return content
end

local function restoreLicense()
    log("Attempting to restore license...")
    if not stored_key then
        log("ERROR: No key in memory to restore. Waiting for a valid key first.")
        return false
    end

    log("Ensuring directory exists: " .. DELTA_CACHE_DIR)
    os.execute('mkdir -p "' .. DELTA_CACHE_DIR .. '"')

    log("Opening license file for write: " .. LICENSE_FILE)
    local f = io.open(LICENSE_FILE, "w")
    if not f then
        log("ERROR: Cannot write to " .. LICENSE_FILE .. " — permission denied or bad path.")
        return false
    end
    f:write(stored_key)
    f:close()
    log("SUCCESS: License file restored. Written key: " .. stored_key)
    return true
end

local function checkCycle()
    log("--- Cycle start ---")
    local file_key = readLicenseFile()

    if file_key then
        if file_key ~= stored_key then
            local old = stored_key or "(none)"
            stored_key = file_key
            log("Key changed in memory. Old: " .. old .. " | New: " .. stored_key)
        else
            log("Key unchanged. In memory and on disk: " .. stored_key)
        end
    else
        log("License missing or empty. Triggering restore...")
        local ok = restoreLicense()
        if not ok then
            log("WARN: Restore failed this cycle. Will retry next cycle.")
        end
    end
    log("--- Cycle end ---")
end

-- ==========================================
-- MAIN LOOP
-- ==========================================
log("Persistent key checker started.")
log("License path : " .. LICENSE_FILE)
log("Check interval: " .. CHECK_INTERVAL .. " seconds")

while true do
    checkCycle()
    os.execute("sleep " .. CHECK_INTERVAL)
end
