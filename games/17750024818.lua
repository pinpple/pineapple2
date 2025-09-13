--[[

    pineapple 🍍
    by @stav, @sus, @GamingChairV4, @DaiPlayz, @cqrzy, @EZHubBot

    game: Bedwarz
]]

local Pineapple = loadstring(readfile('pineapple/gui/pineapple.lua'))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingChairV4/pineapple/refs/heads/main/gui/pineapple.lua"))()

local MainUI = Library:CreateMain({
	TextCharacters = 10,
	Toggle = "RightShift",
	
})

local tab1 = Library:CreateTab({
	Text = "Tab1",
	Image = "rbxassetid://0",
	ImageColor = Color3.fromRGB(0,0,0)
})

local toggle1 = tab1:CreateToggle({
	Name = "Name of the toggle",
	ToolTipText = "Tool Tip Text of the toggle",
	Keybind = "The keybind Default: None",
	Enabled = Enabled by defualt?: Bool true / false,
	AutoDisable = Disable by Automatically? Bool true / false,
	AutoEnable = Enable by Automatically? Bool true / false,
	Hide = Hide the toggle? "Visiblity = false" Bool true / false,
	Callback = function(callback)
	-- callback is a bool if the toggle is toggled true / false ---
	if callback then
	print("Active")
	else
	print("Not active")
		end
	end,
})
