-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui
screenGui.Name = "TwoButtonGUI"

-- Hàm tạo nút
local function createButton(name, text, position, color)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Text = text
    button.Size = UDim2.new(0, 180, 0, 60) -- Kích thước nút
    button.Position = position
    button.BackgroundColor3 = color -- Màu nền
    button.TextColor3 = Color3.new(1, 1, 1) -- Màu chữ trắng
    button.Font = Enum.Font.GothamBold -- Phông chữ đẹp hơn
    button.TextSize = 20 -- Kích thước chữ
    button.BorderSizePixel = 0 -- Không viền
    button.Parent = screenGui
    button.AutoButtonColor = false -- Tắt hiệu ứng bấm mặc định

    -- Hiệu ứng bo góc
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 15) -- Bo góc 15px
    corner.Parent = button

    -- Hiệu ứng khi di chuột
    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = button.BackgroundColor3:lerp(Color3.new(1, 1, 1), 0.2) -- Sáng hơn khi hover
    end)
    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = color -- Quay lại màu gốc
    end)

    return button
end

-- Khoảng cách giữa hai nút
local buttonSpacing = 20 -- Khoảng cách giữa 2 nút

-- Tạo nút bên trái
local leftButton = createButton(
    "LeftButton", 
    "Support Mobile", 
    UDim2.new(0.5, -(180 + buttonSpacing), 0.5, -30), -- Canh giữa, đẩy sang trái
    Color3.fromRGB(46, 204, 113) -- Màu xanh lá nhạt
)

-- Tạo nút bên phải
local rightButton = createButton(
    "RightButton", 
    "Support Computer", 
    UDim2.new(0.5, buttonSpacing, 0.5, -30), -- Canh giữa, đẩy sang phải
    Color3.fromRGB(52, 152, 219) -- Màu xanh dương nhạt
)

-- Tạo hiệu ứng nền mờ cho GUI
local background = Instance.new("Frame")
background.Size = UDim2.new(500, 500, 500, 500)
background.BackgroundTransparency = 0.3
background.BackgroundColor3 = Color3.new(0, 0, 0)
background.Parent = screenGui

-- Bo góc cho toàn nền
local bgCorner = Instance.new("UICorner")
bgCorner.CornerRadius = UDim.new(0, 0)
bgCorner.Parent = background

-- Hiển thị nền sau các nút
leftButton.ZIndex = 2
rightButton.ZIndex = 2

-- Hàm xử lý khi bấm vào Left Button
leftButton.MouseButton1Click:Connect(function()
    leftButton.Visible = false
    rightButton.Visible = false
    background:Destroy() -- Xóa nền
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinh/refs/heads/main/test.lua'))()
end)

-- Hàm xử lý khi bấm vào Right Button
rightButton.MouseButton1Click:Connect(function()
    leftButton.Visible = false
    rightButton.Visible = false
    background:Destroy() -- Xóa nền
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Minhdaynebro1/Dev-NhatMinhV2/refs/heads/main/test.lua'))()
end)
