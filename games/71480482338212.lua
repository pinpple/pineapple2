--[[

    pineapple 🍍
    by @stav, @sus, @GamingChairV4, @DaiPlayz, @cqrzy, @star

    game: Bedwarz 3
]]

local Pineapple = loadstring(readfile('pineapple/gui/pineapple.lua'))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingChairV4/pineapple/refs/heads/main/gui/pineapple.lua"))()

local MainUI = Library:CreateMain({
    TextCharacters = 10,
    Toggle = "RightShift",

})

local Combat = MainUI:CreateTab({
    Text = "Combat",
    Image = "rbxassetid://138185990548352",
    ImageColor = Color3.fromRGB(0,0,0)
})

local Blatant = MainUI:CreateTab({
    Text = "Blatant",
    Image = "rbxassetid://138185990548352",
    ImageColor = Color3.fromRGB(0,0,0)
})

local Player = MainUI:CreateTab({
    Text = "Player",
    Image = "rbxassetid://138185990548352",
    ImageColor = Color3.fromRGB(0,0,0)
})

local Movement = MainUI:CreateTab({
    Text = "Movement",
    Image = "rbxassetid://138185990548352",
    ImageColor = Color3.fromRGB(0,0,0)
})

local Utility = MainUI:CreateTab({
    Text = "Utility",
    Image = "rbxassetid://138185990548352",
    ImageColor = Color3.fromRGB(0,0,0)
})
        Library:notif("Pineapple","Executed properly!", 3, "info")
        Library:notif("Pineapple","This script is in BETA & some functions are broken.", 15, "info")



local Killaura = Utility:CreateToggle({
    Name = "Killaura",
    ToolTipText = "Made possible by @stav",
    Keybind = "None",
    Enabled = false,
    AutoDisable = false,
    AutoEnable = false,
    Hide = false,
    Callback = function(callback)
    -- callback is a bool if the toggle is toggled true / false ---
    if callback then
    print("Active")
        Library:notif("Pineapple","Enabled killaura", 3, "info")
    else
    print("Not active")
        Library:notif("Pineapple","Disabled Killaura", 3, "info")
        end
    end,
})

local Uninject = Utility:CreateToggle({
    Name = "Uninject",
    ToolTipText = "Uninject pineapple from your client.",
    Keybind = "None",
    Enabled = false,
    AutoDisable = false,
    AutoEnable = false,
    Hide = false,
    Callback = function(callback)
    -- callback is a bool if the toggle is toggled true / false ---
    if callback then
    print("Active")
        Library:notif("Pineapple","Working on uninject...", 3, "info")
        task.wait(4)
        Library:Uninject()
    else
    print("Not active")
        Library:notif("Pineapple","Uninjected", 3, "info")
        end
    end,
})
