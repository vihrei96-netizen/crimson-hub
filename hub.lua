-- CRIMSON HUB (FIXED)

local UIS = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Toggle = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")

ScreenGui.Parent = game.CoreGui

-- Frame principal
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- fundo preto
Frame.Position = UDim2.new(0.1, 0, 0.2, 0)
Frame.Size = UDim2.new(0, 250, 0, 300)

-- Drag manual (funciona em qualquer executor)
local dragging, dragInput, dragStart, startPos

Frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = Frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

UIS.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		Frame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
end)

-- Botão toggle
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
Toggle.Position = UDim2.new(0.1, 0, 0.15, 0)
Toggle.Size = UDim2.new(0, 250, 0, 30)
Toggle.Text = "CRIMSON HUB"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Layout
UIListLayout.Parent = Frame
UIListLayout.Padding = UDim.new(0, 5)

-- Criar botão
local function criarBotao(nome, callback)
	local Button = Instance.new("TextButton")
	Button.Parent = Frame
	Button.Size = UDim2.new(1, 0, 0, 40)
	Button.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
	Button.Text = nome
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)

	Button.MouseButton1Click:Connect(callback)
end

-- Toggle abrir/fechar
local aberto = true
Toggle.MouseButton1Click:Connect(function()
	aberto = not aberto
	Frame.Visible = aberto
end)

-- =========================
-- SCRIPTS
-- =========================

criarBotao("🍎 Blox Fruits", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
end)

criarBotao("🌍 Universal Hub", function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-MicrowaveHub-The-BEST-Universal-hub-EVER-76950"))()
end)

criarBotao("🎯 Aimbot FPS", function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/FPS-Flick-DINAS-PROJECT-AIMBOT-ESP-70584"))()
end)

criarBotao("⚔️ UAOT", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/sudaisontopxd/UAOT/refs/heads/main/PhantomFlux"))()
end)

criarBotao("🏴 Sailor Piece", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
end)

criarBotao("🧍 Emotes", function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Vexro-Emotes-69231"))()
end)

criarBotao("🗡️ AOT Revolution", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LunarZR/bomba/refs/heads/main/AOTR1"))()
end)
