

local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local UIS = game:GetService('UserInputService')
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

--Closes previous instance of Airv4

for _, value in pairs(CoreGui:GetChildren()) do
        local AirInstance = CoreGui:FindFirstChild("AirV4")
        if value ==  AirInstance then
        value:Destroy()
    end
end

task.wait(1)
local plr = game.Players.LocalPlayer.Character.Humanoid and game.Players.LocalPlayer.Character.PrimaryPart and game.Players.LocalPlayer.Character.HumanoidRootPart and game.Players.LocalPlayer.Character
local plr_human = game.Players.LocalPlayer.Character.Humanoid
local plr_Primary = game.Players.LocalPlayer.Character.PrimaryPart
local AirTable = {
    ClientSettings = {}
}


    local AirV4 = Instance.new("ScreenGui")
    local UICorner = Instance.new("UICorner")
    local Frame = Instance.new("Frame")
    local Speed = Instance.new("TextButton")
    local Higlight = Instance.new("TextButton")
    local AntiAFK = Instance.new("TextButton")
    local High = Instance.new("TextButton")
    local H = Instance.new("TextButton")
    local ModuleToggle = Instance.new("TextLabel")
    
    
    AirV4.Parent = CoreGui
    AirV4.Name = "AirV4"
    AirV4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    

    Frame.Parent = AirV4
    Frame.BackgroundColor3 = Color3.fromRGB(34, 38, 58)
    Frame.Position = UDim2.new(0.007, 0,0.123, 0)
    Frame.Size = UDim2.new(0.174, 0,0.075, 0)
    
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
    
    High.Parent = Frame
    High.BackgroundColor3 = Color3.fromRGB(45, 55, 76)
    High.Position = UDim2.new(-0.006, 0,3.345, 0)
    High.Size = UDim2.new(1, 0, 0.805999994, 0)
    High.Font = Enum.Font.Gotham
    High.Text = "HighJump:(Teleport)"
    High.TextColor3 = Color3.fromRGB(255, 255, 255)
    High.TextSize = 20.000
    High.TextWrapped = true

    
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

if game:IsLoaded() then
local TweenService = game:GetService("TweenService")
local TweenInformation = TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0)
local TweenInformation2 = TweenInfo.new(5,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,0)
local Goals = {Position = UDim2.new(0.819963813, 0, 0.884708643, 0)} 
local g = {Position = UDim2.new(200, 0,0, 0)} 
local Tween = TweenService:Create(Notification, TweenInformation, Goals)
local Tween2 = TweenService:Create(Notification, TweenInformation2, g)
Tween:Play()
task.wait(1)
Tween2:Play()
task.wait(2)
Notification.Position = UDim2.new(200, 0,0, 0)
Notification:Destroy()
 end
end




--Modules & Scripts
CreateNotification("Welcome","Hi.")





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



local HighLight = function()
    local highlight = Instance.new("Highlight")
    highlight.FillColor = Color3.fromRGB(32, 57, 87)
    highlight.Enabled = true
    highlight.Parent = plr
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
local player = game.Players.LocalPlayer.Character.Humanoid

if player then
local ExtraSensory = function()
    for i,v in pairs(game.Players:GetPlayers()) do
        if v then
            RunService.Heartbeat:Connect(function() 
        task.wait()
        local highlight = Instance.new("Highlight")
        highlight.FillColor = Color3.fromRGB(32, 57, 87)
        highlight.Enabled = true
        highlight.Parent = v.Character
            print("E")
        end)
        end
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

High.MouseButton1Click:Connect(function()
   task.spawn(function() 
   local ModeJump = {Height = 20, Mode = "Teleport"}
   local Player = game.Players.LocalPlayer.Character.HumanoidRootPart
   local Humanoid = game.Players.LocalPlayer.Character.Humanoid
   if ModeJump.Mode == "Teleport" then
   Player.CFrame = Player.CFrame + Vector3.new(0, 20, 0)
   elseif ModeJump.Mode == "Normal" then
   Humanoid.JumpHeight = ModeJump.Height
   	   end

   	   while (not Humanoid.Health == 100) do 
   	   if (Humanoid.Health == 100) then
   	   break
   	   end
   	   print("Human Died")
   	   end
   end)
end)
