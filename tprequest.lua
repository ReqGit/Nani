local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local scriptUrls = {
    "https://www.example.com/script1.lua",
    "https://www.example.com/script2.lua",
    -- Add more script URLs as needed
}

local function importScripts()
    for _, url in pairs(scriptUrls) do
        local success, scriptCode = pcall(function()
            return HttpService:GetAsync(url)
        end)

        if success then
            local script = Instance.new("Script")
            script.Source = scriptCode
            script.Parent = game.Workspace -- Or wherever you want to put the imported scripts
        else
            warn("Failed to import script from URL:", url)
        end
    end
end

RunService.Heartbeat:Connect(importScripts)
