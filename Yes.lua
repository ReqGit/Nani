local gui = Instance.new("ScreenGui")
gui.Parent = game:GetService("CoreGui")

local textnotify = Instance.new("TextLabel")
textnotify.Parent = gui
textnotify.Size = UDim2.new(1, 0, 0.1, 0)  -- Adjust the height as needed
textnotify.Position = UDim2.new(0, 0, 0.9, 0)  -- Position at the bottom
textnotify.BackgroundTransparency = 1
textnotify.Font = Enum.Font.SourceSansBold
textnotify.FontSize = Enum.FontSize.Size24  -- Adjust the font size for better visibility
textnotify.TextWrapped = true  -- Allow the text to wrap

wait(1)

local messages = {
    "WRDAIMBOT://SCRIPT.LUA",
    "WRDAIMBOT://KEY.LUA",
    "KRNL://KRNL.place",
    "KRNL://ROBLOXINJECTAIMBOT",
    "_G.WRDTeamCheck = True",
    "_G.WRDWallCheck = False",
    "We Are Devs Aimbot Is Done Loading. Now For The Owl Hub",
    "LOAD*KRNLSCRIPTHTTP: loadstring(game:HttpGet('https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt'))();",
    "DOWNLOADING: ASSET://",
    "Here's another message.",
    "Loading Scripts",
    "Loading Modules",
    "Success. Please wait for 0.01 seconds",

}
local messages2 = {
	    "The Key For Aimbot is Right Click (Mouse2)",
    "CREDITS TO WE ARE DEVS TEAM. PLEASE DON'T COPYRIGHT STRIKE ME ;c",
    "CREDITS TO WE ARE DEVS TEAM. PLEASE DON'T COPYRIGHT STRIKE ME ;c",
    "CREDITS TO WE ARE DEVS TEAM. PLEASE DON'T COPYRIGHT STRIKE ME ;c",
    "CREDITS TO WE ARE DEVS TEAM. PLEASE DON'T COPYRIGHT STRIKE ME ;c",
    "CREDITS TO WE ARE DEVS TEAM. PLEASE DON'T COPYRIGHT STRIKE ME ;c"
}
local function sigmoid(t)
    return 1 / (1 + math.exp(-t))
end

local function tremblingAnimation(t)
    return math.sin(t * 10) * 0.05  -- Adjust the factor for more or less trembling
end

local function rainbowColor(t)
    local frequency = 1
    local center = 128
    local width = 127
    
    local r = math.sin(frequency * t + 0) * width + center
    local g = math.sin(frequency * t + 2) * width + center
    local b = math.sin(frequency * t + 4) * width + center
    
    return Color3.new(r/255, g/255, b/255)
end

local animationDuration = 0.5

for _, message in ipairs(messages) do
    local startTime = tick()
    local endTime = startTime + animationDuration
    
    while tick() < endTime do
        local elapsedTime = tick() - startTime
        local t = elapsedTime / animationDuration
        local easedT = sigmoid(t * 12 - 6) + tremblingAnimation(t)
        
        textnotify.TextTransparency = easedT
        textnotify.TextColor3 = rainbowColor(t)
        wait(0.03)
    end
    
    textnotify.Text = message
    textnotify.TextTransparency = 0
    textnotify.TextColor3 = Color3.new(1, 1, 1)
    wait(0.5)
end

-- Animation is done, so hide the GUI
gui.Parent = nil


loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();

    -- Copyright https://WeAreDevs.net 2019
-- https://wearedevs.net/exploits

--[[ Configuration ]]--

--If true, 
	--Players on the same team will not be aimed at
	--Will not work in games with custom team systems
--If false,
	--All players in the game will be aimed at
    _G.WRDAimbotTeamCheck = true

    --If true, 
        --Simulates mouse movement. Its as if you actually moved your mouse onto the player, meaning this is harder to detect
        --Tradeoff is it comes with a lot of bugs. Lacks smoothness, not 100% accurate, and can't aim at players dirrectly behind.
    --If false, 
        --Will use camera manipulation. 
        --This is the smoothest and most accurate, but games can detect this easy. Be careful with what games you use false in.
        --May be buggy for 3rd person games!
    _G.WRDAimbotBypass = true
    
    --If true, the aimbot will only look for the closest visible player
        --Buggy for 3rd person games!
        --May cause heavy lag
    --If false, the aimbot will look for all players, even if they're behind a wall
    _G.WRDAimBotWallcheck = false
    
    --[[ 
    
    Additional Notes | August 17, 2019
    
    *This was made for exploits using the WeAreDevs API, such as JJSploit.
    *Please don't steal credits. I worked pretty hard on this ;c
    *This should be able to work in all games using default Roblox character systems. Games using using custom/modified characters may be buggy, such as Strucid and Phantom Forces.
    *You don't need to rexecute the entire script to change configuration above. You could simply execute the desired configuration line.
    *Rexecuting the script should not cause issues
    *The WRDAimbotBypass enabled bug involving players behind you will be fixed eventually. Be sure to check the website time to time!
    *Aimbot starts when you hold the right mouse button
    *This aimbot snaps aims to the closest player's head.
    *Please change the configuration below appropriately.
    *Check the website occasionally for updates!
    *Found a new bug? Report it on the forum: https://wearedevs.net/forum/complaints
    
    ]]--
    
    
    
    
    
    
    
    wait(1)
	    textnotify.Text = messages2
    textnotify.TextTransparency = 0
    textnotify.TextColor3 = Color3.new(1, 1, 1)
    
    
    
    
    
    
    
    --[[
    
    WARNING: Editing below may break the script!
    
    ]]--
wait(4)
loadstring(game:HttpGet("https://pastebin.com/zXmvnEB8"))();
  
