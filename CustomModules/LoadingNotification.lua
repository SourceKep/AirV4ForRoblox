

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")



ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Frame.Position = UDim2.new(0.170000002, 1590, 0.866999984, 0)
Frame.Size = UDim2.new(0.165258378, 0, 0.108478807, 0)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0600885004, 0, 0.459477544, 0)
TextLabel.Size = UDim2.new(0.710729241, 0, 0.348245114, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Press Y to open GUI"
TextLabel.TextColor3 = Color3.fromRGB(107, 107, 107)
TextLabel.TextScaled = true
TextLabel.TextSize = 1.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-0.0019375477, 0, 0.0832251608, 0)
TextLabel_2.Size = UDim2.new(0.837020755, 0, 0.457621962, 0)
TextLabel_2.Font = Enum.Font.Gotham
TextLabel_2.Text = " Finished loading"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 1.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function QPJU_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	
	
	if game:IsLoaded() then
		

	
	local Part = script.Parent
	
	local TweenService = game:GetService("TweenService")
	
	local TweenInformation = TweenInfo.new(
		0.9,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.In,
		0,
		false,
		0
	)
	
	
	local Goals = {
		Position = UDim2.new(0.003, 1590,0.867, 0),
	   
	} 
	
	
	
	local Tween = TweenService:Create(Part, TweenInformation, Goals)
	
	Tween:Play()
	
	
	
		wait(1)
		
		script.Parent.Position = UDim2.new(0.003, 1590,0.867, 0)
	
		
	end
	
	
	local Part = script.Parent
	local TweenService = game:GetService("TweenService")
	
	
	
	
	local TweenInformation2 = TweenInfo.new(
		9,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.In,
		10,
		true,
		0
	)
	
	
	local Goals = {
		BackgroundTransparency = .5
	} 
	
	
	
	local Tween2 = TweenService:Create(Part, TweenInformation2, Goals)
	
	Tween2:Play()
	
	wait(5)
	
	
	
	script.Parent:Destroy()
end
coroutine.wrap(QPJU_fake_script)()






