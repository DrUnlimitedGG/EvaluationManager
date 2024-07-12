local questions = {}
local answers = {}

local notifyScript = require(script.Parent.Parent.Parent.Parent.Notify)

local quizComplete = game.ReplicatedStorage:WaitForChild("quizComplete")

--[[while true do
	if (game.ReplicatedStorage.quizComplete.Value == false) then
		wait(1)
	else
		script.Parent.TextLabel.Text = "Quiz received!"
		notifyScript.notification("User has finished their quiz, open the Quiz Panel to see the results")
		break
	end
end

for i, v in pairs(game.ReplicatedStorage.quiz.questions:GetChildren()) do
	table.insert(questions, v.Value)
end

for i, v in pairs(game.ReplicatedStorage.quiz.answers:GetChildren()) do
	table.insert(answers, v.Value)
end

local i = 1
while (i <= 8) do
	script.Parent["Question"..i].Text = questions[i]
	script.Parent["Answer"..i].Text = answers[i]
	i = i + 1
	wait()
end]]--

quizComplete.OnClientEvent:Connect(function()
	script.Parent.TextLabel.Text = "Quiz received!"
	notifyScript.notification("User has finished their quiz, open the Quiz Panel to see the results")	
	
	for i, v in pairs(game.ReplicatedStorage.quiz.questions:GetChildren()) do
		table.insert(questions, v.Value)
	end

	for i, v in pairs(game.ReplicatedStorage.quiz.answers:GetChildren()) do
		table.insert(answers, v.Value)
	end
	
	local i = 1
	while (i <= 8) do
		print("Updating text")
		script.Parent["Question"..i].Text = questions[i]
		script.Parent["Answer"..i].Text = answers[i]
		i = i + 1
		wait()
	end
	
	for i in pairs(questions) do
		questions[i] = nil
	end
	
	for i in pairs(answers) do
		answers[i] = nil
	end
	
end)

