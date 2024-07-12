local saveQuestions = require(script.Parent.Parent.Parent.SaveQuestion)

script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Visible = false
	script.Parent.Parent.Parent.Info.Visible = true
	
	saveQuestions.requestQuestions()
end)