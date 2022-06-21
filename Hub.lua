
function RunScript()
local player = game.Players.LocalPlayer
local Animate = player.Character.Animate

local Version = "1.2"	
	
local ChatColor = BrickColor.new("Bright red")

function SendChatMessage(msg,color)
	local c = color
	local chat = game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = ""..msg..".";
		Font = Enum.Font.GothamBlack;
		Color = c.Color;
		FontSize = Enum.FontSize.Size96;   
	})
end

SendChatMessage("Thank you for using my script "..player.Name.." <3",ChatColor)
SendChatMessage("This script will have more updates and hopefully more games :)",ChatColor)

-- Library Stuff--
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MassiveUnit/stuff/main/ui.lua"))()

local Window = Library.CreateLib("Massive Unit's Hub | Version "..Version.."", "DarkTheme")
-- yes --
local FFSettings = Window:NewTab("Funky Friday")
local FFSection = FFSettings:NewSection("Funky Friday")
FFSection:NewKeybind(
    "Teleport to Animdude Boss",
    "yes sex",
    Enum.KeyCode.L,
    function()
    SendChatMessage("Teleported to Animdude Boss",ChatColor)
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-219.7686, 69.6844788, 5.25556374)
    end
)

FFSection:NewKeybind(
    "Add points manually",
    "yes sex",
    Enum.KeyCode.K,
    function()
    SendChatMessage("Added 350 Points in Round",ChatColor)
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
    SendChatMessage("Adding 350 Points until you click Stop.",ChatColor)
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
    SendChatMessage("Stopped Adding Points.",ChatColor)
game:GetService("ReplicatedStorage").RF.Name = "RFOff"
wait(1)
game:GetService("ReplicatedStorage").RFOff.Name = "RF"
    end
)

--ROBOWLING------------------------------------------------------------
-----------------------------------------------------------------------

local RBSettings = Window:NewTab("RoBowling")
local RBSection = RBSettings:NewSection("RoBowling")

RBSection:NewKeybind(
    "Make BowlingBall's HitBox Bigger",
    "yes sex",
    Enum.KeyCode.J,
    function()
    local plr = game:GetService("Players").LocalPlayer
    workspace[plr.Name].BowlingBall.HitBox.Size = Vector3.new(6, 6, 6)
    end
)

local TabCredit = Window:NewTab("Credits")
local CreditSection = TabCredit:NewSection("Credits")

CreditSection:NewLabel("Discord : UnitIdk#5339")
CreditSection:NewLabel("Made By MvssiveUnit")
CreditSection:NewLabel("More shit will be added ok.")
end

RunScript()
