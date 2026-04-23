-- CRIMSON HUB

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Toggle = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
Frame.Position = UDim2.new(0.1, 0, 0.2, 0)
Frame.Size = UDim2.new(0, 250, 0, 300)
Frame.Active = true
Frame.Draggable = true

Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
Toggle.Position = UDim2.new(0.1, 0, 0.15, 0)
Toggle.Size = UDim2.new(0, 250, 0, 30)
Toggle.Text = "CRIMSON HUB"

UIListLayout.Parent = Frame
UIListLayout.Padding = UDim.new(0, 5)

local function criarBotao(nome, callback)
    local Button = Instance.new("TextButton")
    Button.Parent = Frame
    Button.Size = UDim2.new(1, 0, 0, 40)
    Button.BackgroundColor3 = Color3.fromRGB(160, 0, 0)
    Button.Text = nome

    Button.MouseButton1Click:Connect(callback)
end

local aberto = true
Toggle.MouseButton1Click:Connect(function()
    aberto = not aberto
    Frame.Visible = aberto
end)

-- =========================
-- 🔥 SCRIPTS
-- =========================

criarBotao("🍎 Blox Fruits (Key)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
end)

criarBotao("🌍 Universal Hub (Keyless)", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-MicrowaveHub-The-BEST-Universal-hub-EVER-76950"))()
end)

criarBotao("🎯 Aimbot FPS (Keyless)", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/FPS-Flick-DINAS-PROJECT-AIMBOT-ESP-70584"))()
end)

criarBotao("⚔️ Untitled Attack on Titan (Key)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sudaisontopxd/UAOT/refs/heads/main/PhantomFlux"))()
end)

criarBotao("🏴 Sailor Piece (Key)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
end)

criarBotao("🧍 Emotes (Keyless)", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Vexro-Emotes-69231"))()
end)

criarBotao("🗡️ AOT Revolution (Keyless)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LunarZR/bomba/refs/heads/main/AOTR1"))()
end)

-- =========================
-- ⚠️ SEM SCRIPT (ADICIONA DEPOIS)
-- =========================

-- criarBotao("Blade Ball", function()
-- end)

-- criarBotao("Fish It", function()
-- end)

-- criarBotao("A Universal Time", function()
-- end)

-- criarBotao("Shindo Life", function()
-- end)

-- criarBotao("Murder Mystery", function()
-- end)

-- criarBotao("Muscle Legends", function()
-- end)

-- criarBotao("Legends of Speed", function()
-- end)