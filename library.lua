local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local Core = game:GetService("CoreGui")
local VairInjected = true;
local library = {}
local Commands = {}
local Vair = Instance.new("ScreenGui", Core)
Commands["Uninject"] = function()
    for _,ui in pairs(Core:GetChildren()) do
        local Inst = Core:WaitForChild("AirV4")
        if ui == Inst then
            ui:Destroy()
        end
    end
end











function library:CreateWindow(tabl)
    local Window = Instance.new("Frame")
    local Tittle = Instance.new("TextLabel")
    Tittle.Name = tabl.Name
    Tittle.Parent = Window
    Tittle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tittle.BackgroundTransparency = 1.000
    Tittle.Position = UDim2.new(0.241937205, 0, 0.0567000508, 0)
    Tittle.Size = UDim2.new(0.510048926, 0, 0.883073866, 0)
    Tittle.Font = Enum.Font.Gotham
    Tittle.Text = tabl.Name
    Tittle.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tittle.TextScaled = true
    Tittle.TextSize = 30.000
    Tittle.TextWrapped = true
    Window.Parent = Vair
    Window.Name = tabl.Name
    Window.BackgroundColor3 = Color3.fromRGB(34, 38, 58)
    Window.Position = UDim2.new(0.007, 0,0.123, 0)
    Window.Size = UDim2.new(0.174, 0,0.075, 0)
    local frame = Window
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

    function library:CreateButton(Settings)
        local Button = {}
        local button = Instance.new("TextButton")
        button.Name = "Button"
        button.Parent = Window
        button.BackgroundColor3 = Color3.fromRGB(55, 66, 218)
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
        return Button
    end
end

return library

