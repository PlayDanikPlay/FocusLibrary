local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
 
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

if not game:IsLoaded() then
    local Message = Instance.new("Message", CoreGui)
    Message.Text = "FocusLib is waiting for the game to load"
    game.Loaded:Wait()
    notLoaded:Destroy()
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "FocusLib"

local Library = {}

function Library.new(Config)
  Name = Config[1]
  local Frame = Instance.new("Frame", CoreGui.FocusLib)
  Frame.Name = Name
end
