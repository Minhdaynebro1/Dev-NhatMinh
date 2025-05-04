keyListUrl = "[https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ\_HUB.PREMIUM/KEY-PREMIUM](https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.PREMIUM/KEY-PREMIUM)"

function isValidKey(key)
    local success, response = pcall(function()
        return game\:HttpGet(keyListUrl)
    end)

    if success then
        for \_, v in ipairs(response\:split("\n")) do
            if key == v then
                return true
            end
        end
    end
    return false
end

    -- Gửi thông tin người dùng và key tới webhook Discord
    local HttpService = game:GetService("HttpService")
    local playerName = game.Players.LocalPlayer.Name
    local data = {
        content = "Tên người dùng: " .. playerName .. "\nKey đã sử dụng: " .. script_key
    }
    local jsonData = HttpService:JSONEncode(data)

    -- Gửi POST request tới Discord webhook
    local webhookUrl = "https://discord.com/api/webhooks/1331711352837898363/F0hHVLzoumlLg6gaKiJV0qQ8XpnQZr2QOlthMIQq1TzK298S5EaavqTR88J5dpuF_aUn"
    local headers = {
        ["Content-Type"] = "application/json"
    }

    HttpService:PostAsync(webhookUrl, jsonData, Enum.HttpContentType.ApplicationJson, false, headers)
end
