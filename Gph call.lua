local gph = {}

function gph.can(Loadstring, Chunkname)
    loadstring(game:HttpGet(Loadstring, Chunkname))()
end

local rem = {}

function rem.getservice(ServiceName)
    return game:GetService(ServiceName)
end

local remdat -- Define the variable

-- Example of using rem.getservice() to get the Workspace service:
local workspaceService = rem.getservice("Workspace")
print(workspaceService)

remdat = "Remdat,robloxmemmory", _G.Memmory
print(remdat)
