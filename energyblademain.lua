
local cevent = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
local function chat(ass)
	cevent:FireServer(ass,"All")
end
local plr = game:GetService("Players").LocalPlayer
local value = ""
local function chr()
	return plr.Character
end
local function hum()
	return chr():FindFirstChildWhichIsA("Humanoid")
end

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
	Title = " EnergyBlade",
	Style = 4,
	SizeX = 550,
	SizeY = 400,
	Theme = "Dark",
})

local Y = X.New({
	Title = "Character"
})

--[[
local B = Y.Toggle({
	Text = "Uppercase",
	Callback = function(Value)
		uppercase = Value
	end,
	Enabled = false
})
]]

local A = Y.Button({
	Text = "EnergyBlade is in beta, so expect bugs.",
})
local H = Y.TextField({
	Text = "Value",
	Callback = function(Value)
		value = Value
	end,
})

local A = Y.Button({
	Text = "WalkSpeed",
	Callback = function()
		hum().WalkSpeed = value
	end,
})

local A = Y.Button({
	Text = "Reset WalkSpeed",
	Callback = function()
		hum().WalkSpeed = 16
	end,
})

local A = Y.Button({
	Text = "JumpPower",
	Callback = function()
		hum().JumpPower = value
	end,
})

local A = Y.Button({
	Text = "Reset JumpPower",
	Callback = function()
		hum().JumpPower = 50
	end,
})

local A = Y.Button({
	Text = "HipHeight",
	Callback = function()
		hum().HipHeight = value
	end,
})

local A = Y.Button({
	Text = "Reset HipHeight",
	Callback = function()
		hum().HipHeight = 0
	end,
})

local B = Y.Toggle({
	Text = "Teleport Fly",
	Callback = function(Value)
		if Value == true then
			local UIS = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local Keys, v3, cf = Enum.KeyCode, Vector3.new(), CFrame.new()
SPI = 2
plr.Character.HumanoidRootPart.Anchored = true
Con = RunService.Heartbeat:Connect(function()
	local Camera = workspace.CurrentCamera
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(plr.Character.HumanoidRootPart.Position, plr.Character.HumanoidRootPart.Position + Camera.CFrame.LookVector) * (UIS:GetFocusedTextBox() and cf or CFrame.new((UIS:IsKeyDown(Keys.D) and SPI) or (UIS:IsKeyDown(Keys.A) and -SPI) or 0, (UIS:IsKeyDown(Keys.E) and SPI / 2) or (UIS:IsKeyDown(Keys.Q) and -SPI / 2) or 0, (UIS:IsKeyDown(Keys.S) and SPI) or (UIS:IsKeyDown(Keys.W) and -SPI) or 0))
end)
		else
		if Con then
	Con:Disconnect()
end
plr.Character.HumanoidRootPart.Anchored = false
		end
	end,
	Menu = {
        ["What is this?"] = function(self)
            X.Banner({
                Text = "Others cannot see this type of fly. To them it looks like teleporting when you disable it."
            })
        end
    },
	Enabled = false
})

local A = Y.Button({
	Text = "Infinite Yield commands by Edge",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end,
})
