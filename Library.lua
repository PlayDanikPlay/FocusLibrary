--[[

	————————————————————————————————————————————————————————————————————————————————————————————————————————————————																																																																														
	 ____              _              ____                              _          
	|  _ \  __ _ _ __ / |_   ___  __ |  _ \ _   _ _ __   __ _ _ __ ___ (_) ___ ___ 
	| | | |/ _` | '_ \| | | | \ \/ / | | | | | | | '_ \ / _` | '_ ` _ \| |/ __/ __|
	| |_| | (_| | | | | | |_| |>  <  | |_| | |_| | | | | (_| | | | | | | | (__\__ \
	|____/ \__,_|_| |_|_|\__, /_/\_\ |____/ \__, |_| |_|\__,_|_| |_| |_|_|\___|___/                             
         
    ————————————————————————————————————————————————————————————————————————————————————————————————————————————————
         
	By PlayDanikPlay

	————————————————————————————————————————————————————————————————————————————————————————————————————————————————
	
]]--

if IY_LOADED and not _G.IY_DEBUG == true then
	return
end

pcall(function() getgenv().IY_LOADED = true end)

local Cloneref = cloneref or function(O) return O end
COREGUI = Cloneref(game:GetService("CoreGui"))
Players = Cloneref(game:GetService("Players"))

if not game:IsLoaded() then
	game.Loaded:Wait()
end

CurrentVersion = "1.0"

local Library = {}

function RandomString()
	local Lenght = math.random(10, 20)
	local Array = {}
	
	for Index = 1, Lenght do
		Array[Index] = string.char(math.random(32, 126))
	end
	
	return table.concat(Array)
end

function Library.new(Title)
	if Title == nil then
		warn("TITLE IS NIL!")
		return
	end
	
	if get_hidden_gui or gethui then
		local HiddenUI = get_hidden_gui or gethui
		local FocusLib = Instance.new("ScreenGui", HiddenUI())
		FocusLib.Name = RandomString()
	end
end

return Library
