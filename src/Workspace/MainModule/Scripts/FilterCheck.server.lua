local remote = game.ReplicatedStorage.FilterCheck
local clientRemote = game.ReplicatedStorage.FilterCheckClient

local ts = game:GetService("TextService")

local function filterMessage(msg, user)
	local message

	local success, err = pcall(function()
		message = game:GetService("TextService"):FilterStringAsync(msg, user)
	end)

	if success then
		return message
	end
	return false
end

local function getMsg(msg, user)
	local message

	local success, err = pcall(function()
		message = msg:GetChatForUserAsync(user) 
	end)

	if success then
		return message
	end
	return false
end

remote.OnServerEvent:Connect(function(player, message)
	local filterObject = filterMessage(message, player.UserId)
	local resultingMessage
	
	if filterObject then
		resultingMessage = getMsg(filterObject, player.UserId)
	end
	
	warn("Filtered, sending back")
	clientRemote:FireClient(player, resultingMessage)
end)