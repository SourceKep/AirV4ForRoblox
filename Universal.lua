


local plr = game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character:FindFirstChild("PrimaryPart")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local LightingService = game:GetService("Lighting")
local CoreService = game:GetService("CoreGui")
local IsInjected = true
local load = loadstring(game:HttpGet("https://raw.githubusercontent.com/SourceKep/AirV4ForRoblox/main/NotificationLoading.lua"), true)()


  
  
local function Speed(Speed, Tog)
  local Toggle = {Enabled = Tog}
  local plr = game.Players.LocalPlayer.Character.Humanoid or game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character:FindFirstChild("PrimaryPart")
  if plr and Toggle.Enabled == true then
  plr.WalkSpeed = Speed
  elseif plr and Toggle.Enabled == false then
  while true do
  plr.WalkSpeed = 23
  task.wait()
   end
  end
end


local function HighJump(Toggle)
local Toggle = {Enabled = Toggle}
local Plr = game.Players.LocalPlayer.Character.PrimaryPart
if Plr and Toggle.Enabled == true then
	Plr.CFrame = Plr.CFrame + Vector3.new(0, 30, 0)
   end
end


 local function FOVChanger(Fov, toggle)
 local plr = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character:FindFirstChild("PrimaryPart")
 local Toggle = {Enabled = toggle}

 if plr and Toggle.Enabled == true then
       while Toggle.Enabled == true do
       game.Workspace.CurrentCamera.FieldOfView = Fov
       task.wait()
   end
 elseif Toggle.Enabled == false then
         game.Workspace.CurrentCamera.FieldOfView = 100
     end
end




local function tp(child, toggle)
local Player = game.Players.LocalPlayer.Character.PrimaryPart
local plr2 = game.Players:FindFirstChild(child).Character.PrimaryPart
local Tp = {Enabled = toggle}

if Tp.Enabled == true and plr2 and Player then
repeat
  Player.CFrame = plr2.CFrame
until plr2.Health == 0
wait()
 end
end


local function fly(Toggle)
  local Fly = {Enabled = Toggle}
  local plr = game.Players.LocalPlayer.Character.PrimaryPart
  local FlyY = function()
    local flyY = {Enabled = true}
    if flyY.Enabled == true then
    while flyY.Enabled == true do 
    plr.CFrame = plr.CFrame + plr.CFrame.UpVector
          end
       end
    end

    local FlyX = function()
      local flyX = {Enabled = true}
      if flyX.Enabled == true then
        while flyX.Enabled == true do
        plr.CFrame = plr.CFrame + plr.CFrame.LookVector
      end
    end
end














end
