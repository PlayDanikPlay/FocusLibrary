local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
 
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

local Library = {}

for Index, V in next, CoreGui:GetChildren() do
	if V.Name == "FocusLib" then
		V:Destroy()
	end
end

function Library:CreateWindow(Config)
end

local ConfigName = "FocusConfig.JSON"

pcall(function()

if not pcall(function() readfile(Name) end) then
	writefile(Name, game:service"HttpService":JSONEncode(SettingsT))
end

Settings = game:service"HttpService":JSONEncode(readfile(Name))
end)

local LibName = tostring(math.random(1, 100))..tostring(math.random(1,50))..tostring(math.random(1, 100))
