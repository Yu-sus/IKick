-- IKick (Made by Yusus (MotoboyDosScripts))
-- Feel free to use my source on your own project(s)

-- Remember this script was made for version 1.6.64-fix of WindUI and V500-610 of "Kick a Lucky Block" so it does not have bypass protection because of no need to bypass if you are using a higher version than 610 i could cause bans

local maxVersion = 611 -- If you are updating this script for a new version of Kick a Lucky Block, please update this number as well.

--[[ To get the PlaceVersion:
    game.PlaceVersion

    ---lua
    setclipboard(game.PlaceVersion)
    ---
]]

if _G.IKick == true then
    warn("IKick is already loaded.")
    return
end

_G.IKick = true

local _version = "1.6.64-fix"
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/download/" ..
    _version .. "/main.lua"))()

-- cprint Loader
local cprint;
do
    local Modules = {
        Colors = {
            ["White"] = "255,255,255",
            ["Black"] = "0,0,0",
            ["Red"] = "255,0,0",
            ["Green"] = "0,255,0",
            ["Blue"] = "0,0,255",
            ["Yellow"] = "255,255,0",
            ["Cyan"] = "0,255,255",
            ["Magenta"] = "255,0,255",
            ["Orange"] = "255,165,0",
            ["Purple"] = "128,0,128",
            ["Pink"] = "255,192,203",
            ["Brown"] = "165,42,42",
            ["Gray"] = "128,128,128",
            ["LightBlue"] = "173,216,230",
            ["Lime"] = "50,205,50",
            ["Gold"] = "255,215,0",
            ["Silver"] = "192,192,192",
            ["Maroon"] = "128,0,0",
            ["Olive"] = "128,128,0",
            ["Teal"] = "0,128,128",
            ["Navy"] = "0,0,128",
            ["Coral"] = "255,127,80",
            ["Tomato"] = "255,99,71",
            ["Violet"] = "238,130,238",
            ["Indigo"] = "75,0,130",
            ["Turquoise"] = "64,224,208",
            ["Salmon"] = "250,128,114",
            ["Khaki"] = "240,230,140",
            ["Plum"] = "221,160,221",
            ["Crimson"] = "220,20,60",
            ["DarkRed"] = "139,0,0",
            ["FireBrick"] = "178,34,34",
            ["IndianRed"] = "205,92,92",
            ["LightCoral"] = "240,128,128",
            ["DarkOrange"] = "255,140,0",
            ["OrangeRed"] = "255,69,0",
            ["GoldenRod"] = "218,165,32",
            ["DarkGoldenRod"] = "184,134,11",
            ["YellowGreen"] = "154,205,50",
            ["ForestGreen"] = "34,139,34",
            ["SeaGreen"] = "46,139,87",
            ["DarkCyan"] = "0,139,139",
            ["DeepSkyBlue"] = "0,191,255",
            ["DodgerBlue"] = "30,144,255",
            ["RoyalBlue"] = "65,105,225",
            ["SlateBlue"] = "106,90,205",
            ["MediumPurple"] = "147,112,219",
            ["DarkViolet"] = "148,0,211",
            ["HotPink"] = "255,105,180",
            ["AliceBlue"] = "240,248,255",
            ["AntiqueWhite"] = "250,235,215",
            ["Aqua"] = "0,255,255",
            ["Aquamarine"] = "127,255,212",
            ["Azure"] = "240,255,255",
            ["Beige"] = "245,245,220",
            ["Bisque"] = "255,228,196",
            ["BlanchedAlmond"] = "255,235,205",
            ["BlueViolet"] = "138,43,226",
            ["BurlyWood"] = "222,184,135",
            ["CadetBlue"] = "95,158,160",
            ["Chartreuse"] = "127,255,0",
            ["Chocolate"] = "210,105,30",
            ["CornflowerBlue"] = "100,149,237",
            ["Cornsilk"] = "255,248,220",
            ["DarkBlue"] = "0,0,139",
            ["DarkGreen"] = "0,100,0",
            ["DarkKhaki"] = "189,183,107",
            ["DarkMagenta"] = "139,0,139",
            ["DarkOliveGreen"] = "85,107,47",
            ["DarkOrchid"] = "153,50,204",
            ["DarkSalmon"] = "233,150,122",
            ["DarkSeaGreen"] = "143,188,143",
            ["DarkSlateBlue"] = "72,61,139",
            ["DarkSlateGray"] = "47,79,79",
            ["DarkTurquoise"] = "0,206,209",
            ["DeepPink"] = "255,20,147",
            ["DimGray"] = "105,105,105",
            ["DodgerBlue"] = "30,144,255",
            ["FireBrick"] = "178,34,34",
            ["FloralWhite"] = "255,250,240",
            ["ForestGreen"] = "34,139,34",
            ["Fuchsia"] = "255,0,255",
            ["Gainsboro"] = "220,220,220",
            ["GhostWhite"] = "248,248,255",
            ["Gold"] = "255,215,0",
            ["Goldenrod"] = "218,165,32",
            ["GreenYellow"] = "173,255,47",
            ["HoneyDew"] = "240,255,240",
            ["HotPink"] = "255,105,180",
            ["IndianRed"] = "205,92,92",
            ["Indigo"] = "75,0,130",
            ["Ivory"] = "255,255,240",
            ["Khaki"] = "240,230,140",
            ["Lavender"] = "230,230,250",
            ["LavenderBlush"] = "255,240,245",
            ["LawnGreen"] = "124,252,0",
            ["LemonChiffon"] = "255,250,205",
            ["LightBlue"] = "173,216,230",
            ["LightCoral"] = "240,128,128",
            ["LightCyan"] = "224,255,255",
            ["LightGoldenrodYellow"] = "250,250,210",
            ["LightGray"] = "211,211,211",
            ["LightGreen"] = "144,238,144",
            ["LightPink"] = "255,182,193",
            ["LightSalmon"] = "255,160,122",
            ["LightSeaGreen"] = "32,178,170",
            ["LightSkyBlue"] = "135,206,250",
            ["LightSlateGray"] = "119,136,153",
            ["LightSteelBlue"] = "176,196,222",
            ["LightYellow"] = "255,255,224",
            ["LimeGreen"] = "50,205,50",
            ["Linen"] = "250,240,230",
            ["Magenta"] = "255,0,255",
            ["Maroon"] = "128,0,0",
            ["MediumAquamarine"] = "102,205,170",
            ["MediumBlue"] = "0,0,205",
            ["MediumOrchid"] = "186,85,211",
            ["MediumSeaGreen"] = "60,179,113",
            ["MediumSlateBlue"] = "123,104,238",
            ["MediumSpringGreen"] = "0,250,154",
            ["MediumTurquoise"] = "72,209,204",
            ["MediumVioletRed"] = "199,21,133",
            ["MidnightBlue"] = "25,25,112",
            ["MintCream"] = "245,255,250",
            ["MistyRose"] = "255,228,225",
            ["Moccasin"] = "255,228,181",
            ["NavajoWhite"] = "255,222,173",
            ["OldLace"] = "253,245,230",
            ["Olive"] = "128,128,0",
            ["OliveDrab"] = "107,142,35",
            ["Orange"] = "255,165,0",
            ["Orchid"] = "218,112,214",
            ["PaleGoldenrod"] = "238,232,170",
            ["PaleGreen"] = "152,251,152",
            ["PaleTurquoise"] = "175,238,238",
            ["PaleVioletRed"] = "219,112,147",
            ["PapayaWhip"] = "255,239,213",
            ["PeachPuff"] = "255,218,185",
            ["Peru"] = "205,133,63",
            ["Pink"] = "255,192,203",
            ["Plum"] = "221,160,221",
            ["PowderBlue"] = "176,224,230",
            ["RosyBrown"] = "188,143,143",
            ["RoyalBlue"] = "65,105,225",
            ["SaddleBrown"] = "139,69,19",
            ["SandyBrown"] = "244,164,96",
            ["SeaGreen"] = "46,139,87",
            ["SeaShell"] = "255,245,238",
            ["Sienna"] = "160,82,45",
            ["SkyBlue"] = "135,206,235",
            ["SlateBlue"] = "106,90,205",
            ["SlateGray"] = "112,128,144",
            ["Snow"] = "255,250,250",
            ["SpringGreen"] = "0,255,127",
            ["SteelBlue"] = "70,130,180",
            ["Tan"] = "210,180,140",
            ["Thistle"] = "216,191,216",
            ["Tomato"] = "255,99,71",
            ["Turquoise"] = "64,224,208",
            ["Violet"] = "238,130,238",
            ["Wheat"] = "245,222,179",
            ["WhiteSmoke"] = "245,245,245",
            ["YellowGreen"] = "154,205,50",
            ["Amaranth"] = "229,43,80",
            ["Amber"] = "255,191,0",
            ["Apricot"] = "251,206,177",
            ["Aqua"] = "0,255,255",
            ["Aquamarine"] = "127,255,212",
            ["Asparagus"] = "135,169,107",
            ["Auburn"] = "165,42,42",
            ["Azure"] = "240,255,255",
            ["BabyBlue"] = "137,207,240",
            ["Beige"] = "245,245,220",
            ["Bisque"] = "255,228,196",
            ["Bittersweet"] = "254,111,94",
            ["Black"] = "0,0,0",
            ["Blush"] = "222,93,131",
            ["Brass"] = "181,166,66",
            ["Bronze"] = "205,127,50",
            ["Brown"] = "165,42,42",
            ["Burgundy"] = "128,0,32",
            ["Byzantium"] = "112,41,99",
            ["Cardinal"] = "196,30,58",
            ["Carmine"] = "150,0,24",
            ["Carnation"] = "255,166,201",
            ["Celadon"] = "172,225,175",
            ["Cerise"] = "222,49,99",
            ["Cerulean"] = "0,123,167",
            ["Champagne"] = "247,231,206",
            ["Charcoal"] = "54,69,79",
            ["Chartreuse"] = "127,255,0",
            ["Cherry"] = "222,49,99",
            ["Chestnut"] = "149,69,53",
            ["Chocolate"] = "123,63,0",
            ["Cinnabar"] = "227,66,52",
            ["Cinnamon"] = "210,105,30",
            ["Cobalt"] = "0,71,171",
            ["Coffee"] = "111,78,55",
            ["Copper"] = "184,115,51",
            ["Coral"] = "255,127,80",
            ["Cordovan"] = "137,63,69",
            ["Cornflower"] = "100,149,237",
            ["Cream"] = "255,253,208",
            ["Crimson"] = "220,20,60",
            ["Cyan"] = "0,255,255",
            ["Damask"] = "218,128,103",
            ["Denim"] = "21,96,189",
            ["Ebony"] = "85,93,80",
            ["Ecru"] = "194,178,128",
            ["Eggplant"] = "97,64,81",
            ["Eggshell"] = "240,234,214",
            ["Emerald"] = "80,200,120",
            ["FaluRed"] = "128,24,24",
            ["Fandango"] = "181,51,137",
            ["Fuchsia"] = "255,0,255",
            ["Gamboge"] = "228,155,15",
            ["Gold"] = "255,215,0",
            ["Goldenrod"] = "218,165,32",
            ["Green"] = "0,255,0",
            ["Grey"] = "128,128,128",
            ["Harlequin"] = "63,255,0",
            ["Heliotrope"] = "223,115,255",
            ["Honeydew"] = "240,255,240",
            ["Indigo"] = "75,0,130",
            ["Ivory"] = "255,255,240",
            ["Jade"] = "0,168,107",
            ["Jasmine"] = "248,222,126",
            ["Jet"] = "52,52,52",
            ["Khaki"] = "195,176,145",
            ["Lavender"] = "230,230,250",
            ["Lemon"] = "255,247,0",
            ["Lilac"] = "200,162,200",
            ["Lime"] = "191,255,0",
            ["Linen"] = "250,240,230",
            ["Magenta"] = "255,0,255",
            ["Magnolia"] = "248,244,255",
            ["Malachite"] = "11,218,81",
            ["Maroon"] = "128,0,0",
            ["Mauve"] = "224,176,255",
            ["Mint"] = "62,180,137",
            ["Moccasin"] = "250,235,215",
            ["Moss"] = "138,154,91",
            ["Mustard"] = "255,219,88",
            ["Myrtle"] = "33,66,48",
            ["Navy"] = "0,0,128",
            ["Ochre"] = "204,119,34",
            ["Olive"] = "128,128,0",
            ["Orange"] = "255,165,0",
            ["Orchid"] = "218,112,214",
            ["Peach"] = "255,229,180",
            ["Pear"] = "209,226,49",
            ["Periwinkle"] = "204,204,255",
            ["Platinum"] = "229,228,226",
            ["Plum"] = "142,69,133",
            ["Puce"] = "204,136,153",
            ["Pumpkin"] = "255,117,24",
            ["Purple"] = "128,0,128",
            ["Raspberry"] = "227,11,93",
            ["Red"] = "255,0,0",
            ["Rose"] = "255,0,127",
            ["Ruby"] = "224,17,95",
            ["Salmon"] = "250,128,114",
            ["Sapphire"] = "15,82,186",
            ["Scarlet"] = "255,36,0",
            ["Sepia"] = "112,66,20",
            ["Silver"] = "192,192,192",
            ["Tan"] = "210,180,140",
            ["Tangerine"] = "242,133,0",
            ["Teal"] = "0,128,128",
            ["Thistle"] = "216,191,216",
            ["Tomato"] = "255,99,71",
            ["Turquoise"] = "64,224,208",
            ["Ultramarine"] = "18,10,143",
            ["Vermilion"] = "227,66,52",
            ["Violet"] = "238,130,238",
            ["Viridian"] = "64,130,109",
            ["Wheat"] = "245,222,179",
            ["White"] = "255,255,255",
            ["Wisteria"] = "201,160,220",
            ["Xanthic"] = "238,237,27",
            ["Zinc"] = "194,202,208",
        }
    }

    local function color3ToRgb(color3)
        local r = math.floor(color3.R * 255)
        local g = math.floor(color3.G * 255)
        local b = math.floor(color3.B * 255)
        return string.format("%d,%d,%d", r, g, b)
    end

    Modules.ChangeColor = function()
        game:GetService("RunService").Heartbeat:Connect(function()
            if game:GetService("CoreGui"):FindFirstChild("DevConsoleMaster") then
                for _, v in pairs(game:GetService("CoreGui"):FindFirstChild("DevConsoleMaster"):GetDescendants()) do
                    if v:IsA("TextLabel") then
                        v.RichText = true
                    end
                end
            end
        end)
    end

    cprint = function(text, color, size)
        local rgbString

        if not color then
            rgbString = "255,255,255"
        elseif type(color) == "string" then
            if not Modules.Colors[color] then
                rgbString = "255,255,255"
            else
                rgbString = Modules.Colors[color]
            end
        elseif type(color) == "userdata" and color.R and color.G and color.B then
            rgbString = color3ToRgb(color)
        else
            rgbString = "255,255,255"
        end

        local Text = '<font color="rgb(' .. rgbString .. ')"'
        if size then
            Text = Text .. ' size="' .. tostring(size) .. '"'
        end
        Text = Text .. '>' .. tostring(text) .. '</font>'
        print(Text)
    end

    Modules.ChangeColor()

    cprint("Custom Print Loaded.", "Lime")
end

if game.GameId ~= 10004244222 then
    cprint("Invalid Game.", "Red")
    return
end

local s, r = pcall(function()
    local _IKick = {
        Version = "1.0.0",
        IsModified = false, -- if you will modify IKick set this to true or just do whatever you want
    }

    if game.PlaceVersion >= maxVersion then
        cprint(
            "Please note that this script was made for an older version of \"Kick a Lucky Block\". IKick ~ v" ..
            _IKick.Version, "Yellow")
    end

    local _info = false
    local info = function(t)
        if _info then
            return cprint("[Info]: " .. tostring(t), "Copper")
        end
    end

    local Players = game:GetService("Players")
    local VirtualInputManager = game:GetService("VirtualInputManager") -- sem bypass
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Workspace = game:GetService("Workspace")
    local player = Players.LocalPlayer
    local camera = Workspace.CurrentCamera

    if not hookmetamethod or not getnamecallmethod then
        info("Exploit does not support 100% compatibility.", "Red")
    end

    local _script = {
        Map = {
            ["KickReady"] = Workspace.Areas.KickReady,
            ["PlayerPlot"] = function()
                for _, plot in ipairs(game:GetService("Workspace").Plots:GetChildren()) do
                    if plot:GetAttribute("Owner") == player.Name then
                        return plot
                    end
                end
            end,
        },
        Events = {
            Kick = game:GetService("ReplicatedStorage").Shared.Packages.Network.rev_KickEvent,
            TaviMishkal = game:GetService("ReplicatedStorage").Shared.Packages.Network.rev_TaviMishkal,
        }
    }

    local values = {
        Main = {
            pk = false,
            farms = {
                AutoFarm = true,
            },
            webhook = false,
            webhookLink = "",
            misc = {
                extrastacks = false,
                autocol = false,
                antiafk = true,
            }
        },
    }

    local funcs = {
        main = {
            autofarm = function(v)
                info("Called autofarm at funcs/main/autofarm with " .. tostring(v))
                values.Main.farms.AutoFarm = v

                local pos = _script.Map.KickReady.Position

                local function ttp(pos, dur)
                    local char = player.Character or player.CharacterAdded:Wait()
                    local startPos = char:GetPivot().Position
                    local startTime = tick()

                    while tick() - startTime < dur do
                        if not values.Main.farms.AutoFarm then return end
                        if not player.Character then return end

                        local alpha = (tick() - startTime) / dur
                        char:PivotTo(CFrame.new(startPos:Lerp(pos, alpha)))
                        task.wait()
                    end

                    if char then
                        char:PivotTo(CFrame.new(pos))
                    end
                end

                local function mud(pos, dist)
                    dist = dist or 9
                    local char = player.Character or player.CharacterAdded:Wait()
                    local hrp = char:WaitForChild("HumanoidRootPart")
                    local hum = char:WaitForChild("Humanoid")

                    hum:MoveTo(pos)

                    while (hrp.Position - pos).Magnitude > dist do
                        if not values.Main.farms.AutoFarm then return end
                        if hum.Health <= 0 then return end
                        if not player.Character then return end

                        hum:MoveTo(pos)
                        task.wait(0.2)
                    end

                    hum:MoveTo(hrp.Position)
                end

                local function gethumcam()
                    while values.Main.farms.AutoFarm do
                        if camera.CameraSubject and camera.CameraSubject:IsA("Humanoid") then
                            break
                        end
                        task.wait(0.1)
                    end
                end

                while values.Main.farms.AutoFarm do
                    local char = player.Character or player.CharacterAdded:Wait()
                    local hum = char:FindFirstChildOfClass("Humanoid")

                    if not char or not hum or hum.Health <= 0 then
                        player.CharacterAdded:Wait()
                    end

                    ttp(pos, 1)
                    task.wait(0.3)

                    gethumcam()
                    task.wait(0.2)

                    if not values.Main.farms.AutoFarm then break end
                    if not player.Character or hum.Health <= 0 then
                        task.wait(0.2)
                    else
                        _script.Events.Kick:FireServer(1, 1)
                        task.wait(0.4)

                        if values.Main.farms.AutoFarm and hum.Health > 0 then
                            mud(pos + Vector3.new(0, 0, -8), 9)
                        end
                    end

                    task.wait(1)
                end
            end,

            webhook = function(v, link)
                info("Called webhook at funcs/main/webhook with " .. tostring(v) .. "hiddenlink")
                values.Main.webhook = v
                values.Main.webhookLink = link

                _script.Events.Kick.OnClientEvent:Connect(function(...)
                    if values.Main.webhook and values.Main.webhookLink ~= "" then
                        local args = { ... }
                        if typeof(args[2]) == "table" then
                            local bname      = args[2][1].Name
                            local bmutations = args[2][1].Mutation

                            local payload    = {
                                embeds = { {
                                    title = "Brainrot Spawned!",
                                    description = "**Name:** " ..
                                        tostring(bname) .. "\n**Mutation:** " .. tostring(bmutations) or "None",
                                    color = 16711680,
                                    footer = { text = "IKick - Open source, free and keyless" }
                                } }
                            }

                            pcall(function()
                                request({
                                    Url = values.Main.webhookLink,
                                    Method = "POST",
                                    Headers = {
                                        ["Content-Type"] = "application/json"
                                    },
                                    Body = game:GetService("HttpService"):JSONEncode(payload)
                                })
                            end)
                        end
                    end
                end)
            end,

            extrastacks = function(v)
                info("Called extrastacks at funcs/main with " .. tostring(v))
                values.Main.misc.extrastacks = v

                while values.Main.misc.extrastacks do
                    _script.Events.TaviMishkal:FireServer(1, 1)
                    task.wait(0.1)
                end
            end,

            pk = function(v)
                info("Called pk at funcs/main with " .. tostring(v))

                assert(hookmetamethod, "Invalid exec missing: hookmetamethod")
                assert(getnamecallmethod, "Invalid exec missing: getnamecallmethod")

                if values.pkHooked then
                    values.pkEnabled = v
                    return
                end

                values.pkEnabled = v
                values.pkHooked = true

                local old
                old = hookmetamethod(game, "__namecall", function(self, ...)
                    local method = getnamecallmethod()

                    if values.pkEnabled
                        and rawequal(self, _script.Events.Kick)
                        and method == "FireServer" then
                        info("Here i am (funcs/main)")

                        local args = { ... }

                        if #args >= 1 then
                            args[1] = 1
                        end

                        return old(self, table.unpack(args))
                    end

                    return old(self, ...)
                end)
            end,

            autocol = function(v)
                info("Called autocol at funcs/main")
                info("Plot is: " .. tostring(_script.Map.PlayerPlot()) or "Plot not found.")

                values.Main.misc.autocol = v
                local s, r = pcall(function()
                    while values.Main.misc.autocol do
                        local plot = _script.Map.PlayerPlot()
                        assert(plot, "Error P1P3: Invalid plot or Plot not found.")

                        local player = game:GetService("Players").LocalPlayer
                        local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

                        for _, col in ipairs(plot.Buttons:GetChildren()) do
                            if col:IsA("BasePart") then
                                firetouchinterest(hrp, col, 0)
                                task.wait()
                                firetouchinterest(hrp, col, 1)
                                task.wait(0.3)
                            end
                        end
                        task.wait(0.1)
                    end
                end)

                if not s then
                    cprint("funcs/main/autocol debug Error: " .. tostring(r), "Red") -- Debug especial pq sim
                end
            end,

            antiafk = function(v)
                info("Called antiafk at funcs/main with " .. tostring(v))
                values.Main.misc.antiafk = v
                while values.Main.misc.antiafk do
                    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Unknown, false, game)
                    task.wait(30)
                end
            end,
        },
    }

    cprint("started loading script...", "Yellow")
    info("Using WindUI v" .. tostring(_version))

    local Window = WindUI:CreateWindow({
        Title = "IKick",
        Icon = "box",
        Transparent = true,
        Author = "by MotoboyDosScripts",
    })

    WindUI:SetTheme("Indigo")
    info("SetTheme for windui")

    local tab1 = Window:Tab({
        Title = "Main",
        Icon = "bubbles",
    })

    Window:Tag({
        Title = "V" .. _IKick.Version,
        Color = Color3.fromRGB(250, 128, 114)
    })

    if _IKick.IsModified then
        Window:Tag({
            Title = "Modified",
            Icon = "circle-fading-plus",
            Color = Color3.fromRGB(255, 165, 0)
        })
    end

    local Farm = tab1:Section({
        Title = "Farm"
    })

    local Brainrot = tab1:Section({
        Title = "Brainrots"
    })

    local Misc = tab1:Section({
        Title = "Misc"
    })

    Brainrot:Toggle({
        Title = "Webhook",
        Callback = function(state)
            funcs.main.webhook(state)
        end
    })

    Brainrot:Input({
        Title = "Webhook Link",
        Callback = function(text)
            values.Main.webhookLink = text
        end
    })

    Farm:Toggle({
        Title = "Auto Farm",
        Callback = function(state)
            funcs.main.autofarm(state)
        end
    })



    if hookmetamethod and getnamecallmethod then
        Misc:Toggle({
            Title = "Perfect Kick",
            Callback = function(state)
                funcs.main.pk(state)
            end
        })

        Misc:Toggle({
            Title = "x2 Stacks",
            Callback = function(state)
                funcs.main.extrastacks(state)
            end
        })

        Misc:Toggle({
            Title = "Auto Collect",
            Callback = function(state)
                funcs.main.autocol(state)
            end
        })

        Misc:Toggle({
            Title = "Anti-AFK",
            Value = true,
            Callback = function(state)
                funcs.main.antiafk(state)
            end
        })
    end

    Window:SetToggleKey(Enum.KeyCode.RightControl)

    Window:OnDestroy(function()
        _G.IKick = false
        info("User is closing the ui.")
        funcs.main.autocol(false)
        funcs.main.extrastacks(false)
        funcs.main.pk(false)
        funcs.main.autofarm(false)
        funcs.main.webhook(false)
    end)
    cprint("script loaded successfully.", "Green")
end)

if not s then
    cprint("runtime error: " .. tostring(r), "Red")
end
