--[[

    pineapple 🍍
    by @stav, @sus, @GamingChairV4, @DaiPlayz, @cqrzy, @star

    game: Bedwarz 3
]]

local Pineapple = loadstring(readfile('pineapple/gui/pineapple.lua'))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingChairV4/pineapple/refs/heads/main/gui/pineapple.lua"))()

local main = Pineapple:CreateMain({
    textCharacters = 10,
    Toggle = "RightShift",
})

local tabs = {
    Combat = main :CreateTab({
        Text = 'Combat',
        Icon = 'rbxassetid://138185990548352',
        ImageColor = Color3.fromRGB(255, 255, 255)
    }),
    Exploit = main:CreateTab({
        Text = 'Exploit',
        Icon = 'rbxassetid://71954798465945',
        ImageColor = Color3.fromRGB(255, 255, 255)
    }),
    Move = main :CreateTab({
        Text = 'Move',
        Icon = 'rbxassetid://91366694317593',
        ImageColor = Color3.fromRGB(255, 255, 255)
    }),
    Player = main:CreateTab({
        Text = 'Player',
        Icon = 'rbxassetid://103157697311305',
        ImageColor = Color3.fromRGB(255, 255, 255)
    }),
    Visual = main:CreateTab({
        Text = 'Visual',
        Icon = 'rbxassetid://118420030502964',
        ImageColor = Color3.fromRGB(255, 255, 255)
    }),
    World = main:CreateTab({
        Text = 'World',
        Icon = 'rbxassetid://76313147188124',
        ImageColor = Color3.fromRGB(255, 0, 0)
    })
}

do
    local Speed
    Speed = tabs.Move:CreateToggle({
        Name = 'Speed',
        Function = function(callback)
            if callback then
                repeat
                    lplr.Character.Humanoid.WalkSpeed = 23
                    task.wait()
                until not callback
            else
                lplr.Character.Humanoid.WalkSpeed = 16
            end
        end,
        ToolTipText = 'Increases your speed'
    })
end

Library:notif("Pineapple","Executed properly!", 3, "info")


local Killaura = tabs.Combat:CreateToggle({
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

local Uninject = tabs.Player:CreateToggle({
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
