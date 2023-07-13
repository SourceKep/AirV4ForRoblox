local lib = {Api = { WindowAPI = {} } }
local Core = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local Vair = Instance.new("ScreenGui", Core)
function lib:Delete() Vair:Destroy() end
local opened = true
  UIS.InputBegan:Connect(function(input, istyping) 
          if istyping then
             return nil
          end
          if input.KeyCode == Enum.KeyCode.M then
          if opened == true then
                      Vair.Enabled = true
                         task.wait(0.1)
                         opened = false   
                         elseif opened == false then
                           Vair.Enabled = false
                           task.wait(0.1)
                      opened = true                  
            end
       end
  end)

  function Shutdown()
      table.clear(lib)
      lib:Delete()
  end

function lib.Api.WindowAPI.Window(tabl)
    local Window2 = Instance.new("Frame")
    local container = Instance.new("Frame")
    container.Parent = Window2
    container.BackgroundColor3 = Color3.fromRGB(51, 54, 76)
    container.Size = UDim2.new(1,0,tabl.CSZ,0)
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
    lib.Api.ButtonApi = {}
    function lib.Api.ButtonApi.CreateButton(Options)
        --OptionsHolder
        local button = Instance.new("TextButton")
        local HighLight = Instance.new("Highlight")
        HighLight.Parent = button
        HighLight.FillTransparency = 1
        HighLight.OutlineColor = Color3.fromRGB(86, 97, 159)
        button.Size = UDim2.new(1, 0, 0.80590862, 0) 
        button.Name = "Button"
        button.Parent = Window2
        button.BackgroundColor3 = Color3.fromRGB(39, 42, 60)
        button.Position = UDim2.new(0,0,Options.Pos,0)
        button.BorderSizePixel = 0
        button.BackgroundTransparency = 0.1
        button.Font = Enum.Font.Gotham
        button.Text = Options.Name
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.TextSize = 20.000
        local Holder = true
        button.MouseButton1Click:Connect(function()
            if Holder == true then
            local Info = TweenInfo.new(0.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut, 0, false)
            local tween = TweenService:Create(button, Info,{BackgroundColor3=Color3.fromRGB(27, 29, 42)}):Play()
            pcall(Options.Function)
            task.wait(0.5)
           button.BackgroundColor3 = Color3.fromRGB(27, 29, 42)
                Holder = false
            elseif Holder == false then
                local Info = TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut, 0, false)
                local tween = TweenService:Create(button, Info,{BackgroundColor3=Color3.fromRGB(39, 42, 60)}):Play()
               task.wait(0.5)
               button.BackgroundColor3 = Color3.fromRGB(39, 42, 60)
                Holder = true
           end
    end)
end
    return lib.Api.ButtonApi
end

return lib
