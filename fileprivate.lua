


local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService('UserInputService')
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local PlayerClass = game:GetService("Players")
local injected = true
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SourceKep/AirV4ForRoblox/main/library.lua"), true)()

local data = {}

data["UninjectOnKeyBind"] = Instance.new("BindableEvent")
data["OnClientPosition"]  = Instance.new("BindableEvent")
data.UninjectOnKeyBind.Event:Connect(function()
    library:Delete()
end)

UIS.InputBegan:Connect(function(i) if i.KeyCode == Enum.KeyCode.N then data["UninjectOnKeyBind"]:Fire() end end)

local Player = PlayerClass.LocalPlayer.Character:FindFirstChild("Humanoid")
local root = PlayerClass.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

--GUI
local PlayerHumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
local mis = library.Window({Name = "Movement", Pos = UDim2.new(0.007, 0,0.123, 0)}) -- CreateWindow
local Miscellanous =  library.Window({Name = "Miscellanous", Pos = UDim2.new(0.20, 0,0.123, 0)})
local combat = library.Window({Name = "Combat", Pos = UDim2.new(0.39,0,0.123,0)})
local World = library.Window({Name = "World", Pos = UDim2.new(0.59,0,0.123,0)})


mis.CreateButton({Name = "Speed", Pos = UDim2.new(0,0,2.61,0), Function = function()  -- Create Button
if Player then
 while true do
 Player.WalkSpeed = 23
  task.wait()
   end
 end
end})



mis.CreateButton({
    Name = "TPJump",
    Pos = UDim2.new(0,0,1,0),
    Function = function()
    local ModeJump = {Height = 20, Mode = "Teleport"}
    if ModeJump.Mode == "Teleport" then
    PlayerHumanoidRootPart.CFrame = PlayerHumanoidRootPart.CFrame + Vector3.new(0, 20, 0)
    end
end
})

mis.CreateButton({
    Name = "SpeedDash",
    Pos = UDim2.new(0,0,1.80,0),
    Function = function()
     local flytick = tick()
     while true do
        if tick() -  flytick > 0.3 then
            break
        end
        task.wait()
        local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
        plr.CFrame =  plr.CFrame +  plr.CFrame.LookVector/3.8
        plr.CFrame =  plr.CFrame +  plr.CFrame.UpVector/3
        end
    end
})



Miscellanous.CreateButton({
  Name = "Uninject",
  Pos = UDim2.new(0,0,1,0),
  Function = function()
  library:Delete()
  end
})

    
Miscellanous.CreateButton({
    Name = "AutoQue",
    Pos = UDim2.new(0,0,4.999999,0),
    Function = function()
        game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").joinQueue:FireServer({["queueType"] = "bedwars_to1"})
   end
})

Miscellanous.CreateButton({
    Name = "120FOV",
    Pos = UDim2.new(0,0,4.19,0),
    Function = function()
        RunService.Heartbeat:Connect(function(callback)
        task.wait()
            workspace.CurrentCamera.FieldOfView = 120
        end)
    end
})

    Miscellanous.CreateButton({
    Name = "LobbyReset",
    Pos = UDim2.new(0,0,1.80,0),
    Function = function()
    Player.Health = 0
    end})

    Miscellanous.CreateButton({
        Name = "OWNERTAG",
        Pos = UDim2.new(0,0,2.61,0),
        Function = function()
            local textChatService = game:GetService("TextChatService")
 
textChatService.OnIncomingMessage = function(message: TextChatMessage)
    
    local properties = Instance.new("TextChatMessageProperties")
    
    if message.TextSource then
        
        local player = game:GetService("Players"):GetPlayerByUserId(message.TextSource.UserId)
        
        if player.Name == game.Players.LocalPlayer.Name then
            
            properties.PrefixText = "<font color='#00ffee'>[AIRV4 OWNER]</font> " .. message.PrefixText
            
        end  end return properties end end
    })
    Miscellanous.CreateButton({Name = "AFK", Pos = UDim2.new(0,0,3.41,0),Function = function()
    library:Notification("Module", "AFK")
    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.AfkInfo:FireServer( {["afk"] = false})
end})




combat.CreateButton({
    Name = "ESP",
    Pos = UDim2.new(0,0,1,0),
    Function = function()
    local class = game:GetService("Players")
    for i,v in pairs(game.Players:GetPlayers()) do
    local ftick = tick()

        while true do 
    for i,v in pairs(game.Players:GetPlayers()) do
        if (not v) then break end
        if (not v.Character) then break end
        if (not game.Players.LocalPlayer) then break end
        if v then
        task.wait()
        local highlight = Instance.new("Highlight")
        highlight.FillColor = Color3.fromRGB(32, 57, 87)
        highlight.Enabled = true
        highlight.Parent = v.Character
        end
end
        end
    end
end})

combat.CreateButton({
    Name = "PlayerBoxes",
    Pos = UDim2.new(0,0,1.80,0),
    Function = function()
    local HitBox = Instance.new("Part")
    HitBox.Achored = true
    HitBox.BrickColor = BrickColor.new(2,3 ,5)
    HitBox.Parent = Workspace.CurrentCamera
end})


World.CreateButton({
    Name = "AntiVoid",
    Pos = UDim2.new(0,0,1,0),
    Function = function()
   while true do
    local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
   print(plr.CFrame)
   if plr  then
     if plr.CFrame == plr.CFrame.new(Vector3.new(0,0,-9999,0)) then
     print("E")
     end
     end
     task.wait()
  end
end
})
