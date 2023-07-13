local lib = {
    Api = {ButtonAPI = {}, WindowAPI = {}},
}
local Core = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local Vair = Instance.new("ScreenGui", Core)


local opened = true -- The state of weather the UX, UI, GUI is opened
local Holder = true -- Button Tween
local Owner = "MemMyP"
local IVPLACEHOLDER = {}

function lib:Delete()
    Vair:Destroy()
end
function ClearAll()
   Vair:Destroy()
   table.clear(lib)
   table.clear(lib.Api)
   table.clear(lib.Api.ButtonAPI)
   table.clear(lib.Api.WindowAPI)
end


function lib:Shutdown()
    ClearAll()
end

lib["OnKeyBindUninject"] = Instance.new("BindableEvent")
lib["OnKeyBindOpenOrClose"] = Instance.new("BindableEvent")

local UninjectConnection = lib.OnKeyBindUninject.Event:Connect(function()
    lib:Delete()
end)

local OnKeyBindOpenOrCloseConnection = lib["OnKeyBindOpenOrClose"].Event:Connect(function()
    local keybind = UIS.InputBegan:Connect(function(input, IsTyping)
        if IsTyping then return end
         if input.KeyCode == Enum.KeyCode.M then
            if opened == true then
                opened = false
            elseif opened == false then
                opened = true
            end
         end
     end)
end)
function lib:DisconnectAllCurrentConnections()
    OnKeyBindOpenOrCloseConnection:Disconnect()
    UninjectConnection:Disconnect()
end

UIS.InputBegan:Connect(function(input, IsTyping)
    if input.KeyCode == Enum.KeyCode.N then
        lib.OnKeyBindUninject:Fire()
    elseif IsTyping then
        return
    end
end)


function lib:Tittle(Options_Table)
    local TextT = Instance.new("TextLabel")
    TextT.Position = Options_Table.__Position
    TextT.Parent = Vair
    TextT.TextColor3 = Options_Table.__Color3
    TextT.BackgroundTransparency = 1
    TextT.Size =  UDim2.new(0.174, 0,0.075, 0)
    TextT.TextScaled = true
    TextT.Text = Options_Table.__Text
end


function lib.Api.WindowAPI.Window(tabl)
    local Window2 = Instance.new("Frame")
    Window2.BackgroundTransparency = 1
    local container = Instance.new("Frame")
    local Info = TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut, 0, false)
    local Tween2 = TweenService:Create(Window2, Info, {BackgroundTransparency = 1}):Play()
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

    function lib.Api.ButtonAPI.CreateButton(Options)
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
        button.MouseButton1Click:Connect(function()
            if Holder == true then
            local Info = TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut, 0, false)
            local tween = TweenService:Create(button, Info,{BackgroundColor3=Color3.fromRGB(27, 29, 42)}):Play()
            pcall(Options.Function)
            task.wait(0.2)
           button.BackgroundColor3 = Color3.fromRGB(27, 29, 42)
                Holder = false
            elseif Holder == false then
                local Info = TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut, 0, false)
                local tween = TweenService:Create(button, Info,{BackgroundColor3=Color3.fromRGB(39, 42, 60)}):Play()
               task.wait(0.2)
               button.BackgroundColor3 = Color3.fromRGB(39, 42, 60)
                Holder = true
           end
    end)
end

    return lib.Api.ButtonAPI
end
return lib
