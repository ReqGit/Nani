-- Created by YouTube: MrGabbe. Discord: Mr_G_Curry#6982
local mouse = game.Players.LocalPlayer:GetMouse()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "the most useful tool in the world" -- yes dis is true

local hpt = Instance.new("Part", tool)
hpt.Size = Vector3.new(1, 1, 1)
hpt.Anchored = false
hpt.CanCollide = false
hpt.Transparency = 1

tool.Activated:Connect(function()
    local character = game.Players.LocalPlayer.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local ps = mouse.Hit.p + Vector3.new(0, 2.5, 0)
            humanoidRootPart.CFrame = CFrame.new(ps)
        end
    end
end)

tool.Parent = game.Players.LocalPlayer.Backpack

local runService = game:GetService("RunService")
local function updateHptPosition()
    local character = game.Players.LocalPlayer.Character
    if character then
        local handleAttachment = tool:FindFirstChild("Handle")  -- Assuming the tool has a "Handle" attachment
        if handleAttachment then
            local handlePosition = handleAttachment.WorldPosition
            hpt.CFrame = CFrame.new(handlePosition)
        end
    end
end

runService.RenderStepped:Connect(updateHptPosition)
-- this will teleport u if u hold da tool
