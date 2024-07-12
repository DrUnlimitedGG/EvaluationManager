game.ReplicatedStorage.FilterCheckClient.OnClientEvent:Connect(function(message)
	script.Parent.Parent.Visible = true
	script.Parent.Text = message
end)