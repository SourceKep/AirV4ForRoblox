

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(49, 87, 122)
Frame.Position = UDim2.new(0.0146590183, 0, 0.169902906, 0)
Frame.Size = UDim2.new(0.153601021, 0, 0.506067932, 0)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.00065121986, 0, -0.00096771121, 0)
TextLabel.Size = UDim2.new(1.00000012, 0, 0.132100597, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "AirV4"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(24, 64, 117)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.214355767, 0)
TextButton.Size = UDim2.new(1, 0, 0.0971074477, 0)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "Teleport"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(24, 64, 117)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 0, 0.373813361, 0)
TextButton_2.Size = UDim2.new(1, 0, 0.0971074477, 0)
TextButton_2.Font = Enum.Font.Gotham
TextButton_2.Text = "AutoFarm"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(24, 64, 117)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(-0.00414937781, 0, 0.550057471, 0)
TextButton_3.Size = UDim2.new(1, 0, 0.0971074477, 0)
TextButton_3.Font = Enum.Font.Gotham
TextButton_3.Text = "AutoNin"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.223415166, 0, 0.662701428, 0)
TextLabel_2.Size = UDim2.new(0.547718048, 0, 0.132100597, 0)
TextLabel_2.Font = Enum.Font.Gotham
TextLabel_2.Text = "NinjaFarm"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true


















local function XBGA_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	function Click(Mouse)
		function IslandTp(plas)
			local Plr = game.Players.LocalPlayer
			Plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").islandUnlockParts:FindFirstChild(plas).CFrame
	
		end
	
		IslandTp("Blazing Vortex Island")
		
	end
	
	
	script.Parent.MouseButton1Click:Connect(Click)
end
coroutine.wrap(XBGA_fake_script)()
local function JWXU_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)
	
	
	function Teleport(s)
		local Plr = game.Players.LocalPlayer
		local Cf = Plr.Character.HumanoidRootPart
		if Plr then
			Cf.CFrame = s
		end
	end
		
		local AutoFarm = true
		function AutoWing()
			spawn(function() 
				  while AutoFarm == true do
					  local args = {
								  [1] = "swingKatana"
							  }
		  
							  game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
					 wait()
			   end
		   end)
	  end
   
function AutoTeleport()
    spawn(function() 
             while AutoFarm == true do
      Teleport(game:GetService("Workspace").sellTeleportPart.CFrame)
        wait()
                
         end
    end)
end
    
function AutoBuyBelts()
	spawn(function()
            while AutoFarm == true do
						local args = {
							[1] = "buyAllBelts",
							[2] = "Blazing Vortex Island"
						}
				game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
			wait()
         end
    end)
end
    
function AutoBuySwords() 
	spawn(function() 
            while AutoFarm == true do
						local args = {
							[1] = "buyAllSwords",
							[2] = "Blazing Vortex Island"
						}
	
						game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
				wait()
            end
      end)
end

	

	script.Parent.MouseButton1Click:Connect(function() 
		if AutoFarm == true then
			AutoBuyBelts()
			AutoBuySwords()
			AutoTeleport()
			AutoWing()
			A = false
		elseif A == false then
			A = true
		end
	end)
end
	

	
coroutine.wrap(JWXU_fake_script)()
local function DEOMLL_fake_script() 
	local script = Instance.new('LocalScript', TextButton_3)

	function Click(Mouse)
		
		
		
		
		
		

		local I = true
	
		if I == true then
			while I == true do
				spawn(function()
	
					local args = {
						[1] = "swingKatana"
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
					wait()
				end)
				wait()
			end
			
		else I = false
			
	end
		
		
		
	
		
		
		
	end
	
	
	script.Parent.MouseButton1Click:Connect(Click)
end
coroutine.wrap(DEOMLL_fake_script)()
