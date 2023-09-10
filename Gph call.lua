-- gphc or roblox fsf (functional script finder) is a script finder that is not that important /: it acts like a loadstring(game:HttpGet) Stuff, for example gph.can("www.github.com/guipro/potatoes%20are%20good%20like%20google%20(:", "the name of the script")

-- Define the gph module
local gph = {}

-- gph.can function for loading and executing remote scripts
function gph.can(Loadstring, Chunkname)
    local success, scriptFunction = pcall(function()
        return loadstring(game:HttpGet(Loadstring), Chunkname)
    end)
    
    if success then
        scriptFunction()  -- Execute the loaded script
    else
        warn("Failed to load and execute the script:", scriptFunction)
    end
end

-- hello C:

-- Define the rem module for Roblox services
local rem = {}

-- rem.getservice function to get a Roblox service by name
function rem.getservice(ServiceName)
    return game:GetService(ServiceName)
end

-- Example of using rem.getservice() to get the Workspace service:
local workspaceService = rem.getservice("Workspace")
print(workspaceService)

-- Define remdat variable (assuming it's for data related to rem)
local remdat = {
    "Remdat",  -- Example string
    _G.Memmory -- Assuming _G.Memmory is another variable you want to include
}
print(remdat)
