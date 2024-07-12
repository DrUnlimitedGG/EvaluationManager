local notifications = require(script.Parent.Parent.Parent.Notify)

script.Parent.MouseButton1Click:Connect(function()
	notifications.notification("Attempting to fetch quiz questions...")
	
	local person = script.Parent.Parent.Parent.DATA.Username.Value
	local password = script.Parent.Parent.Password.Text
	
	local response = game.ReplicatedStorage.StartQuiz:InvokeServer(person, password)
	
	if response == "401" then
		notifications.notification("Failed: 401 Unauthorized. Invalid password!")
	elseif response == "200" then
		notifications.notification("Fetched quiz successfully! Starting quiz.")
	end
	
	--script.Parent.Parent.Parent.QuizPanel.Visible = true
end)