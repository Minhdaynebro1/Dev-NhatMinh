local validateKeyScript = loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.PREMIUM/ValidateKey.lua"))()

local placeId = game.PlaceId
local scripts = {
    [16480898254] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB/Eat%20The%20World.lua",
    [116605585218149] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB/Go%20Fishing%20W1.lua",
    [106962503558742] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB/Go%20Fishing%20W2.lua",
    [3101667897]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB/Legends%20Of%20Speed.lua"
}

if scripts[placeId] then
    loadstring(game:HttpGet(scripts[placeId]))()
else
    game.Players.LocalPlayer:Kick("Game is not supported!")
end
