local saveQuestions = require(script.Parent.Parent.Parent.SaveQuestion)

while true do
	if script.Parent.Parent.Visible == true then
		for timerCount = 180, 0, -1 do
			script.Parent.Text = "Time Left: "..tostring(timerCount)
			wait(1)
		end
		
		saveQuestions.endingBegin()
	end
	
	wait()
end