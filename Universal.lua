
local CoreGui = game:GetService("CoreGui")
--Closes previous instance of Airv4
for i, v in pairs(CoreGui:GetChildren()) do if v == CoreGui:FindFirstChild("AirV4") then v:Destroy() end end 
task.wait(1)

local Uninject = function() 
   pcall(function()
    for i, v in pairs(CoreGui:GetChildren()) do if v == CoreGui:FindFirstChild("AirV4") then v:Destroy() end end 
   end )
end

local plr = game.Players.LocalPlayer
local plr2 = game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character.Humanoid
local plrC = game.Players.LocalPlayer.Character


local AirV4 = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

AirV4.Name = "AirV4"
AirV4.Parent = CoreGui
AirV4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = AirV4
Frame.BackgroundColor3 = Color3.fromRGB(33, 47, 93)
Frame.Position = UDim2.new(0.841308415, 0, 0.669630229, 0)
Frame.Size = UDim2.new(0.153601006, 0, 0.317633867, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.000651303097, 0, -0.000105135143, 0)
TextLabel.Size = UDim2.new(1.00000036, 0, 0.199624211, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Air[V.1]"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(55, 89, 152)
TextBox.Position = UDim2.new(0, 0, 0.756541133, 0)
TextBox.Size = UDim2.new(1.00421107, 0, 0.241189197, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(85, 125, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true


--Modules & Scripts
task.wait(1)


local function Fov120()
    while true do 
    task.wait()
    game.Workspace.CurrentCamera.FieldOfView = 120
    end
end

local function Speed() 
while true do 
task.wait()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
end
end

local function HighJump()
    local jump = {Enabled = true}
    if plr and jump.Enabled == true then
        plr2.CFrame = plr2.CFrame + Vector3.new(0, 30, 0)
    end
end

local function AutoQue()
task.spawn(function()
    local args = {
        [1] = {
            ["queueType"] = "bedwars_to1"
        }
    }
    
    game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").joinQueue:FireServer(unpack(args))
    end)
end

TextBox.MouseLeave:Connect(function()
    if TextBox.Text == ";speed" then
        Speed()
        TextBox.Text = ""
    end

    if TextBox.Text == ";sfov" then
        Fov120()
        TextBox.Text = ""
    end
 
    if TextBox.Text == ";hj" then
        HighJump()
        TextBox.Text = ""
    end
    if TextBox.Text == ";highlight" then
        Highlight()
        TextBox.Text = ""
    end
    if TextBox.Text == ";airv" then
        Uninject()
        TextBox.Text = ""
    end
    if TextBox.Text == ";Sque" then
        AutoQue()
        TextBox.Text = ""
    end
end
)
