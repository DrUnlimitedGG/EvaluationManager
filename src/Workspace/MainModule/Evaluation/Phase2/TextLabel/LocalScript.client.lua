local p1 = script.Parent.Parent

game:GetService("RunService").RenderStepped:Connect(function()
	if p1.Round1.passed.Value == true or p1.Round2.passed.Value == true or p1.Redemption.passed.Value == true then
		p1.PhasePassed.Value = true
		script.Parent.Text = "VERDICT: Passed"
	else
		p1.PhasePassed.Value = false
		script.Parent.Text = "VERDICT: Failed"
	end
end)