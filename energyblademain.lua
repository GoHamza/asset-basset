-- text color is 76.5, 255, 76.5
-- background is 0, 0, 0
	
		
if not game:IsLoaded() then
	game.Loaded:Wait()
end

if gethui():FindFirstChild("EnergyBlade") then
	gethui().EnergyBlade:Destroy()
end


if gethui():FindFirstChild("maingui") then
	gethui().maingui:Destroy()
end

-- init
player = game:GetService("Players").LocalPlayer
mouse = player:GetMouse()

-- services
input = game:GetService("UserInputService")
run = game:GetService("RunService")
tween = game:GetService("TweenService")
tweeninfo = TweenInfo.new

-- additional
utility = {}
u2 = UDim2.new

-- themes
objects = {}
themes = {
	Background = Color3.fromRGB(0,0,0), 
	Glow = Color3.new(0.3, 1, 0.3), 
	Accent = Color3.fromRGB(0,0,0), 
	LightContrast = Color3.fromRGB(9,9,9), 
	DarkContrast = Color3.fromRGB(5,7,5),  
	TextColor = Color3.new(0.3, 1, 0.3)
}

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

lib = loadstring(game:HttpGet(string.reverse("eurt=war?detidexynev/niam/bolb/tessab-tessa/azmaHoG/moc.buhtig//:sptth")))()

-- make instances and set their properties for opening animation

local sg = newinst("ScreenGui", 1)
local frame = newinst("Frame",sg)
local txt1 = newinst("TextLabel",frame)
local txt2 = newinst("TextLabel",frame)
local corner = newinst("UICorner", frame)

frame.AnchorPoint=Vector2.new(0.5, 0.5)
frame.Position = u2(0.5, 0, 0.5, 0)
frame.Size = u2(0, 500, 0, 0)
frame.ClipsDescendants = true
frame.BorderSizePixel = 0
frame.BackgroundColor3 = Color3.new(0, 0, 0)

corner.CornerRadius = UDim.new(0, 10)

txt1.AnchorPoint=Vector2.new(0.5, 0.5)
txt1.Position = u2(0.5, 0, 0.5, 0)
txt1.Size = u2(1, 0, 1, 0)
txt1.BackgroundTransparency = 1
txt1.Text = "EnergyBlade"
txt1.TextColor3 = Color3.new(0.3, 1, 0.3)
txt1.Font = 20
txt1.TextSize = 40

txt2.AnchorPoint=Vector2.new(0.5, 0.5)
txt2.Position = u2(0.5, 0, 1.5, 0)
txt2.Size = u2(1, 0, 1, 0)
txt2.BackgroundTransparency = 1
txt2.Text = "Powered by Krnl.\nPress Right CTRL to open."
txt2.TextColor3 = Color3.new(0, 0, 0)
txt2.Font = 17
txt2.TextSize = 20

-- animations

frame:TweenSize(UDim2.new(0,500,0,70), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.3)

task.wait(2)

txt1:TweenPosition(UDim2.new(0.5,0,-0.5,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 1)
txt2:TweenPosition(UDim2.new(0.5,0,0.5,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 1)

spawn(function()
	for i = 0, 23 do
		task.wait(0.03)
		frame.BackgroundColor3 = frame.BackgroundColor3:lerp(Color3.new(0.3,1,0.3),0.2)
	end
end)

task.wait(4)

frame:TweenSize(UDim2.new(0,500,0,-0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.3)

for i = 0, 21 do
	task.wait()
	frame.BackgroundColor3 = frame.BackgroundColor3:lerp(Color3.new(0,0,0),0.2)
end

game:GetService("Debris"):AddItem(sg, 3)


-- set up goofy ahh executor

local maingui = Instance.new("ScreenGui")
local Frame1 = Instance.new("ImageLabel")
local BGExec2 = Instance.new("ImageLabel")
local EXE = Instance.new("TextButton")
local cls = Instance.new("TextButton")
local BGExec = Instance.new("ScrollingFrame")
local TopBar = Instance.new("ImageLabel")
local Write = Instance.new("TextBox")
local Read = Instance.new("TextLabel")
maingui.Name = "maingui"
maingui.Parent = gethui()
BGExec2.Name = "BGExec2"
BGExec2.Parent = Frame1
BGExec2.BackgroundColor3 = Color3.fromRGB(9,9,9)
BGExec2.BackgroundTransparency = 1
BGExec2.BorderColor3 = Color3.new(1, 0, 0.0156863)
BGExec2.BorderSizePixel = 0
BGExec2.Position = UDim2.new(0.015, 0, 0.22, 0)
BGExec2.Size = UDim2.new(0, 555, 0, 270)
BGExec2.Image = "rbxassetid://3570695787"
BGExec2.ImageColor3 = Color3.fromRGB(9,9,9)
BGExec2.ScaleType = Enum.ScaleType.Slice
BGExec2.SliceCenter = Rect.new(100,100,100,100)
BGExec2.SliceScale = 0.070000000298023
BGExec.Name = "BGExec"
BGExec.Parent = BGExec2
BGExec.Active = true
BGExec.BackgroundColor3 = Color3.new(1, 1, 1)
BGExec.BackgroundTransparency = 1
BGExec.BorderSizePixel = 0
BGExec.Size = UDim2.new(1, -10, 1.20134223, -60)
BGExec.ZIndex = 2
BGExec.CanvasSize = UDim2.new(0, 0, 0, 0)
BGExec.ScrollBarThickness = 8
BGExec.VerticalScrollBarInset = Enum.ScrollBarInset.Always
TopBar.Name = "TopBar"
TopBar.Parent = maingui
TopBar.BackgroundColor3 = Color3.fromRGB(0,0,0)
TopBar.BackgroundTransparency = 1
TopBar.ZIndex = 20
TopBar.Position = UDim2.new(0.35, 0, 0.35, 0)
TopBar.Size = UDim2.new(0, 573, 0, 35)
TopBar.Image = "rbxassetid://1051202035"
TopBar.ImageColor3 = Color3.fromRGB(0,0,0)
TopBar.ScaleType = Enum.ScaleType.Slice
TopBar.SliceCenter = Rect.new(20, 20, 20, 20)
TopBar.Active = true
TopBar.Visible = false
TopBar.Draggable = true
--TopBar.ClipsDescendants = true

Write.Name = "Write"
Write.Parent = BGExec
Write.BackgroundColor3 = Color3.new(1, 1, 1)
Write.BackgroundTransparency = 1
Write.BorderSizePixel = 0
Write.Position = UDim2.new(0.005, 0, -1.02407988e-07, 0.01)
Write.Size = UDim2.new(1, 0, 100, 25)
Write.ZIndex = 2
Write.ClearTextOnFocus = false
Write.Font = Enum.Font.Code
Write.MultiLine = true
Write.Text = [[-- Welcome to EnergyBlade!
print("Hello world!")]]
Write.TextColor3 = Color3.new(0.8, 0.8, 0.8)
Write.TextSize = 14
Write.TextStrokeTransparency = 0.94999998807907
Write.TextXAlignment = Enum.TextXAlignment.Left
Write.TextYAlignment = Enum.TextYAlignment.Top
local textserv = game:GetService('TextService')
Read.Name = "Read"
Read.Parent = BGExec
Read.BackgroundColor3 = Color3.new(1, 1, 1)
Read.BackgroundTransparency = 1
Read.BorderSizePixel = 0
Read.ZIndex = 2
Read.Font = Enum.Font.Code
Read.Text = ""
Read.TextColor3 = Color3.new(0.8, 0.8, 0.8)
Read.TextSize = 14
Read.Selectable = false
Read.TextStrokeTransparency = 0.94999998807907
Read.TextXAlignment = Enum.TextXAlignment.Left
Read.TextYAlignment = Enum.TextYAlignment.Top
Frame1.Name = "Frame1"
Frame1.Parent = TopBar
Frame1.BackgroundColor3 = Color3.fromRGB(5,7,5)
Frame1.BackgroundTransparency = 0
Frame1.Position = UDim2.new(0, 0, -0, 0)
Frame1.Size = UDim2.new(0, 573, 0, 357)
EXE.Text = "▶"
EXE.Font = "Gotham"
EXE.TextSize = 18
EXE.Parent = Frame1
EXE.ZIndex = 1000
EXE.BackgroundColor3 = Color3.fromRGB(9,9,9)
EXE.TextColor3 =Color3.new(0.3, 1, 0.3)
EXE.BackgroundTransparency = 0
EXE.BorderSizePixel = 0
EXE.LineHeight = 1.1
EXE.Position = UDim2.new(0.015, 0, 0.11, 0)
EXE.Size = UDim2.new(0, 36, 0, 35)
EXE.MouseButton1Click:Connect(function()
	loadstring(Write.Text)()
end)
local pro = Instance.new("UICorner", EXE)
pro.CornerRadius = UDim.new(0, 5)
pro.Parent = EXE
cls.Text = "×"
cls.Font = "Gotham"
cls.TextSize = 26
cls.Parent = Frame1
cls.ZIndex = 1000
cls.BackgroundColor3 = Color3.fromRGB(9,9,9)
cls.TextColor3 = Color3.new(0.3, 1, 0.3)
cls.BackgroundTransparency = 0
cls.BorderSizePixel = 0
cls.Position = UDim2.new(0.015, 46, 0.11, 0)
cls.Size = UDim2.new(0, 36, 0, 35)
local pro = Instance.new("UICorner", cls)
pro.CornerRadius = UDim.new(0, 5)
pro.Parent = cls
local titl = Instance.new("TextLabel",TopBar)
titl.AnchorPoint = Vector2.new(.5,.5)
titl.Position = UDim2.new(0.5,0,0.5,0)
titl.Size = UDim2.new(1,0,1,0)
titl.BackgroundTransparency = 1
titl.TextColor3 = Color3.new(0.3, 1, 0.3)
titl.ZIndex = 20
titl.TextXAlignment = "Left"
titl.Text = "   EnergyBlade - Execution Panel"
titl.Font = "GothamBold"
titl.TextSize = 14
local pro = Instance.new("UICorner", Frame1)
pro.CornerRadius = UDim.new(0, 5)
local pro = Instance.new("UICorner", TopBar)
pro.CornerRadius = UDim.new(0, 5)
utility:Create("ImageLabel", {
					Name = "Glow",
					Parent = Frame1,
					BackgroundTransparency = 1,
					Position = UDim2.new(0, -15, 0, -15),
					Size = UDim2.new(1, 30, 1, 30),
					ZIndex = 0,
					Image = "rbxassetid://5028857084",
					ImageColor3 = themes.Glow,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(24, 24, 276, 276)
})
local replacements = {['\r'] = '', ['\t'] = '    '}
local keyword_list = {'and', 'break', 'do', 'else', 'elseif', 'end', 'false', 'for', 'function', 'if', 'in', 'local', 'nil', 'not', 'or', 'repeat', 'return', 'self', 'then', 'true', 'until', 'while', 'uraniumHubWinning'}
local globals_list = {}
local colors = {
	Comment = Color3.fromRGB(74, 139, 69),
	Global = Color3.fromRGB(26, 235, 112),
	Keyword = Color3.fromRGB(86, 156, 214),
	Number = Color3.fromRGB(0, 206, 168),
	String = Color3.fromRGB(193, 118, 76),
	Symbol = Color3.fromRGB(255, 255, 255),
	Word = Color3.fromRGB(255, 255, 25)
}
do
	local env = getfenv(0)

	local function recurse(s, t)
		for i, v in next, t do
			local name = s .. '.' .. i
			globals_list[name] = true
			if type(v) == 'table' then
				recurse(name, v)
			end
		end
	end
	
	setmetatable(globals_list, {
		__index = function(self, what)
			local got = env[what]
			local rl = got ~= nil
			if rl and type(got) == 'table' then
				recurse(what, got)
			end
			self[what] = rl
			return rl
		end
	})
end

local function normalize(t)
	for i = 1, #t do
		t[t[i]] = true
		t[i] = nil
	end
end
normalize(keyword_list)
local function text_size(str, size)
	return textserv:GetTextSize(str, 14, Enum.Font.Code, size)
end
local function cut_off(word, n, t)
	if t == "[" then
		warn(word:sub(n, n))
		warn(word:sub(n + 1, n + 1))
	end
	return word:sub(n, n) == t and word:sub(n + 1, n + 1) == t
end
local function is_long(words, s)
	if words:sub(s, s) == '[' then
		local k = s + 1
		while words:sub(k, k) == '=' do
			k = k + 1
		end
		return words:sub(k, k) == '[', k - s + 1
	end
	return false, 0
end
local function read_long(words, s, n)
	local reached
	for i = s, #words do
		local ch = words:sub(i, i)
		if ch == ']' then
			for j = i + 1, #words do
				local wh = words:sub(j, j)
				if wh ~= '=' then
					if wh == ']' and ((j - i - 1) == n) then
						reached = j
					end
					break
				end
			end
		end
		if reached then
			break
		end
	end
	return (reached or #words) - s + 1
end
local function read_comment(words, s)
	local len = s + 2
	local wlen = #words
	local long, longlen = is_long(words, len)
	if long then
		return read_long(words, len + longlen, longlen - 2) + longlen + 2
	else
		local ch
		repeat
			ch = words:sub(len, len)
			len = len + 1
		until len > wlen or ch == '\n'
		return len - s
	end
end
local function read_string(words, s, q)
	local ret = #words
	local esc = false
	for i = s, ret do
		local c = words:sub(i, i)
		if c == '\\' and not esc then
			esc = true
		elseif c == q and not esc then
			ret = i
			break
		else
			esc = false
		end
	end
	return ret - s + 1
end
local function read_alphanum(words, s)
	local len = 0
	while words:sub(s + len, s + len):match('[%w_.:]') do
		len = len + 1
	end
	return len
end
local function read_symbols(words, s)
	local len = 0
	local word
	repeat
		local nx = s + len
		if cut_off(words, nx, '-') or is_long(words, nx) or cut_off(words, nx+1, "[") then
			break
		end
		word = words:sub(nx, nx)
		len = len + 1
		wait();
	until not word:match('[^%s%w_\'"]')
	return len - 1
end
local function read_whitespace(words, s)
	local len = 0
	while words:sub(s + len, s + len):match('%s') do
		len = len + 1
	end
	return len
end
local function parse_words(words)
	local pos = 1
	local wlen = #words
	local list = {}

	while pos <= wlen do
		local ch = words:sub(pos, pos)
		local frm = Read:Clone()
		local col, len

		local long, longlen = is_long(words, pos)

		if long then
			len = read_long(words, pos + longlen, longlen - 2) + longlen
			col = colors.String
		elseif cut_off(words, pos, '-') then
			len = read_comment(words, pos)
			col = colors.Comment
		elseif ch == '"' or ch == '\'' then
			len = read_string(words, pos + 1, ch) + 1
			col = colors.String
		elseif ch:match('[%w_.:]') then
			local word
			len = read_alphanum(words, pos)
			word = words:sub(pos, pos + len - 1)
			if tonumber(word) then
				col = colors.Number
			elseif keyword_list[word] then
				col = colors.Keyword
			else
				local rln = 0
				for cnk in string.gmatch(word, '[^.:]+') do
					local nx = rln + #cnk
					if globals_list[word:sub(1, nx)] then
						rln = nx + 1
					else
						break
					end
				end
				if rln ~= 0 then
					len = rln - 1
					col = colors.Global
				else
					col = colors.Word
				end
			end
		elseif ch:match('[^%s%w_\'"]') then
			len = 1 -- fucking bandaid shit for a crash
			col = colors.Symbol
		elseif ch:match('%s') then
			len = read_whitespace(words, pos)
			col = colors.Word
		else
			error('Failed big man ting!')
		end
		table.insert(list, {
			str = words:sub(pos, pos + len - 1),
			col = col
		})
		pos = pos + len
	end

	return list
end

local function highlight()
	local wtext = Write.Text:gsub('[\r\t]', replacements)
	local parsed = parse_words(wtext)
	local x, y = 0, 0
	
	Write:ClearAllChildren()
	Write.Text = wtext

	local function new_frame(str, col, last, j)
		local txt = str:sub(last, j)
		local sz = text_size(txt, BGExec.AbsoluteSize)
		local num = (BGExec.CanvasPosition.Y + BGExec.AbsoluteSize.Y)
		local num2 = (BGExec.CanvasPosition.Y - BGExec.AbsoluteSize.Y)
		
		if (y > num) or (y < num2) then
			return sz;
		end
		
		if col ~= colors.Word then
			local rd = Read:Clone()
			rd.Text = txt
			rd.TextColor3 = col
			rd.Position = UDim2.new(0, x, 0, y)
			rd.Size = UDim2.new(0, sz.X, 0, sz.Y)
			rd.Parent = Write
		end

		return sz
	end
	
	
	for i = 1, #parsed do
		local word = parsed[i]
		local str = word.str
		local wl = #str
		local tx = {}
		local last = 1
			
		for j = 1, wl do
			local c = str:sub(j, j)
			if c == '\n' then
				local rd = new_frame(str, word.col, last, j - 1)
				y = y + rd.Y
				x = 0
				last = j + 1
			elseif j == wl then
				local rd = new_frame(str, word.col, last, j)
				x = x + rd.X
			end
		end
	end
end

local function dispatch_job()
	highlight()
end

BGExec.CanvasSize = UDim2.new(0, Write.TextBounds.X, 0, Write.TextBounds.Y)
coroutine.wrap(dispatch_job)()

Write:GetPropertyChangedSignal('Text'):Connect(function()
	BGExec.CanvasSize = UDim2.new(0, Write.TextBounds.X, 0, Write.TextBounds.Y)
	coroutine.wrap(dispatch_job)()
end)

Write.Focused:Connect(function()
	BGExec.CanvasSize = UDim2.new(0, Write.TextBounds.X, 0, Write.TextBounds.Y)
	coroutine.wrap(dispatch_job)()
end)

spawn(function()
while true do
	wait(5)
	if not TopBar.Visible then return end
	if not gethui():FindFirstChild("maingui") then break end
	BGExec.CanvasSize = UDim2.new(0, Write.TextBounds.X, 0, Write.TextBounds.Y)
	coroutine.wrap(dispatch_job)()
end
end)






-- ui lib start

local main = lib.new("EnergyBlade")
main:toggle()

-- welcome page start
local pg1 = main:addPage("Welcome")
pg1:addSection("Welcome to EnergyBlade!")
pg1:addSection("Made by windowschips, for non-commercial use only.")
pg1:addSection("Please abide by Krnl's Terms of Service, and have fun!")

local credits = pg1:addSection("Credits:")
credits:addButton("windowschips - Owner and Developer of EnergyBlade")
credits:addButton("Krnl Development Team - Krnl Injector and API")
credits:addButton(player.DisplayName.." - Supporting EnergyBlade")
main:SelectPage(pg1, true)
-- welcome page end

-- main page start
local pg3 = main:addPage("Main")
local exec = pg3:addSection("Execution")
exec:addTextbox("Paste here:", "print(\"Hello, world!\")", function(a, b) 
	if b then
		local s, r = pcall(function()
			loadstring(a)()
		end)
		if not s then 
			warn(r)
		end
	end
end)
local exectoggle = exec:addToggle("Execution Panel", false, function(val) 
	TopBar.Visible = val
end)

cls.MouseButton1Click:Connect(function()
	TopBar.Visible = false
	exec:updateToggle(exectoggle, "Execution Panel", false)
end)

-- main page end

-- settings page start
local pg2 = main:addPage("Settings") 
local libsettings = pg2:addSection("UI Settings")

libsettings:addKeybind("Hide/Show", Enum.KeyCode.RightControl, function() 
	main:toggle()
end)

-- settings page end
