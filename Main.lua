local plr = game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character:WaitForChild("PrimaryPart") or game.Players.LocalPlayer.Character:FindFirstChild("PrimaryPart")
local CoreGui = game:GetService("CoreGui")
local load = pcall(function() return loadstring(game:HttpGet("https://raw.githubusercontent.com/SourceKep/AirV4ForRoblox/main/msmodule.lua", true))() end)


_G.VairDisconect = function() pcall(function() for i, v in pairs(CoreGui:GetChildren()) do  local gui = CoreGui:WaitForChild("Gui") if v == gui then v:Destroy() end end end) end
_G.VairReload = function() pcall(function() VairDisconect() task.wait(1) local load2 = pcall(function() return loadstring(game:HttpGet("https://raw.githubusercontent.com/SourceKep/AirV4ForRoblox/main/Universal.lua"), true)()  end)
 end) end
_G.GuiAlive = function () pcall(function() for i, v in pairs(CoreGui:GetChildren()) do  local gui = CoreGui:WaitForChild("Gui") if v == gui then print("Connection Alright, AirV4") else print("NotFound") end end) end

 if load then
VairReload()
GuiAlive()
end
