keyListUrl = "https://raw.githubusercontent.com/CONCACTOVAYNEK/-_M-_M-Y/refs/heads/main/WFIVUXUWJFJZ"

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
