local placeId = game.PlaceId
local scripts = {
    [15705682243] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/main/Tapping%20Legends%20Final.lua",
    [5902977746]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/main/Ultimate%20Tower%20Defense.lua",
    [16480898254] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/main/Eat%20The%20World.lua",
    [116605585218149] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Go%20Fishing%20W1.lua",
    [106962503558742] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Go%20Fishing%20W2.lua",
    [8304191830]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Anime%20AdventureS.lua",
    [8349889591]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Anime%20AdventureS.lua",
    [14229762361] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Anime%20AdventureS.lua",
    [14918509670] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Anime%20AdventureS.lua",
    [14229839966] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Anime%20AdventureS.lua",
    [3183403065]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Anime%20AdventureS.lua",
    [3101667897]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/Legends%20Of%20Speed.lua"
}

if scripts[placeId] then
    loadstring(game:HttpGet(scripts[placeId]))()
else
    game.Players.LocalPlayer:Kick("Game is not supported!")
end
