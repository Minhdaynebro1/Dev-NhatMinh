function Notify(titletxt, text, time)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local NameNotify = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local Notifytext = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.5
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.103212851, 0, 0.0884615406, 0)
Frame.Size = UDim2.new(0, 392, 0, 93)

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 25)

ImageLabel.Parent = Frame
ImageLabel.BackgroundTransparency = 1
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0408163257, 0, 0.139784947, 0)
ImageLabel.Size = UDim2.new(0, 67, 0, 67)
ImageLabel.Image = "rbxassetid://17747757759"

UICorner_2.Parent = ImageLabel
UICorner_2.CornerRadius = UDim.new(0, 20)

NameNotify.Name = "NameNotify"
NameNotify.Parent = Frame
NameNotify.BackgroundColor3 = Color3.new(0.988235, 1, 0.996078)
NameNotify.BackgroundTransparency = 0.6000000238418579
NameNotify.BorderColor3 = Color3.new(0, 0, 0)
NameNotify.BorderSizePixel = 0
NameNotify.Position = UDim2.new(0.23214294, 0, 0.0752688199, 0)
NameNotify.Size = UDim2.new(0, 283, 0, 27)
NameNotify.Font = Enum.Font.ArialBold
NameNotify.Text = titletxt
NameNotify.TextColor3 = Color3.new(0, 0, 0)
NameNotify.TextSize = 25
NameNotify.TextWrapped = true

UICorner_3.Parent = NameNotify

Notifytext.Name = "Notifytext"
Notifytext.Parent = Frame
Notifytext.BackgroundColor3 = Color3.new(1, 1, 1)
Notifytext.BackgroundTransparency = 1
Notifytext.BorderColor3 = Color3.new(0, 0, 0)
Notifytext.BorderSizePixel = 0
Notifytext.Position = UDim2.new(0.23214294, 0, 0.408602148, 0)
Notifytext.Size = UDim2.new(0, 283, 0, 42)
Notifytext.Font = Enum.Font.SourceSans
Notifytext.Text = text
Notifytext.TextColor3 = Color3.new(1, 1, 1)
Notifytext.TextSize = 14
Notifytext.TextWrapped = true

wait(0.1)
    Frame:TweenPosition(UDim2.new(0.359962714, 0, 0.0884615406, 0), "Out", "Sine", 0.5)
    wait(time)
    Frame:TweenPosition(UDim2.new(1, 5, 0, 50), "Out", "Sine", 0.5)
    wait(0.6)
    Frame:Destroy();
end

Notify("World Hub Notification", "Sorry Overyone Script World Hub Eat The World Delay Update !", 20)
