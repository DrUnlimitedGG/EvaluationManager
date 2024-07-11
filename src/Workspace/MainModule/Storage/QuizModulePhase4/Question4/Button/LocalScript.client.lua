local saveQuestions = require(script.Parent.Parent.Parent.SaveQuestion)

script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Timer:ClearAllChildren()
	saveQuestions.question5Begin()
end)