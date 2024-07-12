local saveQuestions = require(script.Parent.Parent.Parent.SaveQuestion)

while true do
	if script.Parent.Parent.Visible == true then
		for timerCount = 60, 0, -1 do
			script.Parent.Text = "Time Left: "..tostring(timerCount)
			wait(1)
		end
		
		saveQuestions.question3Begin()
	end
	
	wait()
end