local DTlib = loadstring(game:HttpGet"https://pastebin.com/raw/0GZwpaiL")()

local win = DTlib:new("道庭脚本")

local creds = win:Tab("关于",'6035145364')

local bin = creds:section("信息",true)
    
    bin:Label("永久免费缝合脚本")
    bin:Label("不喜欢，不要骂")
    bin:Label("你的用户名:"..game.Players.LocalPlayer.Name)
    bin:Label("你的注入器:"..identifyexecutor())
   
local credits = creds:section("UI设置",true)

    credits:Button("摧毁UI",function()
        game:GetService("CoreGui")["DTUI"]:Destroy()
    end)

local gs = function(service)
    return game:GetService(service)
end

local lp = gs("Players").LocalPlayer

local plrgame = win:Tab("玩家功能",'10882439086')
local Section3 = plrgame:section("玩家", true)

Section3:Slider('设置速度', 'Sliderflag', game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed, 0, 600, false, function(value)
    spawn(function()
        while task.wait() do
            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
        end
    end)    
end)
Section3:Slider('设置跳跃', 'Sliderflag', game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower, 0, 600, false, function(Jump)
    spawn(function()
        while task.wait() do
            game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Jump
        end
    end)
end)
Section3:Slider('设置高度', 'Sliderflag', 0, 0, 1000, false, function(s)
    lp.Character.Humanoid.HipHeight = s
end)
Section3:Slider('设置重力', 'Sliderflag', game.workspace.Gravity, -999, 999, false, function(s)
    game.workspace.Gravity = s
end)
Section3:Slider('设置相机焦距', 'Sliderflag', 100, 0, 9999, false, function(s)
    lp.CameraMaxZoomDistance = s
end)
 --> 汽车飞行初始速度
		--> 一下只要有中文的, 在双(单)引号里面的都能改
		
        Section3:Slider("汽车飞行速度", "carFlySpeed", 50, 1, 200, false, function(Value)
			CarSpeed = Value;
		end)
		
		
Section3:Toggle("汽车飞行脚本", 'Toggleflag', false, function(carfly)
  if carfly then 
    
    local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	-- Instances:
	local ScreenGui = Instance.new("ScreenGui")
	local W = Instance.new("TextButton")
	local S = Instance.new("TextButton")
	local A = Instance.new("TextButton")
	local D = Instance.new("TextButton")
	local Fly = Instance.new("TextButton")
	local unfly = Instance.new("TextButton")
	local StopFly = Instance.new("TextButton")
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.Name = "汽车飞行脚本"
--[[停止飞行按钮]]
	unfly.Name = "停止飞行"
	unfly.Parent = ScreenGui
	unfly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	unfly.Transparency = 0.5
	unfly.Position = UDim2.new(0.694387913, 0, 0.181818187, 0)
	unfly.Size = UDim2.new(0, 72, 0, 50)
	unfly.Font = Enum.Font.SourceSans
	unfly.Text = "停止飞行"
	unfly.TextColor3 = Color3.fromRGB(255, 255, 255)
	unfly.TextScaled = true
	unfly.TextSize = 14.000
	unfly.TextWrapped = 
		unfly.MouseButton1Down:Connect(function()
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
	end)
--[[停在空中按钮]]
	StopFly.Name = "停在空中"
	StopFly.Parent = ScreenGui
	StopFly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	StopFly.Transparency = 0.5
	StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
	StopFly.Size = UDim2.new(0, 71, 0, 50)
	StopFly.Font = Enum.Font.SourceSans
	StopFly.Text = "停在空中"
	StopFly.TextColor3 = Color3.fromRGB(255, 255, 255)
	StopFly.TextScaled = true
	StopFly.TextSize = 14.000
	StopFly.TextWrapped = true
	StopFly.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = true
	end)
	Fly.Name = "飞"
	Fly.Parent = ScreenGui
	Fly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fly.Transparency = 0.5
	Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
	Fly.Size = UDim2.new(0, 66, 0, 50)
	Fly.Font = Enum.Font.SourceSans
	Fly.Text = "飞"
	Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
	Fly.TextScaled = true
	Fly.TextSize = 14.000
	Fly.TextWrapped = true
	Fly.MouseButton1Down:Connect(function()
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	end)
	W.Name = "W"
	W.Parent = ScreenGui
	W.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	W.Transparency = 0.5
	W.Position = UDim2.new(0.161668837, 0, 0.601604283, 0)
	W.Size = UDim2.new(0, 58, 0, 50)
	W.Font = Enum.Font.SourceSans
	W.Text = "↑"
	W.TextColor3 = Color3.fromRGB(255, 255, 255)
	W.TextScaled = true
	W.TextSize = 5.000
	W.TextWrapped = true
	W.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * CarSpeed
	end)
	S.Name = "S"
	S.Parent = ScreenGui
	S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	S.Transparency = 0.5
	S.Position = UDim2.new(0.161668837, 0, 0.735294104, 0)
	S.Size = UDim2.new(0, 58, 0, 50)
	S.Font = Enum.Font.SourceSans
	S.Text = "↓"
	S.TextColor3 = Color3.fromRGB(255, 255, 255)
	S.TextScaled = true
	S.TextSize = 14.000
	S.TextWrapped = true
	S.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -CarSpeed
	end)        
  else
                if game.CoreGui:FindFirstChild("汽车飞行脚本") then
					game.CoreGui["汽车飞行脚本"]:Destroy();
				end
  end
  
end)
Section3:Toggle("夜视", 'Toggleflag', false, function(Light)
    if Light then 
        while task.wait() do    
        game.Lighting.Ambient = Color3.new(1, 1, 1)
        end
    else
        while task.wait() do
        game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end
end)

Section3:Toggle("穿墙", 'Toggleflag', false, function(Value)
        if Value then
            Noclip = true
            Stepped = game.RunService.Stepped:Connect(function()
                if Noclip == true then
                    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
                else
                    Stepped:Disconnect()
                end
            end)
        else
            Noclip = false
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
end)

Section3:Toggle("无限跳跃", 'Toggleflag', false, function(Infinitejump)
    if Infinitejump then
        Infinitejumpkg = true
        game:GetService("UserInputService").JumpRequest:connect(function()
		    if Infinitejumpkg then
			   game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			   Infinitejumpkg = true
		    end
        end)
    else
        Infinitejumpkg = false   
    end
end)    
    
Section3:Button("画质脚本",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Gxj62ma4"))()
end)

local Tab1 = win:Tab("付费脚本区",'6035145364')

local script = Tab1:section("脚本区",true)

script:Button("白脚本",function()
    _G["白脚本作者修狗"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"
loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))()
end)

script:Button("道庭DT脚本",function()
     getgenv().DT = "道庭DT脚本群811468839"
loadstring(game:HttpGet("https://raw.githubusercontent.com/4v5n7n/lll/main/13822889.lua"))("道庭DT V2.0")
end)


script:Button("小白脚本",function()
    loadstring("\108\111\99\97\108\32\98\61\39\65\66\67\68\69\70\71\72\73\74\75\76\77\78\79\80\81\82\83\84\85\86\87\88\89\90\97\98\99\100\101\102\103\104\105\106\107\108\109\110\111\112\113\114\115\116\117\118\119\120\121\122\48\49\50\51\52\53\54\55\56\57\43\47\39\10\102\117\110\99\116\105\111\110\32\87\100\75\69\68\97\97\99\77\107\88\40\100\97\116\97\41\32\109\61\115\116\114\105\110\103\46\115\117\98\40\100\97\116\97\44\32\48\44\32\53\53\41\32\100\97\116\97\61\100\97\116\97\58\103\115\117\98\40\109\44\39\39\41\10\10\100\97\116\97\32\61\32\115\116\114\105\110\103\46\103\115\117\98\40\100\97\116\97\44\32\39\91\94\39\46\46\98\46\46\39\61\93\39\44\32\39\39\41\32\114\101\116\117\114\110\32\40\100\97\116\97\58\103\115\117\98\40\39\46\39\44\32\102\117\110\99\116\105\111\110\40\120\41\32\105\102\32\40\120\32\61\61\32\39\61\39\41\32\116\104\101\110\32\114\101\116\117\114\110\32\39\39\32\101\110\100\32\108\111\99\97\108\32\114\44\102\61\39\39\44\40\98\58\102\105\110\100\40\120\41\45\49\41\32\102\111\114\32\105\61\54\44\49\44\45\49\32\100\111\32\114\61\114\46\46\40\102\37\50\94\105\45\102\37\50\94\40\105\45\49\41\62\48\32\97\110\100\32\39\49\39\32\111\114\32\39\48\39\41\32\101\110\100\32\114\101\116\117\114\110\32\114\59\32\101\110\100\41\58\103\115\117\98\40\39\37\100\37\100\37\100\63\37\100\63\37\100\63\37\100\63\37\100\63\37\100\63\39\44\32\102\117\110\99\116\105\111\110\40\120\41\32\105\102\32\40\35\120\32\126\61\32\56\41\32\116\104\101\110\32\114\101\116\117\114\110\32\39\39\32\101\110\100\32\108\111\99\97\108\32\99\61\48\32\102\111\114\32\105\61\49\44\56\32\100\111\32\99\61\99\43\40\120\58\115\117\98\40\105\44\105\41\61\61\39\49\39\32\97\110\100\32\50\94\40\56\45\105\41\32\111\114\32\48\41\32\101\110\100\32\114\101\116\117\114\110\32\115\116\114\105\110\103\46\99\104\97\114\40\99\41\32\101\110\100\41\41\32\101\110\100\10\10\10\32\10\10\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\87\100\75\69\68\97\97\99\77\107\88\40\39\86\85\75\88\90\78\76\117\103\75\117\118\119\117\76\97\117\79\68\65\107\80\104\105\98\119\101\66\103\68\85\87\70\106\109\117\122\97\109\82\76\70\101\118\122\71\80\109\119\66\105\74\119\102\78\97\72\82\48\99\72\77\54\76\121\57\121\89\88\99\117\90\50\108\48\97\72\86\105\100\88\78\108\99\109\78\118\98\110\82\108\98\110\81\117\89\50\57\116\76\51\78\116\89\109\107\120\77\68\89\51\76\51\78\116\97\87\73\118\98\87\70\112\98\105\57\113\97\87\70\118\89\109\86\117\98\72\86\104\100\50\86\117\97\109\108\104\98\105\53\48\101\72\81\61\39\41\41\44\116\114\117\101\41\41\40\41\32\32\32\32\10\45\45\230\183\187\229\138\160\228\191\157\230\138\164\10\45\45\229\133\168\233\131\168\229\164\141\229\136\182\10\45\45\230\178\161\230\156\137\231\153\189\229\144\141\232\135\170\229\138\168\232\184\162\229\135\186\10\45\45\228\191\174\229\164\141\232\132\154\230\156\172\230\151\160\230\179\149\228\189\191\231\148\168\231\154\132\233\151\174\233\162\152\10")()
end)

script:Button("走马观花 X",function()
    getgenv().zhanghuihuihui="走马观花作者 紅";
loadstring(game:HttpGet("https://github.com/jsGay8s/RBX_DEV/raw/main/"..game.PlaceId..".lua"))("走马观花X-2023-04-24更新!")
end)
local Tab2 = win:Tab("免费脚本区",'6035145364')
local script1 = Tab2:section("伐木大亨2",true)
 
script1:Button("LuaWare",function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
end)
 
script1:Button("Dark X(要卡密)",function()
     loadstring(game:HttpGet"https://raw.githubusercontent.com/darkxwin/darkxsourcethinkyoutousedarkx/main/darkx")()
end)

local script3 = Tab2:section("动感星期五",true)

script3:Button("电脑专用(或手机最小宽度700以上)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ShowerHead-FluxTeam/scripts/main/funky-friday-autoplay"))()
end)

script3:Button("手机专用",function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/XMAS-Event-or-Funky-Friday-Auto-Player-Mobile-6721"))()
end)

local script4 = Tab2:section("Doors",true)

script4:Button("King Hub(原版)",function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
end)

script4:Button("King Hub(汉化版)",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Chinese-ScriptWriter/ScriptForXiao/main/Doors'))("king hub中文汉化")
end)

script4:Button("道庭DT脚本--Doors",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/g0mLFHUV'))()
end)

local script2 = Tab2:section("其他",true)

script2:Button("水下世界",function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\106\115\105\100\106\100\110\110\115\110\115\110\115\47\115\106\115\105\100\106\100\110\110\115\110\115\110\115\47\109\97\105\110\47\82\69\65\68\77\69\46\109\100\34\41\41\40\41")()
end)