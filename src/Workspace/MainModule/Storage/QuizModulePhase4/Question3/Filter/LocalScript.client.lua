script.Parent.MouseButton1Click:Connect(function()
	game.ReplicatedStorage.FilterCheck:FireServer(script.Parent.Parent.TextBox.Text)
end)