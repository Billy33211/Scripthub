local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- ========================
-- CREATE WINDOW
-- ========================
local Window = Rayfield:CreateWindow({
    Name = "Otaku Script Hub",
    Icon = "Home", -- Lucide icon
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by Otaku",
    ShowText = "Rayfield",
    Theme = "Ocean", -- Custom theme
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
    },
    KeySystem = false,
    KeySettings = {
        Title = "Script Hub Key",
        Subtitle = "Key System",
        Note = "Join the discord (discord.gg/nHhqreAUzZ)",
        FileName = "OtakuKeystyem",
        SaveKey = true,
        GrabKeyFromSite = true,
        Key = {"https://pastebin.com/raw/NyHDKDwj"}
    }
})

-- ========================
-- ANTI-SPAM / COOLDOWN
-- ========================
local Cooldown = false
local function SafeRun(func)
    if Cooldown then return end
    Cooldown = true
    task.spawn(func)
    task.delay(1.5, function()
        Cooldown = false
    end)
end

-- ========================
-- AUTO DISCORD COPY ON LOAD
-- ========================
if not getgenv().DiscordCopied then
    getgenv().DiscordCopied = true
    pcall(function()
        setclipboard("https://discord.gg/nHhqreAUzZ")
    end)
    Rayfield:Notify({
        Title = "Welcome 👋",
        Content = "Discord invite copied to clipboard!",
        Duration = 6,
        Image = 4483362458
    })
end

-- ========================
-- CREATE TABS
-- ========================
local HomeTab = Window:CreateTab("🏠 Home", "Home")
local GamesTab = Window:CreateTab("🎮 Games", "Gamepad")
local UniversalTab = Window:CreateTab("🌐 Universal", "Eye")
local AdminTab = Window:CreateTab("🛠 Admin", "Settings")
local CommunityTab = Window:CreateTab("👥 Community", "Users")

-- ========================
-- SECTIONS
-- ========================
HomeTab:CreateSection("Hub Info")
HomeTab:CreateLabel("Welcome to Otaku Script Hub!")
HomeTab:CreateLabel("Use the tabs to access all scripts and tools.")
HomeTab:CreateLabel("Discord invite auto-copied to your clipboard 👀")
HomeTab:CreateLabel("💡 Tip: Click a script button to load it safely with cooldowns!")

GamesTab:CreateSection("Game Scripts")
UniversalTab:CreateSection("Universal Scripts")
AdminTab:CreateSection("Admin Tools")
CommunityTab:CreateSection("Community Links")

-- ========================
-- WELCOME NOTIFICATION BUTTON
-- ========================
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

-- ========================
-- DISCORD COPY BUTTON
-- ========================
CommunityTab:CreateButton({
    Name = "📎 Copy Discord Invite",
    Callback = function()
        SafeRun(function()
            setclipboard("https://discord.gg/nHhqreAUzZ")
            Rayfield:Notify({
                Title = "Discord Copied",
                Content = "Invite link copied to clipboard!",
                Duration = 4,
                Image = 4483362458
            })
        end)
    end,
})

-- ========================
-- ORIGINAL BUTTONS (KEPT EXACTLY)
-- ========================
GamesTab:CreateButton({
    Name = "🪖⚔️BMR5",
    Callback = function()
        SafeRun(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GuyformscriptROBLOX/bhmr5-script/refs/heads/main/script.lua"))()
        end)
    end,
})

UniversalTab:CreateButton({
    Name = "🌐 Universal ESP",
    Callback = function()
        SafeRun(function()
            getgenv().script = "https://github.com/danya2854/Myscripts/raw/refs/heads/main/WallHack"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/danya2854/Myscripts/refs/heads/main/loader"))()
        end)
    end,
})

GamesTab:CreateButton({
    Name = "🔪 Mm2",
    Callback = function()
        SafeRun(function()
            loadstring(game:HttpGet('https://raw.smokingscripts.org/vertex.lua'))()
        end)
    end,
})

GamesTab:CreateButton({
    Name = "👮‍♂️Valley Prison",
    Callback = function()
        SafeRun(function()
            loadstring(game:HttpGet("https://api.lasion.world/loader"))()
        end)
    end,
})

AdminTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        SafeRun(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end)
    end,
})

GamesTab:CreateButton({
    Name = "🌳🌲99 Night in the forest",
    Callback = function()
        SafeRun(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/loader.lua", true))()
        end)
    end,
})

GamesTab:CreateButton({
    Name = "🍎 Bloxfruit",
    Callback = function()
        SafeRun(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
        end)
    end,
})

GamesTab:CreateButton({
    Name = "🐯CAPTURE ANIMALS!",
    Callback = function()
        SafeRun(function()
            loadstring(game:HttpGet("https://rscripts.net/raw/infinite-battery-and-alot-of-teleportation-mechanics_1769350528680_aiEsmwLwRJ.txt",true))()
        end)
    end,
})

GamesTab:CreateButton({
    Name = "🧟‍♂️ Apocalypse Rising 2 (need key)",
    Callback = function()
        SafeRun(function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Klinac/scripts/main/ar2_new.lua", true))()
        end)
    end,
})

GamesTab:CreateButton({
    Name = "Blade ball",
    Callback = function()
        SafeRun(function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/scrintisnotfun/ScriptWare/refs/heads/main/Universal.lua"))()
        end)
    end,
})

GamesTab:CreateButton({
    Name = "✈️ War Tycoon ",
    Callback = function()
        SafeRun(function()
          loadstring(game:HttpGet("https://nobulem.wtf/loader.lua"))()
        end)
    end,
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
