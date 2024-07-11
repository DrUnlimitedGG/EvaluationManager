local module = {}

function module.Load(PlayerName)
	-- local player = game.Players:FindFirstChild(PlayerName)
	local player
	
	-- accounts for differences in capitalization!
	for i, Player in(game.Players:GetChildren()) do
		if string.lower(Player.Name) == string.lower(PlayerName) then
			player = game.Players:FindFirstChild(Player.Name)
		end
	end
	
	if player then
		script.Evaluation.Parent = player.PlayerGui

		for i, v in pairs(script.Replicated:GetChildren()) do
			v.Parent = game.ReplicatedStorage
		end

		for i, v in pairs(script.Storage:GetChildren()) do
			v.Parent = game.ServerStorage
		end

		for i, v in pairs(script.Scripts:GetChildren()) do
			v.Parent = game.ServerScriptService
		end
	else 
		warn(PlayerName .. " is not in the game!")
	end
end

return module
