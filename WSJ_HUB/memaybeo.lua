local placeId = game.PlaceId
local scripts = {
    [15705682243] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB/Tapping%20Legends%20Final.lua.txt",
    [16480898254] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB/Eat%20The%20World.lua.txt",
    [116605585218149] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB/Go%20Fishing%20W1.lua.txt",
    [106962503558742] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB/Go%20Fishing%20W2.lua.txt",
    [3101667897]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB/Legends%20Of%20Speed.lua.txt"
}

if scripts[placeId] then
    loadstring(game:HttpGet(scripts[placeId]))()
else
    game.Players.LocalPlayer:Kick("Game is not supported!")
end
