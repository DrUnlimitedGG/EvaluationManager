game.ReplicatedStorage:WaitForChild("Evaluee").OnServerEvent:Connect(function(player, name)
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
		local varName = name
		game.ServerStorage.BeingEvaluated.Value = varName
	else
		warn("Remove event fired without perms!")
	end
end)