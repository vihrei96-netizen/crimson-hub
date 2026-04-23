-- CRIMSON HUB (FINAL FIX)

local UIS = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("TextButton")
local Scroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")

ScreenGui.Parent = game.CoreGui

-- Frame principal
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
MainFrame.Position = UDim2.new(0.1,0,0.2,0)
MainFrame.Size = UDim2.new(0,250,0,300)

-- Borda arredondada
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

-- Barra topo
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(25,25,25)
TopBar.Size = UDim2.new(1,0,0,30)
TopBar.Text = "CRIMSON HUB"
TopBar.TextColor3 = Color3.fromRGB(255,255,255)

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0, 10)
TopCorner.Parent = TopBar

-- Scroll
Scroll.Parent = MainFrame
Scroll.Position = UDim2.new(0,0,0,30)
Scroll.Size = UDim2.new(1,0,1,-30)
Scroll.BackgroundTransparency = 1
Scroll.ScrollBarThickness = 4

-- Layout
UIListLayout.Parent = Scroll
UIListLayout.Padding = UDim.new(0,5)

UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	Scroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
end)

-- DRAG UNIVERSAL
local dragging = false
local dragInput, dragStart, startPos

local function update(input)
	local delta = input.Position - dragStart
	MainFrame.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

TopBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
	or input.UserInputType == Enum.UserInputType.Touch then
		
		dragging = true
		dragStart = input.Position
		startPos = MainFrame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

TopBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement
	or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UIS.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

-- Criar botão
local function criarBotao(nome, callback)
	local Button = Instance.new("TextButton")
	Button.Parent = Scroll
	Button.Size = UDim2.new(1, -5, 0, 40)
	Button.BackgroundColor3 = Color3.fromRGB(35,35,35)
	Button.Text = nome
	Button.TextColor3 = Color3.fromRGB(255,255,255)

	local Corner = Instance.new("UICorner")
	Corner.CornerRadius = UDim.new(0, 8)
	Corner.Parent = Button

	Button.MouseButton1Click:Connect(callback)
end

-- 🔥 TOGGLE CORRIGIDO (minimiza de verdade)
local aberto = true
TopBar.MouseButton1Click:Connect(function()
	aberto = not aberto
	
	if aberto then
		MainFrame.Size = UDim2.new(0,250,0,300)
	else
		MainFrame.Size = UDim2.new(0,250,0,30)
	end
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
