-- text color is 76.5, 255, 76.5
-- background is 0, 0, 0
	
		
if not game:IsLoaded() then
	game.Loaded:Wait()
end

if gethui():FindFirstChild("EnergyBlade") then
	gethui().EnergyBlade:Destroy()
end

-- init
player = game.Players.LocalPlayer
mouse = player:GetMouse()

-- services
input = game:GetService("UserInputService")
run = game:GetService("RunService")
tween = game:GetService("TweenService")
tweeninfo = TweenInfo.new

-- additional
utility = {}

-- themes
objects = {}
themes = {
	Background = Color3.fromRGB(24, 24, 24), 
	Glow = Color3.new(0.3, 1, 0.3), 
	Accent = Color3.fromRGB(10, 10, 10), 
	LightContrast = Color3.fromRGB(20, 20, 20), 
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.new(0.3, 1, 0.3)
}

lib = loadstring(game:HttpGet(string.reverse("eurt=war?detidexynev/niam/bolb/tessab-tessa/azmaHoG/moc.buhtig//:sptth")))()

local u2 = UDim2.new
	
function newinst(class, parent, name) -- better implementation of roblox instancing
   local inst = Instance.new(class)

   if parent == 1 then
      inst.Parent = gethui()
   else
      inst.Parent = parent
   end

   if name then
      inst.Name = name
   end

   return inst
end

local sg = newinst("ScreenGui", 1)
local frame = newinst("Frame",sg)
local txt1 = newinst("TextLabel",frame)
local txt2 = newinst("TextLabel",frame)
local corner = newinst("UICorner", frame)

frame.AnchorPoint=Vector2.new(.5,.5)
frame.Position = u2(0.5,0,0.5,0)
frame.Size = u2(0,500,0,0)
frame.ClipsDescendants = true
frame.BorderSizePixel = 0
frame.BackgroundColor3 = Color3.new(0,0,0)

corner.CornerRadius = UDim.new(0,10)

txt1.AnchorPoint=Vector2.new(.5,.5)
txt1.Position = u2(0.5,0,0.5,0)
txt1.Size = u2(1,0,1,0)
txt1.BackgroundTransparency = 1
txt1.Text="EnergyBlade"
txt1.TextColor3 = Color3.new(0.3,1,0.3)
txt1.Font = 20
txt1.TextSize = 40

txt2.AnchorPoint=Vector2.new(.5,.5)
txt2.Position = u2(0.5,0,1.5,0)
txt2.Size = u2(1,0,1,0)
txt2.BackgroundTransparency = 1
txt2.Text="Powered by Krnl. \nPress Right CTRL to open."
txt2.TextColor3 = Color3.new(0,0,0)
txt2.Font = 17
txt2.TextSize = 20
txt2.TextWrapped = true

frame:TweenSize(
	UDim2.new(0,500,0,70), 
	Enum.EasingDirection.InOut,
	Enum.EasingStyle.Sine, 
	0.3
)

wait(2)

txt1:TweenPosition(
	UDim2.new(0.5,0,-0.5,0), 
	Enum.EasingDirection.InOut,
	Enum.EasingStyle.Quint, 
	1
)

txt2:TweenPosition(
	UDim2.new(0.5,0,0.5,0), 
	Enum.EasingDirection.InOut,
	Enum.EasingStyle.Quint, 
	1
)
for i = 0, 23 do
	task.wait()
	frame.BackgroundColor3 = frame.BackgroundColor3:lerp(Color3.new(0.3,1,0.3),0.2)
end
wait(4)

frame:TweenSize(
	UDim2.new(0,500,0,-0), 
	Enum.EasingDirection.In,
	Enum.EasingStyle.Sine, 
	0.3
)
for i = 0, 23 do
	task.wait()
	frame.BackgroundColor3 = frame.BackgroundColor3:lerp(Color3.new(0,0,0),0.2)
end
game:service'Debris':AddItem(sg, 3)

local main = lib.new("EnergyBlade")

local pg1 = main:addPage("Welcome")

-- // Sections for Test Page
pg1:addSection("Welcome to EnergyBlade!")
pg1:addSection("Made by windowschips, for individual use only.")
pg1:addSection("Please abide by Krnl's Terms of Service, and have fun!")
local crOdits = pg1:addSection("Credits:")
crOdits:addButton("windowschips - Owner of EnergyBlade")
crOdits:addButton("Krnl Development Team - Krnl Injector and API")
crOdits:addButton("And you, "..game.Players.LocalPlayer.DisplayName.." - Supporting EnergyBlade")
