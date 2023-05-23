




local plr = game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character:FindFirstChild("PrimaryPart")
local RunService = game:GetService("RunService")


  
  
local function Speed(Speed, Tog)
  local Toggle = {Enabled = Tog}
  local plr = game.Players.LocalPlayer.Character.Humanoid or game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character:FindFirstChild("PrimaryPart")
  if plr and Toggle.Enabled == true then
  plr.WalkSpeed = Speed
  elseif plr and Toggle.Enabled == false then
  while true do
  plr.WalkSpeed = 23
  wait()
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



 
 
 local function FOVChanger(toggle, Fov)
 local plr = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character:FindFirstChild("PrimaryPart")
 local Toggle = {Enabled = toggle}
 if plr and Toggle.Enabled == true then
       while Toggle.Enabled == true do
       game.Workspace.CurrentCamera.FieldOfView = Fov
       wait()
         end
         
         elseif plr and Toggle.Enabled == false then
         game.Workspace.CurrentCamera.FieldOfView = 100
       end
    end
 
 HighJump(true)
Speed(2, false)
FOVChanger(true, 120)
