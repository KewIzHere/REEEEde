    game.StarterGui:SetCore("SendNotification", {
    Title = "Kew#6736";
    Text = "press F9 for info";
    Icon = "";
    Duration = "10";
    })

wait(1)

    print("made by Kew#6736")
    print("-------------------------------------------------------------------------------------------------------------------------------------------------")
    print("quick tutorial, hold the item u want to dupe, type in chat '/save' and done, if didn't work try again, if still not workin dm me in discord")
    print("numpad 1 - save, numpad 2 - teleport to save, numpad 3 - equip all items in inv, numpad 4 - teleport all items to you")
    print("note: press numpad 2 very fast when u respawned cause it will kill you")
    print("-------------------------------------------------------------------------------------------------------------------------------------------------")
    print("Update - Added Whitelist")
    print("the script logs who executed it, dont even try to share it with someone or sell it")
    
--dupe

player=game.Players.LocalPlayer
    player.Chatted:Connect(function(msg)
        if msg=="/save" then 
            wait(0.1)
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
            v.Parent = game.Workspace
            end
            end
            wait()
            game.Players.LocalPlayer.Character.Humanoid.Health = 0 
            end
    end)
    
--save position

function onKeyPress(inputObject, gameProcessedEvent)
if inputObject.KeyCode == Enum.KeyCode.KeypadOne then
LPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)

--teleport to saved position

function onKeyPress(inputObject, gameProcessedEvent)
if inputObject.KeyCode == Enum.KeyCode.KeypadTwo then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LPos
end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)

--equip all items in backpack

function onKeyPress(inputObject, gameProcessedEvent)
if inputObject.KeyCode == Enum.KeyCode.KeypadThree then
    wait("2.5")
    for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if tool:IsA("Tool") then
         tool.Parent = game:GetService("Players").LocalPlayer.Character
    end
end
end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)

--teleport all droped items to you
function onKeyPress(inputObject, gameProcessedEvent)
if inputObject.KeyCode == Enum.KeyCode.KeypadFour then
    for i,v in pairs(game.Workspace:GetChildren()) do
	                  if v:IsA"Tool" then
	           v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	               end
           end
    end

end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
wait(0.4)
if _G.Gui == true then
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local somedecoration = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local Main2 = Instance.new("Frame")
local _23 = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.00798722077, 0, 0.875921369, 0)
Main.Size = UDim2.new(0, 289, 0, 93)
Main.Active = true
Main.Draggable = true

somedecoration.Name = "some decoration"
somedecoration.Parent = Main
somedecoration.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
somedecoration.BorderSizePixel = 0
somedecoration.Position = UDim2.new(0.0304649901, 0, 0.0881236121, 0)
somedecoration.Size = UDim2.new(0, 270, 0, 84)

TextBox.Parent = somedecoration
TextBox.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.126323193, 0, 0.159045145, 0)
TextBox.Size = UDim2.new(0, 200, 0, 24)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000

TextButton.Parent = somedecoration
TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0333333351, 0, 0.572404385, 0)
TextButton.Size = UDim2.new(0, 69, 0, 28)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Equip"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = somedecoration
TextButton_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.Position = UDim2.new(0.711111128, 0, 0.572404385, 0)
TextButton_2.Size = UDim2.new(0, 69, 0, 28)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Teleport"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

Main2.Name = "Main2"
Main2.Parent = Main
Main2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main2.BorderSizePixel = 0
Main2.Position = UDim2.new(-0.00239340216, 0, -1.56027579, 0)
Main2.Size = UDim2.new(0, 139, 0, 145)

_23.Name = "23"
_23.Parent = Main2
_23.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
_23.BorderSizePixel = 0
_23.Position = UDim2.new(0.0603156574, 0, 0.157801554, 0)
_23.Size = UDim2.new(0, 123, 0, 122)

ScrollingFrame.Parent = _23
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ScrollingFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0879740715, 0, 0.0767579079, 0)
ScrollingFrame.Size = UDim2.new(0, 103, 0, 102)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 250)
ScrollingFrame.ScrollBarThickness = 6

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0291262139, 0, 0.179253623, 0)
TextLabel.Size = UDim2.new(0, 96, 0, 215)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

TextLabel_2.Parent = Main2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.033220768, 0, 0.0336637497, 0)
TextLabel_2.Size = UDim2.new(0, 134, 0, 18)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Items List"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function VJIB_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	local m = script.Parent.Parent.TextBox
	script.Parent.MouseButton1Click:Connect(function()
	for i,v in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v.Name == m.Text then
			v.Parent = game:GetService("Players").LocalPlayer.Character
			end
			end
	end)
end
coroutine.wrap(VJIB_fake_script)()
local function HREK_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)

	local m = script.Parent.Parent.TextBox
	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(game.Workspace:GetChildren()) do
			if v:IsA"Tool" and v.Name == m.Text then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
			end
		end
	end)
end
coroutine.wrap(HREK_fake_script)()
local function IMDAD_fake_script() -- TextLabel.Script 
	local script = Instance.new('Script', TextLabel)

	local s = script.Parent
	s.Text = "Stand Arrow\nUnusual Arrow\nRequiam Arrow\nRokakaka Fruit\nRotten Rokakaka\nGreen Baby\nDio's Diary\nUltimate Duary\nOrb\nSaint's Skull\nSaint's Limb\nSaint's Torso\nSaint's Corpse\nStone Mask\nKars Stone Mask\nAja Mask\nKetchup\nRubyGem\nPistol\nYen\nPackage\nUmbrella\nEnvelope"
end
coroutine.wrap(IMDAD_fake_script)()
end
