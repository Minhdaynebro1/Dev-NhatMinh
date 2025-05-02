-- ValidateKey.lua - chỉ dùng để kiểm tra key

keyListUrl = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.PREMIUM/KEY-PREMIUM"

function isValidKey(key)
    local success, response = pcall(function()
        return game:HttpGet(keyListUrl)
    end)

    if success then
        for _, v in ipairs(response:split("\n")) do
            if key == v then
                return true
            end
        end
    end
    return false
end
