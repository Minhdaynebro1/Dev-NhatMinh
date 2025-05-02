keyListUrl = "https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/WSJ_HUB.PREMIUM/KEY-PREMIUM"

local lastValidTime = nil

function isValidKey(key)
    local currentTime = tick()

    -- Nếu đã có thời gian hợp lệ và đã quá 60 giây thì từ chối
    if lastValidTime and (currentTime - lastValidTime > 60) then
        return false
    end

    local success, response = pcall(function()
        return game:HttpGet(keyListUrl)
    end)

    if success then
        for _, v in ipairs(response:split("\n")) do
            if key == v then
                lastValidTime = currentTime -- Ghi nhận thời gian dùng key thành công
                return true
            end
        end
    end

    return false
end
