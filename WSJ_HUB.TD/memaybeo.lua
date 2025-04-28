local placeId = game.PlaceId
local scripts = {
    [5902977746]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.TD/Ultimate%20Tower%20Defense.lua",
    [8304191830]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.TD/Anime%20AdventureS.lua",
    [8349889591]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.TD/Anime%20AdventureS.lua",
    [14229762361] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.TD/Anime%20AdventureS.lua",
    [14918509670] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.TD/Anime%20AdventureS.lua",
    [14229839966] = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.TD/Anime%20AdventureS.lua",
    [3183403065]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.TD/Anime%20AdventureS.lua",
    [72829404259339]  = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.TD/Anime%20Rangers%20X.lua"
}

if scripts[placeId] then
    loadstring(game:HttpGet(scripts[placeId]))()
else
    game.Players.LocalPlayer:Kick("Game is not supported!")
end
