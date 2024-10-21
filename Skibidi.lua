local Fluxus_Z_loader = true
local Synapse_loader = true
local Delta_loader = true
local Codex_loader = false

if fluxus_Z_loader = true 
    then do
        print("fluxus&hwid")
    else
        do
            print("fluxus&hwidtrue")
        end
    end
end
else
if Synapse_loader = true 
    then do
        print("Synapse&hwid")
    else
        do
            print("Synapse&hwidtrue")
        end
    end
end
else
if Delta_loader = true 
    then do
        print("Delta&hwid")
    else
        do
            print("Deltahwidtrue")
        end
    end
end
else
if Codex_loader = true 
    then do
        print("Codex&hwid")
    else
        do
            print("Codexhwidtrue")
        end
    end
end

local request = request or http_request or Krnl.request or syn.request or Fluxus.request

local function fetchScript(nga)
    local url = nga
    local headers = {
        ["ngrok-skip-browser-warning"] = "true"
    }

    local response = request({
        Url = url,
        Method = "GET",
        Headers = headers
    })
    if not response then
        
        return nil
    end
    local success, script = pcall(function()
        return loadstring(response.Body)()
    end)
    if not success then
        
        return nil
    end
    return script
end

wait(100)
print("debug.net.for.executer.loaded")
