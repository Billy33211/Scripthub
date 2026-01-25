--==================================
-- Otaku Script Hub (Junkie Key System, Async)
--==================================

-- Anti-spam / cooldown helper
local Cooldown = false
local function SafeRun(func)
    if Cooldown then return end
    Cooldown = true
    task.spawn(func)
    task.delay(1.5, function() Cooldown = false end)
end

-- Async Junkie Loader
task.spawn(function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/150ec4d5189d200c0dca31805f00c38447e7e724743894f325fe60ec769f0a8d/download"))()
    end)

    if not success then
        warn("Junkie Loader Error:", err)
        return
    end

    -- Only setup UI after key system loads successfully
    setupHubUI()
end)

-- Main UI setup function
function setupHubUI()
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "Otaku Script Hub",
        Icon = "Home",
        LoadingTitle = "Rayfield Interface Suite",
        LoadingSubtitle = "by Otaku",
        ShowText = "Rayfield",
        Theme = "Ocean",
        ToggleUIKeybind = "K",
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "OtakuHubConfigs",
            FileName = "BigHub"
        },
        Discord = {
            Enabled = true,
            Invite = "nHhqreAUzZ",
            RememberJoins = false
        }
    })

    -- ========================
    -- CREATE TABS
    -- ========================
    local HomeTab = Window:CreateTab("🏠 Home", "Home")
    local GamesTab = Window:CreateTab("🎮 Games", "Gamepad")
    local UniversalTab = Window:CreateTab("🌐 Universal", "Eye")
    local AdminTab = Window:CreateTab("🛠 Admin", "Settings")
    local CommunityTab = Window:CreateTab("👥 Community", "Users")

    -- ========================
    -- HOME TAB CONTENT
    -- ========================
    HomeTab:CreateSection("Hub Info")
    HomeTab:CreateLabel("👋 Welcome to Otaku Script Hub!")
    HomeTab:CreateLabel("Use the tabs to access all scripts and tools.")
    HomeTab:CreateLabel("Discord invite auto-copied to your clipboard 👀")
    HomeTab:CreateLabel("💡 Tip: Click a script button to load it safely with cooldowns!")

    HomeTab:CreateButton({
        Name = "🎉 Show Welcome Message",
        Callback = function()
            Rayfield:Notify({
                Title = "Hello Player!",
                Content = "Enjoy Otaku Script Hub 😎",
                Duration = 5,
                Image = 4483362458
            })
        end,
    })

    HomeTab:CreateButton({
        Name = "🔑 Get Key",
        Callback = function()
            setclipboard("YOUR_WORKINK_OR_LINKVERTISE_LINK")
            Rayfield:Notify({
                Title = "Copied!",
                Content = "Key link copied to clipboard!",
                Duration = 4
            })
        end
    })

    HomeTab:CreateButton({
        Name = "📋 Copy Discord Invite",
        Callback = function()
            setclipboard("https://discord.gg/nHhqreAUzZ")
            Rayfield:Notify({
                Title = "Discord Copied",
                Content = "Invite link copied to clipboard!",
                Duration = 4
            })
        end
    })

    -- ========================
    -- GAMES TAB
    -- ========================
    GamesTab:CreateSection("Game Scripts")
    GamesTab:CreateButton({
        Name = "🪖⚔️ BMR5",
        Callback = function()
            SafeRun(function()
                task.spawn(function()
                    local success, err = pcall(function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuyformscriptROBLOX/bhmr5-script/refs/heads/main/script.lua"))()
                    end)
                    if not success then
                        Rayfield:Notify({Title="Error", Content=tostring(err), Duration=5})
                    end
                end)
            end)
        end
    })

    GamesTab:CreateButton({
        Name = "🔪 MM2",
        Callback = function()
            SafeRun(function()
                task.spawn(function()
                    local success, err = pcall(function()
                        loadstring(game:HttpGet('https://raw.smokingscripts.org/vertex.lua'))()
                    end)
                    if not success then
                        Rayfield:Notify({Title="Error", Content=tostring(err), Duration=5})
                    end
                end)
            end)
        end
    })

    GamesTab:CreateButton({
        Name = "👮‍♂️ Valley Prison",
        Callback = function()
            SafeRun(function()
                task.spawn(function()
                    local success, err = pcall(function()
                        loadstring(game:HttpGet("https://api.lasion.world/loader"))()
                    end)
                    if not success then
                        Rayfield:Notify({Title="Error", Content=tostring(err), Duration=5})
                    end
                end)
            end)
        end
    })

    GamesTab:CreateButton({
        Name = "🌳🌲 99 Nights in the Forest",
        Callback = function()
            SafeRun(function()
                task.spawn(function()
                    local success, err = pcall(function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/loader.lua", true))()
                    end)
                    if not success then
                        Rayfield:Notify({Title="Error", Content=tostring(err), Duration=5})
                    end
                end)
            end)
        end
    })

    -- ========================
    -- UNIVERSAL TAB
    -- ========================
    UniversalTab:CreateSection("Universal Scripts")
    UniversalTab:CreateButton({
        Name = "🌐 Universal ESP",
        Callback = function()
            SafeRun(function()
                task.spawn(function()
                    local success, err = pcall(function()
                        getgenv().script = "https://github.com/danya2854/Myscripts/raw/refs/heads/main/WallHack"
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/danya2854/Myscripts/refs/heads/main/loader"))()
                    end)
                    if not success then
                        Rayfield:Notify({Title="Error", Content=tostring(err), Duration=5})
                    end
                end)
            end)
        end
    })

    -- ========================
    -- ADMIN TAB
    -- ========================
    AdminTab:CreateSection("Admin Tools")
    AdminTab:CreateButton({
        Name = "Infinite Yield",
        Callback = function()
            SafeRun(function()
                task.spawn(function()
                    local success, err = pcall(function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
                    end)
                    if not success then
                        Rayfield:Notify({Title="Error", Content=tostring(err), Duration=5})
                    end
                end)
            end)
        end
    })

    -- ========================
    -- COMMUNITY TAB
    -- ========================
    CommunityTab:CreateSection("Community Links")
    CommunityTab:CreateButton({
        Name = "📎 Copy Discord Invite",
        Callback = function()
            SafeRun(function()
                setclipboard("https://discord.gg/nHhqreAUzZ")
                Rayfield:Notify({Title="Discord Copied", Content="Invite link copied!", Duration=4})
            end)
        end
    })

    -- ========================
    -- FINAL LOAD NOTIFICATION
    -- ========================
    Rayfield:Notify({
        Title = "Script Hub Loaded",
        Content = "Otaku Script Hub is ready to use!",
        Duration = 5,
        Image = 4483362458
    })
end
