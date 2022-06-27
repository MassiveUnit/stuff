--Version 1.3.111111111
function RunScript()
local player = game.Players.LocalPlayer
local Animate = player.Character.Animate
local points 
local Version = "1.3.3"	
points = 350
local ChatColor = BrickColor.new("Bright red")

local pointstoggle	
pointstoggle = false	
	
local FunkyFriday = 6447798030
local RoBowling = 340227283
local PLSDONATE = 8737602449
	
function SendNotify(msg)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Massive Unit's Hub"; -- Required. Has to be a string!
    Text = msg; -- Required. Has to be a string!
   -- Icon = "rbxassetid://9583671056"; -- Optional, defaults to "" (no icon)
    Duration = 5; -- Optional, defaults to 5 seconds
})	
end
	
function SendChatMessage(msg,color)
	local c = color
	local chat = game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = ""..msg..".";
		Font = Enum.Font.GothamBlack;
		Color = c.Color;
		FontSize = Enum.FontSize.Size96;   
	})
end

SendNotify("Thank you for using my script "..player.Name.." <3")
SendNotify("This script will have more updates and hopefully more games :)")

-- Library Stuff--
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MassiveUnit/stuff/main/ui.lua"))()

local Window = Library.CreateLib("Massive Unit's Hub | "..Version.."", "LightTheme")
-- yes --
local FFSettings = Window:NewTab("Funky Friday")
local FFSection = FFSettings:NewSection("Funky Friday")
local FFKeyBindSection = FFSettings:NewSection("Keybinds")
local RBSettings = Window:NewTab("RoBowling")
local RBSection = RBSettings:NewSection("RoBowling")
local PLSDSettings = Window:NewTab("PLS DONATE")
local PLSDSection = PLSDSettings:NewSection("PLS DONATE")

local TabSettings = Window:NewTab("Settings")
local SettingSection = TabSettings:NewSection("Settings")
SettingSection:NewKeybind(
    "Toggle GUI keybind",
    "Show or hide GUI",
    Enum.KeyCode.RightControl,
    function()
        Library:ToggleUI()
    end
)

if game.PlaceId == FunkyFriday then
RBSection:NewLabel("Join RoBowling to use this Section")
FFSection:NewKeybind(
    "Teleport to Animdude Boss",
    "yes sex",
    Enum.KeyCode.P,
    function()
    SendNotify("Teleported to Animdude Boss")
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-219.7686, 69.6844788, 5.25556374)
    end
)

FFSection:NewKeybind(
    "Add points manually",
    "yes sex",
    Enum.KeyCode.X,
    function()
    SendNotify("Added 350 Points in Round")
        local args = {
    [1] = {
        [1] = "Server",
        [2] = "RoundManager",
        [3] = "UpdateScore"
    },
    [2] = {
        [1] = 350
    }
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
    end
)

FFSection:NewButton(
    "Instant Full Score",
    "yes sex",
    function()
    SendNotify("Adding 350 Points until you click Stop.")
        local args = {
    [1] = {
        [1] = "Server",
        [2] = "RoundManager",
        [3] = "UpdateScore"
    },
    [2] = {
        [1] = 350
    }
}

while wait(0.0001) do
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
end
    end
)

FFSection:NewButton(
    "Stop the score shit",
    "yes sex",
    function()
    SendNotify("Stopped Adding Points.")
game:GetService("ReplicatedStorage").RF.Name = "RFOff"
wait(1)
game:GetService("ReplicatedStorage").RFOff.Name = "RF"
    end
)
		
FFSection:NewButton(
    "Toggle KeyBinds",
    "yes sex",
    function()
    if pointstoggle == false then
       pointstoggle = true
       SendNotify("Toggle ON")
    elseif pointstoggle == true then
       pointstoggle = false
       SendNotify("Toggle OFF")
    end
    end
)

FFKeyBindSection:NewLabel("Points by default is 350")
FFKeyBindSection:NewKeybind(
    "Left Key | Add Points",
    "",
    Enum.KeyCode.H,
    function()
    local args = {
    [1] = {
        [1] = "Server",
        [2] = "RoundManager",
        [3] = "UpdateScore"
    },
    [2] = {
        [1] = 350
    }
}
if pointstoggle == true then				
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
elseif pointstoggle == false then
print("_")
end
end
)
	
FFKeyBindSection:NewKeybind(
    "Down Key | Add Points",
    "",
    Enum.KeyCode.J,
    function()
    local args = {
    [1] = {
        [1] = "Server",
        [2] = "RoundManager",
        [3] = "UpdateScore"
    },
    [2] = {
        [1] = 350
    }
}
if pointstoggle == true then				
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
elseif pointstoggle == false then
print("_")
end
end
)

FFKeyBindSection:NewKeybind(
    "Up Key | Add Points",
    "",
    Enum.KeyCode.K,
    function()
    local args = {
    [1] = {
        [1] = "Server",
        [2] = "RoundManager",
        [3] = "UpdateScore"
    },
    [2] = {
        [1] = 350
    }
}
if pointstoggle == true then				
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
elseif pointstoggle == false then
print("_")
end
end
)
	
FFKeyBindSection:NewKeybind(
    "Right Key | Add Points",
    "",
    Enum.KeyCode.L,
    function()
    local args = {
    [1] = {
        [1] = "Server",
        [2] = "RoundManager",
        [3] = "UpdateScore"
    },
    [2] = {
        [1] = 350
    }
}
if pointstoggle == true then				
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
elseif pointstoggle == false then
print("_")
end
end
)	
elseif game.PlaceId == RoBowling then	
FFSection:NewLabel("Join Funky Friday to use this Section")
--ROBOWLING------------------------------------------------------------
-----------------------------------------------------------------------

RBSection:NewKeybind(
    "Make BowlingBall's HitBox Bigger",
    "yes sex",
    Enum.KeyCode.M,
    function()
    local plr = game:GetService("Players").LocalPlayer
    workspace[plr.Name].BowlingBall.HitBox.Size = Vector3.new(6, 6, 6)
    end
)
--PLS DONATE--
--------------
end

local TabCredit = Window:NewTab("Credits")
local CreditSection = TabCredit:NewSection("Credits")

CreditSection:NewLabel("Discord : UnitIdk#5339")
CreditSection:NewLabel("Made By MvssiveUnit")
CreditSection:NewLabel("More shit will be added ok.")
end

RunScript()
