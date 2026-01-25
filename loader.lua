--==================================
-- Otaku Script Hub Loader (Secure)
--==================================

--==============================
-- Anti‑Spam / Cooldown
--==============================
local Cooldown = false
local function SafeRun(func)
    if Cooldown then return end
    Cooldown = true
    task.spawn(func)
    task.delay(1.5, function() Cooldown = false end)
end

--==============================
-- Load Junkie Key System
--==============================
local keyLoaded = false
local success, err = pcall(function()
    loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/150ec4d5189d200c0dca31805f00c38447e7e724743894f325fe60ec769f0a8d/download"))()
end)

if not success then
    warn("Failed to load key system:", err)
    return -- stop if key system fails
end

-- Wait a short bit to let the Junkie key prompt finish
-- (if Junkie internally sets some global on success)
task.wait(0.1)

-- Only continue if the key was verified
if not getgenv().KeyVerified then
    -- Key not entered or canceled → do not continue
    return
end

--==============================
-- Setup Hub UI
--==============================
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local Window = Rayfield:CreateWindow({
    Name = "Otaku Script Hub",
    Icon = "Home",
    LoadingTitle = "Otaku Script Hub",
    LoadingSubtitle = "Secure Key Loaded",
    ShowText = "Rayfield",
    Theme = "Ocean",
    ToggleUIKeybind = "K",
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

--==============================
-- Tabs
--==============================
local HomeTab = Window:CreateTab("🏠 Home", "Home")
local GamesTab = Window:CreateTab("🎮 Games", "Gamepad")
local UniversalTab = Window:CreateTab("🌐 Universal", "Eye")
local AdminTab = Window:CreateTab("🛠 Admin", "Settings")
local CommunityTab = Window:CreateTab("👥 Community", "Users")

--==============================
-- Home Tab Content
--==============================
HomeTab:CreateSection("Welcome!")
HomeTab:CreateLabel("👋 Welcome to Otaku Script Hub!")
HomeTab:CreateLabel("🛡 Verified Key — access granted!")
HomeTab:CreateLabel("💡 Use tabs to select your scripts.")

HomeTab:CreateButton({
    Name = "📋 Copy Discord Invite",
    Callback = function()
        setclipboard("https://discord.gg/nHhqreAUzZ")
        Rayfield:Notify({Title="Copied!", Content="Discord invite copied!", Duration=4})
    end
})

HomeTab:CreateButton({
    Name = "🔑 Get New Key",
    Callback = function()
        setclipboard("YOUR_WORKINK_OR_LINKVERTISE_LINK")
        Rayfield:Notify({Title="Copied!", Content="Key link copied!", Duration=4})
    end
})

--==============================
-- Games Tab
--==============================
GamesTab:CreateSection("Game Scripts")
GamesTab:CreateButton({
    Name = "🪖⚔️ BMR5",
    Callback = function()
        SafeRun(function()
            task.spawn(function()
                local s,e=pcall(function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/GuyformscriptROBLOX/bhmr5-script/refs/heads/main/script.lua"))()
                end)
                if not s then
                    Rayfield:Notify({Title="Error", Content=tostring(e), Duration=5})
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
                local s,e=pcall(function()
                    loadstring(game:HttpGet("https://raw.smokingscripts.org/vertex.lua"))()
                end)
                if not s then
                    Rayfield:Notify({Title="Error", Content=tostring(e), Duration=5})
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
                local s,e=pcall(function()
                    loadstring(game:HttpGet("https://api.lasion.world/loader"))()
                end)
                if not s then
                    Rayfield:Notify({Title="Error", Content=tostring(e), Duration=5})
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
                local s,e=pcall(function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/loader.lua", true))()
                end)
                if not s then
                    Rayfield:Notify({Title="Error", Content=tostring(e), Duration=5})
                end
            end)
        end)
    end
})

--==============================
-- Universal Tab
--==============================
UniversalTab:CreateSection("Universal Scripts")
UniversalTab:CreateButton({
    Name = "🌐 Universal ESP",
    Callback = function()
        SafeRun(function()
            task.spawn(function()
                local s,e=pcall(function()
                    getgenv().script="https://github.com/danya2854/Myscripts/raw/refs/heads/main/WallHack"
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/danya2854/Myscripts/refs/heads/main/loader"))()
                end)
                if not s then
                    Rayfield:Notify({Title="Error", Content=tostring(e), Duration=5})
                end
            end)
        end)
    end
})

--==============================
-- Admin Tab
--==============================
AdminTab:CreateSection("Admin Tools")
AdminTab:CreateButton({
    Name = "⚙ Infinite Yield",
    Callback = function()
        SafeRun(function()
            task.spawn(function()
                local s,e=pcall(function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
                end)
                if not s then
                    Rayfield:Notify({Title="Error", Content=tostring(e), Duration=5})
                end
            end)
        end)
    end
})

--==============================
-- Community Tab
--==============================
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

--==============================
-- Final Notification
--==============================
Rayfield:Notify({
    Title = "Script Hub Loaded",
    Content = "Thanks for verifying your key!",
    Duration = 5
})
