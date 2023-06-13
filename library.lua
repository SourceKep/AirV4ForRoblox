local lib = {}
local Core = game:GetService("CoreGui")
local UIS = game:GetService("UserInputService")
local Vair = Instance.new("ScreenGui", Core)
function lib:Delete() Vair:Destroy() end
local opened = true
UIS.InputBegan:Connect(function(input) 
        if input.KeyCode == Enum.KeyCode.M then
            if opened then
               if opened == true then
                 Vair.Enabled = true
                       task.wait(0.1)
                       opened = false           
                  end
              end
         end
end)

UIS.InputEnded:Connect(function(input) 
        if input.KeyCode == Enum.KeyCode.M then
           if opened then
               if opened == false then
                 Vair.Enabled = false
                       task.wait(0.1)
                       opened = true           
                  end
              end
         end
end)

function lib.ThemedWindow(tabl) 

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
        Window2.BackgroundColor3 = Color3.fromRGB(57, 73, 194)
        Window2.Position = tabl.Pos
        Window2.Size = UDim2.new(0.174, 0,0.075, 0)
        local frame = Window2
        local dragToggle = nil
        local dragSpeed = 0.25
        local dragStart = nil
        local startPos = nil
    --e
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


   local Theme = {}
   function Theme.CreateButton(Options)
    local button = Instance.new("TextButton")
    button.Name = "GUIButton"
    button.Parent = Window2
    button.BackgroundColor3 = Color3.fromRGB(39, 66, 183)
    button.Position = Options.Pos
    button.BorderSizePixel = 0
    button.BackgroundTransparency = 0.1
    button.Size = UDim2.new(1, 0, 0.80590862, 0) 
    button.Font = Enum.Font.Gotham
    button.Text = Options.Name
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 20.000
    button.MouseButton1Click:Connect(function()
         if typeof(Options.Function) == "function" then
        pcall(Options.Function)
        else
        error("Did not get a function :C")
         end
    end)
   end
   return Theme
end


function lib.Window(tabl)
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
    Window2.BackgroundColor3 = Color3.fromRGB(51, 54, 76)
    Window2.Position = tabl.Pos
    Window2.Size = UDim2.new(0.174, 0,0.075, 0)
    local frame = Window2
    local dragToggle = nil
    local dragSpeed = 0.25
    local dragStart = nil
    local startPos = nil
--e
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

    local wind = {}
    function wind.CreateButton(Options)
        local button = Instance.new("TextButton")
        button.Name = "GUIButton"
        button.Parent = Window2
        button.BackgroundColor3 = Color3.fromRGB(39, 42, 60)
        button.Position = Options.Pos
        button.BorderSizePixel = 0
        button.BackgroundTransparency = 0.1
        button.Size = UDim2.new(1, 0, 0.80590862, 0) 
        button.Font = Enum.Font.Gotham
        button.Text = Options.Name
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.TextSize = 20.000
        button.MouseButton1Click:Connect(function()
             if typeof(Options.Function) == "function" then
            pcall(Options.Function)
            else
            error("Did not get a function :C")
             end
        end)
    end
    return wind
end


return lib
