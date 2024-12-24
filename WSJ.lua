-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui
screenGui.Name = "TwoButtonGUI"

-- Tạo nút bên trái
local leftButton = Instance.new("TextButton")
leftButton.Name = "LeftButton"
leftButton.Text = "Left Button"
leftButton.Size = UDim2.new(0, 150, 0, 50) -- Kích thước nút
leftButton.Position = UDim2.new(0, 50, 0.5, -25) -- Vị trí bên trái
leftButton.BackgroundColor3 = Color3.new(0, 1, 0) -- Màu xanh lá
leftButton.TextColor3 = Color3.new(1, 1, 1) -- Màu chữ trắng
leftButton.Font = Enum.Font.SourceSans
leftButton.TextSize = 24
leftButton.Parent = screenGui

-- Tạo nút bên phải
local rightButton = Instance.new("TextButton")
rightButton.Name = "RightButton"
rightButton.Text = "Right Button"
rightButton.Size = UDim2.new(0, 150, 0, 50) -- Kích thước nút
rightButton.Position = UDim2.new(1, -200, 0.5, -25) -- Vị trí bên phải
rightButton.AnchorPoint = Vector2.new(1, 0.5) -- Neo ở giữa
rightButton.BackgroundColor3 = Color3.new(0, 0, 1) -- Màu xanh dương
rightButton.TextColor3 = Color3.new(1, 1, 1) -- Màu chữ trắng
rightButton.Font = Enum.Font.SourceSans
rightButton.TextSize = 24
rightButton.Parent = screenGui

-- Hàm xử lý khi một trong hai nút được nhấn
local function handleButtonClick()
    leftButton.Visible = false -- Ẩn nút bên trái
    rightButton.Visible = false -- Ẩn nút bên phải
    print("One button clicked, both buttons are hidden")
end

-- Thêm sự kiện cho nút bên trái
leftButton.MouseButton1Click:Connect(handleButtonClick)

-- Thêm sự kiện cho nút bên phải
rightButton.MouseButton1Click:Connect(handleButtonClick)
