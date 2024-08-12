-- Configuration management
local HttpService = game:GetService("HttpService")
local function saveConfig(Config)
    writefile("World-HubConfig.json", HttpService:JSONEncode(Config))
end

local function loadConfig()
    if isfile("World-HubConfig.json") then
        local success, result = pcall(function()
            return HttpService:JSONDecode(readfile("World-HubConfig.json"))
        end)
        if success then
            Config = result
        end
    end
end

-- Load configuration at start
loadConfig()

loadstring(game:HttpGet("https://raw.githubusercontent.com/NhatMinhVNQ/w-hub/main/Notify%20World%20Hub.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NhatMinhVNQ/gamelogger/main/nhatminhdz.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NhatMinhVNQ/gamelogger/main/nhatminh.lua"))()
local sitinklib = loadstring(game:HttpGet("https://github.com/ErutTheTeru/uilibrary/blob/main/Sitink%20Lib/Source.lua?raw=true"))()
local Notify = sitinklib:Notify({
	["Title"] = "Loading...",
	["Description"] = "",
	["Color"] = Color3.fromRGB(127.00000002980232, 146.00000649690628, 242.00000077486038),
	["Content"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
	["Time"] = 1,
	["Delay"] = 20
})
local Notify = sitinklib:Notify({
	["Title"] = "World Hub",
	["Description"] = "",
	["Color"] = Color3.fromRGB(127.00000002980232, 146.00000649690628, 242.00000077486038),
	["Content"] = "Welcome To Script World Hub Kaitun",
	["Time"] = 1,
	["Delay"] = 20
})
local sitinkgui = sitinklib:Start({
    ["Name"] = "World Hub [ Kaitun ]",
    ["Description"] = "- Eat The World",
    ["Info Color"] = Color3.fromRGB(5.000000176951289, 59.00000028312206, 113.00000086426735),
    ["Logo Info"] = "rbxassetid://17747757759",
    ["Logo Player"] = "rbxassetid://17747757759",
    ["Name Info"] = "World Hub Info",
    ["Name Player"] = "VN WORLD COMMUNITY",
    ["Info Description"] = "https://discord.gg/psE8EUa9kg",
    ["Tab Width"] = 135,
    ["Color"] = Color3.fromRGB(127.00000002980232, 146.00000649690628, 242.00000077486038),
    ["CloseCallBack"] = function() end
})

-- Values
_G.kaitunGrab = true

-- Function
function kaitunGrab()
    while _G.kaitunGrab == true do
				local args = {
    [1] = false,
    [2] = false
}

game:GetService("Players").LocalPlayer.Character.Events.Grab:FireServer(unpack(args))
	  wait(1.0)
    end
end

local MainTab = sitinkgui:MakeTab("Tab 1")
local Section = MainTab:Section({
    ["Title"] = "Kaitun Beta",
    ["Content"] = "[ Click Here To Enter ]"
})
local Paragraph = Section:Paragraph({
    ["Title"] = "Script Status",
    ["Content"] = "Coming Soon..."
})

local MainTab = sitinkgui:MakeTab("Config Kaitun")
local Section = MainTab:Section({
    ["Title"] = "Config V2",
    ["Content"] = "[ Click Here To Enter ]"
})        
