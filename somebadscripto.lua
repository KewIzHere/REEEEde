local m = game.Players.LocalPlayer:GetMouse()

--credits part

    game.StarterGui:SetCore("SendNotification", {
    Title = "Kew#6736";
    Text = "press F9 for info";
    Icon = "";
    Duration = "10";
    })

wait(1)

    warn("made by Kew#6736")
    print("made by Kew#6736")
    print("-------------------------------------------------------------------------------------------------------------------------------------------------")
    print("quick tutorial, hold the item u want to dupe, type in chat '/save' and done, if didn't work try again, if still not workin dm me in discord")
    print("-------------------------------------------------------------------------------------------------------------------------------------------------")
    print("Update - Position saver, press numpad1 to save, then press numpad2 to teleport, sometimes can kill you")
    print("added equip all items at once, press numpad3 to equip all items, laggy sometimes, wait 5 sec before duping")
    print("removed keybind 'B' cause its useless now...")
    print("added cooldown(2.5) for u guys, /save command sometimes not working")
    print("note: press numpad2 when u respawned, very fast cause it will kill you")
    print("u can use the same script, auto update B)")
    print("the script spys who executed it, dont even try to share it with someone or sell it")
    print("enjoy :)   heh")
    
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
