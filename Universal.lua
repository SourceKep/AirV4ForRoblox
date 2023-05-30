
--Credits to GUI to LUA converter

local plr = game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character:WaitForChild("PrimaryPart") or game.Players.LocalPlayer.Character:FindFirstChild("PrimaryPart")
local human = game.Players.LocalPlayer.Character.Humanoid or game.Players.LocalPlayer.Character:WaitForChild("Humanoid") or game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
local CoreGui = game:GetService("CoreGui")
local suc, er = pcall(function() return loadstring(game:HttpGet("https://raw.githubusercontent.com/SourceKep/AirV4ForRoblox/main/msmodule.lua", true))() end)

--Instances: 
local Gui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")

--Properties:
Gui.Name = "Gui"
Gui.Parent = CoreGui
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Gui
Frame.BackgroundColor3 = Color3.fromRGB(30, 54, 75)
Frame.Position = UDim2.new(0.836780608, 0, 0.828610837, 0)
Frame.Size = UDim2.new(0.153601006, 0, 0.146517351, 0)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.000651299953, 0, 0.084810853, 0)
TextLabel.Size = UDim2.new(1.00000036, 0, 0.48333478, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "AirV4"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(34, 47, 72)
TextBox.Position = UDim2.new(0.00842221733, 0, 0.573209584, 0)
TextBox.Size = UDim2.new(0.991577744, 0, 0.424520552, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(65, 16, 155)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
UICorner_2.Parent = TextBox


local function speed(toggle)
    local sp = {}
    if human and sp[toggle] == nil then
        human.WalkSpeed = 23
    elseif human and sp[toggle] == true then
        human.WalkSpeed = 23
        else
            human.WalkSpeed = 21
    end
end

local function SuperJump(Toggle)
local jumps = {MaxHeight = 30,Min = 10,enabled = Toggle}
  if plr and jumps.enabled == true then
  plr.CFrame = plr.CFrame + Vector3.new(0, jumps.MaxHeight or jumps.Min, 0)
  end
end

local function uninject()
  Gui:Destroy()
end

local function fov(Toggle)
local FOV = {Enabled = Toggle, Min = 100,Max = 120,}
if game.Workspace.CurrentCamera.FieldOfView > FOV.Max then
  while FOV.Enabled == true do
      game.Workspace.CurrentCamera.FieldOfView = FOV.Max
  end
elseif game.Workspace.CurrentCamera.FieldOfView < FOV.Min then
while FOV.Enabled == true do
  task.wait()
  game.Workspace.CurrentCamera.FieldOfView = FOV.Min
  end
end
if FOV.Enabled == true then
while FOV.Enabled == true do
  task.wait()
  game.Workspace.CurrentCamera.FieldOfView = FOV.Max
  end
  end
end





TextBox.MouseLeave:Connect(function(x, y)
  if TextBox.Text == ";speed" then
    speed(true)
    task.wait(1)
    TextBox.Text = ""
  elseif TextBox.Text == ";unspeed" then
    speed(false)
    task.wait(1)
    TextBox.Text = ""
  end
  if TextBox.Text == ";fov120" then
    fov(true)
    task.wait(1)
    TextBox.Text = ""
  end
  if TextBox.Text == ";hj" then
    SuperJump(true)
    task.wait(1)
    TextBox.Text = ""
  end
  if TextBox.Text == ";uninject" then
    uninject()
    task.wait(1)
    TextBox.Text = ""
  end
      
end) 
