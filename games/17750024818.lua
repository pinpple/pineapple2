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
