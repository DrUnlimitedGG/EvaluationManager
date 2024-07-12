game.ReplicatedStorage.Evaluator.OnServerEvent:Connect(function(player)
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
		game.ServerStorage.Evaluator.Value = player.UserId
		
	else
		warn("Remove event fired without perms!")
	end
end)
