local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local Core = game:GetService("CoreGui")
local VairInjected = true;
local library = {}
local Commands = {}
local Vair = Instance.new("ScreenGui", Core)
Vair.Name = "AirV4"

--510048926
   function library:Delete() Vair:Destroy() end

    function library:CreateWindow(tabl)
        local Window2 = Instance.new("Frame")
        local Tittle = Instance.new("TextLabel")
        Tittle.Name = tabl.Name
        Tittle.Parent = Window2
        Tittle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Tittle.BackgroundTransparency = 1.000
        Tittle.Position = UDim2.new(0.10, 0, 0.0567000508, 0)
        Tittle.Size = UDim2.new(0.8, 0, 0.883073866, 0)
        Tittle.Font = Enum.Font.Gotham
        Tittle.Text = tabl.Name
        Tittle.TextColor3 = Color3.fromRGB(255, 255, 255)
        Tittle.TextScaled = false
        Tittle.TextSize = 40
        Tittle.TextWrapped = true

        Window2.Parent = Vair
        Window2.BorderSizePixel = 0
        Window2.Name = tabl.Name
        Window2.BackgroundColor3 = Color3.fromRGB(54, 56, 70)
        Window2.Position = tabl.Pos
        Window2.Size = UDim2.new(0.174, 0,0.075, 0)
        local frame = Window2
        local dragToggle = nil
        local dragSpeed = 0.25
        local dragStart = nil
        local startPos = nil
    
            local function updateInput(input)
            local delta = input.Position - dragStart
            local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
            end
            frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
            dragToggle = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
                        end
                    end)
                end
            end)
            UIS.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if dragToggle then
            updateInput(input)
                end
            end
        end)


 
  
    
    


local gui = {}
    function gui:CreateButton(Settings)
        local button = Instance.new("TextButton")
        button.Name = "Button"
        button.Parent = Window2
        button.BackgroundColor3 = Color3.fromRGB(70, 73, 80)
        button.Position = Settings.Pos
        button.Size = UDim2.new(1, 0, 0.80590862, 0) 
        button.Font = Enum.Font.Gotham
        button.Text = Settings.Name
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.TextSize = 20.000
        button.MouseButton1Click:Connect(function()
             if typeof(Settings.Function) == "function" then
            pcall(Settings.Function)
            else
            error("Did not get a function :C")
             end
        end)
    
    end

    function gui:Notification(t, dex)
        local Notification = Instance.new("Frame")
        local ModuleToggle = Instance.new("TextLabel")
        local UICorner = Instance.new("UICorner")
        local Description = Instance.new("TextLabel")
        local medal2 = Instance.new("ImageButton")
          
        Notification.Name = "Notification"
        Notification.Parent = Vair
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
task.wait(0.9)
Tween2:Play()
task.wait(2)
Notification.Position = UDim2.new(200, 0,0, 0)
Notification:Destroy()
 end
end
    
    return gui
end
return library
