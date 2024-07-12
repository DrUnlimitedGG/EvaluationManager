local questionEvent = game.ReplicatedStorage:WaitForChild("questionEvent")
local answerEvent = game.ReplicatedStorage:WaitForChild("answerEvent")
local remoteEvaluator = game.ReplicatedStorage:WaitForChild("Evaluator")
local evaluator = game.ServerStorage.Evaluator.Value

local players = {}

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

questionEvent.OnServerEvent:Connect(function(player, data)
	game.ReplicatedStorage.quiz.questions:ClearAllChildren()
	
	for i, v in pairs(data) do
		local value = Instance.new("StringValue")
		value.Name = i
		value.Value = v
		value.Parent = game.ReplicatedStorage.quiz.questions
	end
	
end)

answerEvent.OnServerEvent:Connect(function(player, data)
	game.ReplicatedStorage.quiz.answers:ClearAllChildren()

	for i, v in pairs(data) do
		local filteredAnswer = filterMessage(v, player.UserId)
		
		if filteredAnswer then
			v = getMsg(filteredAnswer, game.ServerStorage.Evaluator.Value)
		end
		
		local value = Instance.new("StringValue")
		value.Name = i
		value.Value = v
		value.Parent = game.ReplicatedStorage.quiz.answers
	end
	
	game.ReplicatedStorage.quizComplete:FireClient(players[1])

end)

remoteEvaluator.OnServerEvent:Connect(function(player)
	local rank

	repeat
		local w, l = pcall(function()
			rank = player:GetRankInGroup(4890641)
			warn("Fetching rank")
		end)

		if l then
			warn(l)
		end
	until w

	if rank == 9 or rank == 50 then
		table.insert(players, player)

	else
		warn("Remove event fired without perms!")
	end
end)

