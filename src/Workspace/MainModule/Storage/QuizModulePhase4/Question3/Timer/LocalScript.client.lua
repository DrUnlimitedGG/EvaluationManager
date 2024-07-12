local saveQuestions = require(script.Parent.Parent.Parent.SaveQuestion)

while true do
	if script.Parent.Parent.Visible == true then
		for timerCount = 120, 0, -1 do
			script.Parent.Text = "Time Left: "..tostring(timerCount)
			wait(1)
		end
		
		saveQuestions.question4Begin()
	end
	
	wait()
end