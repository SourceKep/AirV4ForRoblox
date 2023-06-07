
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
--Closes previous instance of Airv4
for i, v in pairs(CoreGui:GetChildren()) do if v == CoreGui:FindFirstChild("AirV4") then v:Destroy() end end 
task.wait(1)
local Uninject = function()
for i, v in pairs(CoreGui:GetChildren()) do if v == CoreGui:FindFirstChild("AirV4") then v:Destroy() end end 
pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SourceKep/AirV4ForRoblox/main/Universal.lua"), true)() end)
end
local plr = game.Players.LocalPlayer
local plr2 = game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character.Humanoid
local plrC = game.Players.LocalPlayer.Character


local GUILibrary = {
    Settings = {},
    Objects = {},
    Other = {}
}


local CoreGui = game:GetService("CoreGui")

local function CreateNotification(t, dex, size) 
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
    Notification.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
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
 
    local GUILibrary = {
        Settings = {},
        Objects = {},
        Other = {}
    }
    
    -- Gui to Lua
    -- Version: 3.2
    
    -- Instances
    
    local AirV4 = Instance.new("ScreenGui")
    local UserInterface = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Frame = Instance.new("Frame")
    local Speed = Instance.new("TextButton")
    local Higlight = Instance.new("TextButton")
    local AntiAFK = Instance.new("TextButton")
    local TeleportJump = Instance.new("TextButton")
    local ModuleToggle = Instance.new("TextLabel")
    local TextLabel = Instance.new("TextLabel")
    local TextLabel_2 = Instance.new("TextLabel")
    local uninject = Instance.new("TextButton")
    
    AirV4.Parent = CoreGui
    AirV4.Name = "AirV4"
    AirV4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    UserInterface.Name = "AirV4"
    UserInterface.Parent = AirV4
    UserInterface.BackgroundColor3 = Color3.fromRGB(15, 17, 26)
    UserInterface.BackgroundTransparency = 0.140
    UserInterface.Position = UDim2.new(0.00809337664, 0, 0.183543682, 0)
    UserInterface.Size = UDim2.new(0.17578119, 0, 0.640776694, 0)
    UserInterface.BackgroundTransparency = 1
    
    UICorner.Parent = UserInterface
    
    Frame.Parent = UserInterface
    Frame.BackgroundColor3 = Color3.fromRGB(34, 38, 58)
    Frame.Position = UDim2.new(1.10392439, 0, -0.167363971, 0)
    Frame.Size = UDim2.new(1.01103938, 0, 0.115062758, 0)
    
    Speed.Name = "Speed"
    Speed.Parent = Frame
    Speed.BackgroundColor3 = Color3.fromRGB(45, 55, 76)
    Speed.Position = UDim2.new(-0.00254485477, 0, 0.991822243, 0)
    Speed.Size = UDim2.new(1, 0, 0.80590862, 0)
    Speed.Font = Enum.Font.Gotham
    Speed.Text = "Speed"
    Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
    Speed.TextSize = 20.000
    Speed.TextWrapped = true
    
    Higlight.Name = "Higlight"
    Higlight.Parent = Frame
    Higlight.BackgroundColor3 = Color3.fromRGB(45, 55, 76)
    Higlight.Position = UDim2.new(-0.00618439913, 0, 2.58794284, 0)
    Higlight.Size = UDim2.new(1, 0, 0.805999994, 0)
    Higlight.Font = Enum.Font.Gotham
    Higlight.Text = "Highlight"
    Higlight.TextColor3 = Color3.fromRGB(255, 255, 255)
    Higlight.TextSize = 20.000
    Higlight.TextWrapped = true
    
    AntiAFK.Name = "AntiAFK"
    AntiAFK.Parent = Frame
    AntiAFK.BackgroundColor3 = Color3.fromRGB(45, 55, 76)
    AntiAFK.Position = UDim2.new(-0.00278878212, 0, 1.78220046, 0)
    AntiAFK.Size = UDim2.new(1, 0, 0.805999994, 0)
    AntiAFK.Font = Enum.Font.Gotham
    AntiAFK.Text = "AntiAFK"
    AntiAFK.TextColor3 = Color3.fromRGB(255, 255, 255)
    AntiAFK.TextSize = 20.000
    AntiAFK.TextWrapped = true
    
    ModuleToggle.Name = "ModuleToggle"
    ModuleToggle.Parent = Frame
    ModuleToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ModuleToggle.BackgroundTransparency = 1.000
    ModuleToggle.Position = UDim2.new(0.241937205, 0, 0.0567000508, 0)
    ModuleToggle.Size = UDim2.new(0.510048926, 0, 0.883073866, 0)
    ModuleToggle.Font = Enum.Font.Gotham
    ModuleToggle.Text = "AirV4"
    ModuleToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    ModuleToggle.TextScaled = true
    ModuleToggle.TextSize = 30.000
    ModuleToggle.TextWrapped = true
    
    TextLabel.Parent = UserInterface
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0, 0, -2.88992226e-08, 0)
    TextLabel.Size = UDim2.new(1, 0, 0.165493831, 0)
    TextLabel.Font = Enum.Font.Gotham
    TextLabel.Text = "AirV4"
    TextLabel.TextTransparency = 1
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 30.000
    TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextWrapped = true
    
    TextLabel_2.Parent = UserInterface
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.Position = UDim2.new(0, 0, 0.148955494, 0)
    TextLabel_2.Size = UDim2.new(1, 0, 0.161705941, 0)
    TextLabel_2.Font = Enum.Font.Gotham
    TextLabel_2.Text = "Made By Aev"
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.TextScaled = true
    TextLabel_2.TextSize = 30.000
    TextLabel_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.TextWrapped = true
    TextLabel_2.TextTransparency = 1
    TeleportJump.Name = "jump"
    TeleportJump.Parent = Frame
    TeleportJump.BackgroundColor3 = Color3.fromRGB(45, 55, 76)
    TeleportJump.Position = UDim2.new(-0.006, 0,3.345, 0)
    TeleportJump.Size = UDim2.new(1, 0, 0.805999994, 0)
    TeleportJump.Font = Enum.Font.Gotham
    TeleportJump.Text = "TeleportJump"
    TeleportJump.TextColor3 = Color3.fromRGB(255, 255, 255)
    TeleportJump.TextSize = 20.000
    TeleportJump.TextWrapped = true
    uninject.Name = "uninject"
    uninject.Parent = Frame
    uninject.BackgroundColor3 = Color3.fromRGB(45, 55, 76)
    uninject.Position = UDim2.new(-0.006, 0,4.135, 0)
    uninject.Size = UDim2.new(1, 0, 0.805999994, 0)
    uninject.Font = Enum.Font.Gotham
    uninject.Text = "TeleportJump"
    uninject.TextColor3 = Color3.fromRGB(255, 255, 255)
    uninject.TextSize = 20.000
    uninject.TextWrapped = true



local function CreateNotification(t, dex, size) 
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
Notification.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
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

--Modules & Scripts




local data = {
          ["shopItem"] = {
            ["currency"] = "iron",
            ["itemType"] = "wool_white",
            ["amount"] = 16,
            ["price"] = 8,
            ["category"] = "Blocks"
        },
        ["shopId"] = "7_item_shop_6" or "2_item_shop" or "3_item_shop" or "4_item_shop" or "5_item_shop" or "6_item_shop" or "8_item_shop"
}




local ClientSettings = {
    EnableSpeed = true,
    EnableTeleportJump = true,
    EnableHighlight = true
}
local function functionSettings(Function)
    pcall(Function)
end


local speed = function()
    local human = game.Players.LocalPlayer.Character.Humanoid
    if human then
        CreateNotification("Module", " Movement")
        RunService.Heartbeat:Connect(function(deltaTime)
            task.wait(1)
            human.WalkSpeed = 23
        end)
    else
        CreateNotification("Module", " Movement")
    end
    return human
end
 
local HighJump = function()
    local TeleportMode = {Enabled = true}
    if plr and TeleportMode.Enabled == true then
        plr2.CFrame = plr2.CFrame + Vector3.new(0, 30, 0)
    end
    CreateNotification("Module", "Teleported Up!")
end

local HighLight = function()
    local highlight = Instance.new("Highlight")
    highlight.FillColor = Color3.fromRGB(32, 57, 87)
    highlight.Enabled = true
    highlight.Parent = plrC
    CreateNotification("Module", " Toggled Highlight.")
end


local AutoQueIntoSolo = function()
    game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").joinQueue:FireServer({["queueType"] = "bedwars_to1"})
    CreateNotification("Module", " Quening..")
end

local Uninject = function()
    for i,v in pairs(CoreGui:GetChildren()) do
        local AirVersion = CoreGui:WaitForChild("AirV4")
        if v == AirVersion then
            v:Destroy()
            CreateNotification("Module", " Uninjected")
        end
    end
end

local AntiAFk = function()
    if game.Players.PlayerAdded and game.Players.LocalPlayer then
        CreateNotification("Module", " Anti AFK")
        game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.AfkInfo:FireServer( {["afk"] = false})
     end
end

local ListAllPlayers = function()
    for i,v in pairs(game.Players:GetChildren()) do
        task.wait(1)
        CreateNotification("Found", tostring(v))
     end
end



AntiAFK.MouseButton1Click:Connect(function()
    CreateNotification("Module", "Activated")
    AntiAFk()
end)

Speed.MouseButton1Click:Connect(function()
    speed()
end)

Higlight.MouseButton1Click:Connect(function()
    HighLight()
end)

TeleportJump.MouseButton1Click:Connect(function()
    HighJump()
end)
uninject.MouseButton1Click:Connect(function()
    Uninject()
end)
