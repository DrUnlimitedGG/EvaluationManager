local SaveQuestion = {}
local questionEvent = game.ReplicatedStorage.questionEvent
local answerEvent = game.ReplicatedStorage.answerEvent

local easyQuestions = {}
local mediumQuestions = {}
local hardQuestions = {}

local questionRequest = game.ReplicatedStorage.QuestionReceive

function SaveQuestion.requestQuestions()
	easyQuestions = questionRequest:InvokeServer("Easy")
	mediumQuestions = questionRequest:InvokeServer("Medium")
	hardQuestions = questionRequest:InvokeServer("Hard")
end

function SaveQuestion.question1Begin()
	script.Parent.Info.Visible = false
	script.Parent.Question1.Visible = true	

	-- local length = #easyQuestions
	-- local ranNum = math.random(1,length)
	local eQuestion = easyQuestions[1]

	-- table.remove(easyQuestions,ranNum)
	script.Parent.Question1.Title.Text = "1. "..eQuestion
	

end

function SaveQuestion.question2Begin()

	local folder = Instance.new("Folder")
	folder.Name = "Question1"
	folder.Parent = script.Parent.Questions

	local question = Instance.new("StringValue")
	question.Value = script.Parent.Question1.Title.Text
	question.Name = "Question"
	question.Parent = folder

	local answer = Instance.new("StringValue")
	answer.Value = script.Parent.Question1.TextBox.Text
	answer.Name = "Answer"
	answer.Parent = folder

	-- Question 2 code:
	script.Parent.Question1:Destroy()
	script.Parent.Question2.Visible = true

	-- local length = #easyQuestions
	-- local ranNum = math.random(1,length)
	local eQuestion = easyQuestions[2]

	-- table.remove(easyQuestions,ranNum)
	script.Parent.Question2.Title.Text = "2. "..eQuestion	

end

function SaveQuestion.question3Begin()
	local folder = Instance.new("Folder")
	folder.Name = "Question2"
	folder.Parent = script.Parent.Questions

	local question = Instance.new("StringValue")
	question.Value = script.Parent.Question2.Title.Text
	question.Name = "Question"
	question.Parent = folder

	local answer = Instance.new("StringValue")
	answer.Value = script.Parent.Question2.TextBox.Text
	answer.Name = "Answer"
	answer.Parent = folder

	-- Question 3 code:
	script.Parent.Question2:Destroy()
	script.Parent.Question3.Visible = true

	-- local length = #mediumQuestions
	-- local ranNum = math.random(1, length)
	local mQuestion = mediumQuestions[1]

	-- table.remove(mediumQuestions,ranNum)
	script.Parent.Question3.Title.Text = "3. "..mQuestion

end

function SaveQuestion.question4Begin()
	local folder = Instance.new("Folder")
	folder.Name = "Question3"
	folder.Parent = script.Parent.Questions

	local question = Instance.new("StringValue")
	question.Value = script.Parent.Question3.Title.Text
	question.Name = "Question"
	question.Parent = folder

	local answer = Instance.new("StringValue")
	answer.Value = script.Parent.Question3.TextBox.Text
	answer.Name = "Answer"
	answer.Parent = folder

	-- Question 4 code:
	script.Parent.Question3:Destroy()
	script.Parent.Question4.Visible = true

	-- local length = #mediumQuestions
	-- local ranNum = math.random(1, length)
	local mQuestion = mediumQuestions[2]

	-- table.remove(mediumQuestions,ranNum)
	script.Parent.Question4.Title.Text = "4. "..mQuestion

end

function SaveQuestion.question5Begin()
	local folder = Instance.new("Folder")
	folder.Name = "Question4"
	folder.Parent = script.Parent.Questions

	local question = Instance.new("StringValue")
	question.Value = script.Parent.Question4.Title.Text
	question.Name = "Question"
	question.Parent = folder

	local answer = Instance.new("StringValue")
	answer.Value = script.Parent.Question4.TextBox.Text
	answer.Name = "Answer"
	answer.Parent = folder

	-- Question 5 code:
	script.Parent.Question4:Destroy()
	script.Parent.Question5.Visible = true

	-- local length = #mediumQuestions
	-- local ranNum = math.random(1, length)
	local mQuestion = mediumQuestions[3]

	-- table.remove(mediumQuestions,ranNum)
	script.Parent.Question5.Title.Text = "5. "..mQuestion

end

function SaveQuestion.question6Begin()
	local folder = Instance.new("Folder")
	folder.Name = "Question5"
	folder.Parent = script.Parent.Questions

	local question = Instance.new("StringValue")
	question.Value = script.Parent.Question5.Title.Text
	question.Name = "Question"
	question.Parent = folder

	local answer = Instance.new("StringValue")
	answer.Value = script.Parent.Question5.TextBox.Text
	answer.Name = "Answer"
	answer.Parent = folder

	-- Question 6 code:
	script.Parent.Question5:Destroy()
	script.Parent.Question6.Visible = true

	-- local length = #mediumQuestions
	-- local ranNum = math.random(1, length)
	local mQuestion = mediumQuestions[4]

	-- table.remove(mediumQuestions,ranNum)
	script.Parent.Question6.Title.Text = "6. "..mQuestion

end

function SaveQuestion.question7Begin()
	local folder = Instance.new("Folder")
	folder.Name = "Question6"
	folder.Parent = script.Parent.Questions

	local question = Instance.new("StringValue")
	question.Value = script.Parent.Question6.Title.Text
	question.Name = "Question"
	question.Parent = folder

	local answer = Instance.new("StringValue")
	answer.Value = script.Parent.Question6.TextBox.Text
	answer.Name = "Answer"
	answer.Parent = folder

	-- Question 7 code:
	script.Parent.Question6:Destroy()
	script.Parent.Question7.Visible = true

	-- local length = #hardQuestions
	-- local ranNum = math.random(1, length)
	local hQuestion = hardQuestions[1]

	-- table.remove(hardQuestions,ranNum)
	script.Parent.Question7.Title.Text = "7. "..hQuestion

end

function SaveQuestion.question8Begin()
	local folder = Instance.new("Folder")
	folder.Name = "Question7"
	folder.Parent = script.Parent.Questions

	local question = Instance.new("StringValue")
	question.Value = script.Parent.Question7.Title.Text
	question.Name = "Question"
	question.Parent = folder

	local answer = Instance.new("StringValue")
	answer.Value = script.Parent.Question7.TextBox.Text
	answer.Name = "Answer"
	answer.Parent = folder

	-- Question 8 code:
	script.Parent.Question7:Destroy()
	script.Parent.Question8.Visible = true

	-- local length = #hardQuestions
	-- local ranNum = math.random(1, length)
	local hQuestion = hardQuestions[2]

	-- table.remove(hardQuestions,ranNum)
	script.Parent.Question8.Title.Text = "8. "..hQuestion

end

function SaveQuestion.endingBegin()
	local folder = Instance.new("Folder")
	folder.Name = "Question8"
	folder.Parent = script.Parent.Questions

	local question = Instance.new("StringValue")
	question.Value = script.Parent.Question8.Title.Text
	question.Name = "Question"
	question.Parent = folder

	local answer = Instance.new("StringValue")
	answer.Value = script.Parent.Question8.TextBox.Text
	answer.Name = "Answer"
	answer.Parent = folder

	-- Question 8 code:
	script.Parent.Question8:Destroy()
	script.Parent.Ending.Visible = true

	script.Parent.Ending.attemptToSend.Text = "Congratulations! You finished!\n\nAttempting to send quiz...\nDO NOT LEAVE THE GAME\nBe patient, this may take a minute."	

	local folder = script.Parent.Questions

	--[[local data = {
		"**" .. folder.Question1.Question.Value .."** `" .. folder.Question1.Answer.Value .. "`".. "\n" ..
		"**" .. folder.Question2.Question.Value .."** `" .. folder.Question2.Answer.Value .. "`".. "\n" ..
		"**" .. folder.Question3.Question.Value .."** `" .. folder.Question3.Answer.Value .. "`".. "\n" ..
		"**" .. folder.Question4.Question.Value .."** `" .. folder.Question4.Answer.Value .. "`".. "\n" ..
		"**" .. folder.Question5.Question.Value .."** `" .. folder.Question5.Answer.Value .. "`".. "\n" ..
		"**" .. folder.Question6.Question.Value .."** `" .. folder.Question6.Answer.Value .. "`".. "\n" ..
		"**" .. folder.Question7.Question.Value .."** `" .. folder.Question7.Answer.Value .. "`".. "\n" ..
		"**" .. folder.Question8.Question.Value .."** `" .. folder.Question8.Answer.Value .. "`"
	}
	
	game.ReplicatedStorage.QuizFinishedEvent:FireServer(data)
	print("fired server")]]--

	
	local toSendQs = {}
	for i, v in pairs(folder:GetChildren()) do
		table.insert(toSendQs, v.Question.Value)
	end
	
	questionEvent:FireServer(toSendQs)
	
	local toSendAs = {}
	for i, v in pairs(folder:GetChildren()) do
		table.insert(toSendAs, v.Answer.Value)
	end

	answerEvent:FireServer(toSendAs)
	
	script.Parent.Ending.attemptToSend.Text = "Congratulations! You finished!\n\nQuiz sent to server successfully!"	
	
	wait(5)
	script.Parent.Ending.AnchorPoint = Vector2.new(0.5, 0)
	script.Parent.Ending:TweenPosition(UDim2.new(0.5, 0, 1, 0))
	
	script.Parent.Name = "QuizModulePhase42"
	
	for i, v in pairs(script.Parent.Parent:GetChildren()) do
		if v.Name == "QuizModulePhase4" then
			v:Destroy()
		end
	end
	
	script.Parent:Destroy()


end

return SaveQuestion
