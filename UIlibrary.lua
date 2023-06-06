local UI = {}
function CreateNotification(t, dex) 
local ScreenGui = Instance.new("ScreenGui")
local Notification = Instance.new("Frame")
local ModuleToggle = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Description = Instance.new("TextLabel")
local medal2 = Instance.new("ImageButton")
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Notification.Name = "Notification"
Notification.Parent = ScreenGui
Notification.BackgroundColor3 = Color3.fromRGB(11, 30, 42)
Notification.BackgroundTransparency = 0.200
Notification.Position = UDim2.new(0.97, 0,0.885, 0)
Notification.Size = UDim2.new(0.175781175, 0, 0.104368947, 0)
ModuleToggle.Name = "ModuleToggle"
ModuleToggle.Parent = Notification
ModuleToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ModuleToggle.BackgroundTransparency = 1.000
ModuleToggle.Position = UDim2.new(0.135028511, 0, 0.0541841537, 0)
ModuleToggle.Size = UDim2.new(0.326245666, 0, 0.364762098, 0)
ModuleToggle.Font = Enum.Font.Gotham
ModuleToggle.Text = t
ModuleToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
ModuleToggle.TextScaled = true
ModuleToggle.TextSize = 25.000
ModuleToggle.TextWrapped = true
UICorner.Parent = Notification
Description.Name = "Description"
Description.Parent = Notification
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.Position = UDim2.new(-0.0284813959, 0, 0.513164341, 0)
Description.Size = UDim2.new(0.658695281, 0, 0.364422947, 0)
Description.Font = Enum.Font.Gotham
Description.Text = dex
Description.TextColor3 = Color3.fromRGB(179, 179, 179)
Description.TextSize = 23.000
Description.TextWrapped = true
medal2.Name = "medal2"
medal2.Parent = Notification
medal2.BackgroundTransparency = 1.000
medal2.Position = UDim2.new(-0.000281914137, 0, -0.0175102875, 0)
medal2.Size = UDim2.new(0, 49, 0, 45)
medal2.ZIndex = 2
medal2.Image = "rbxassetid://6764432408"
medal2.ImageRectOffset = Vector2.new(150, 100)
medal2.ImageRectSize = Vector2.new(50, 50)
local function Anim() 
	local script = Instance.new('LocalScript', Notification)
	if game:IsLoaded() then
	local Part = script.Parent
	local TweenService = game:GetService("TweenService")
	local TweenInformation = TweenInfo.new(0.2,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0)
	local Goals = {Position = UDim2.new(0.819963813, 0, 0.884708643, 0)} 
	local Tween = TweenService:Create(Part, TweenInformation, Goals)
	Tween:Play()
	task.wait(0.5)
	script.Parent.Position = UDim2.new(0.819963813, 0, 0.884708643, 0)
end
	local Part = script.Parent
	local TweenService = game:GetService("TweenService")
	local TweenInformation2 = TweenInfo.new(0,Enum.EasingStyle.Sine,Enum.EasingDirection.In,10,true,0)
	local Goals = {BackgroundTransparency = 1} 
	local Tween2 = TweenService:Create(Part, TweenInformation2, Goals)
	Tween2:Play()
	task.wait(1)
	script.Parent:Destroy()
        end
    coroutine.wrap(Anim)()
end

return UI
