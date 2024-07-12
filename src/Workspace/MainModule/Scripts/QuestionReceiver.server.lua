local HttpService = game:GetService("HttpService")
local questionReceiver = game.ReplicatedStorage:WaitForChild("StartQuiz")
local questionReceive = game.ReplicatedStorage:WaitForChild("QuestionReceive")

game.ServerStorage:WaitForChild("BeingEvaluated")

local data
local response

local i = 0

local easyQuestions = {}
local mediumQuestions = {}
local hardQuestions = {}

game.ReplicatedStorage.StartQuiz.OnServerInvoke = function(player, person, password)
	local rank
	local target
	
	local evaluator = game.ServerStorage["Evaluator"].Value
		
	local requestUri = "https://quizmodule.fly.dev/quiz/"..password.."/"..tostring(evaluator)

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
		local success, err
	
		
		repeat
			success, err = pcall(function()
				data = HttpService:GetAsync(requestUri)
				response = HttpService:JSONDecode(data)
			end)

			if err then
				warn(err)
			end
			
			if success then
				easyQuestions = response["easy"]
				mediumQuestions = response["medium"]
				hardQuestions = response["hard"]
				
				for i, Players in(game.Players:GetChildren()) do
					if string.lower(Players.Name) == string.lower(person) then
						target = game.Players:FindFirstChild(Players.Name)
					end
				end

				if target then
					game.ServerStorage.QuizModulePhase4:Clone().Parent = target.PlayerGui
					warn("Running quiz!")
				else 
					warn(person .. " is not in the game!")
				end
			end
			
			i = i + 1
		until success or i == 10
		
		i = 0
		
		if err then
			return "401"
		elseif success then
			return "200"
		end
		
	else
		warn("Remove event fired without perms!")
	end
end

questionReceive.OnServerInvoke = function(player, difficulty)
	-- need to authorize the player first
	if string.lower(player.Name) == string.lower(game.ServerStorage.BeingEvaluated.Value) then

		if difficulty == "Easy" then
			return  easyQuestions
		elseif difficulty == "Medium" then
			return mediumQuestions
		elseif difficulty == "Hard" then
			return hardQuestions
		end	

	end
end
