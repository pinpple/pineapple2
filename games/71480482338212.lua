--[[

    pineapple 🍍
    by @stav, @sus, @GamingChairV4, @DaiPlayz, @cqrzy, @star

    game: Bedwarz
]]

local Pineapple = loadstring(readfile('pineapple/gui/pineapple.lua'))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingChairV4/pineapple/refs/heads/main/gui/pineapple.lua"))()

local MainUI = Library:CreateMain({
	TextCharacters = 10,
	Toggle = "RightShift",
	
})

local Combat = Library:CreateTab({
	Text = "Combat",
	Image = "rbxassetid://0",
	ImageColor = Color3.fromRGB(0,0,0)
})

local toggle1 = tab1:CreateToggle({
	Name = "Name of the toggle",
	ToolTipText = "Tool Tip Text of the toggle",
	Keybind = "The keybind Default: None",
	Enabled = true,
	AutoDisable = false,
	AutoEnable = false,
	Hide = false,
	Callback = function(callback)
	-- callback is a bool if the toggle is toggled true / false ---
	if callback then
	print("Active")
    Library:notif("Pineapple","Active", 15, "info")
	else
	print("Not active")
        Library:notif("Pineapple","Not active", 3, "info")
		end
	end,
})
