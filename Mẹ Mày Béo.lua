local placeId = game.PlaceId
local scripts = {
    [106962503558742] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Go%20Fishing%20W2.lua",
    [3183403065]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Anime%20AdventureS.lua"
}

if scripts[placeId] then
    loadstring(game:HttpGet(scripts[placeId]))()
else
    game.Players.LocalPlayer:Kick("Game is not supported!")
end
