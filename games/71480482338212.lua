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
        Library:notif("Pineapple","Executed properly!", 3, "info")


local Killaura = Combat:CreateToggle({
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
        Library:notif("Pineapple","Enabled Killaura", 3, "info")
    else
    print("Not active")
        Library:notif("Pineapple","Disabled Killaura", 3, "info")
        end
    end,
})

local Uninject = Combat:CreateToggle({
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
