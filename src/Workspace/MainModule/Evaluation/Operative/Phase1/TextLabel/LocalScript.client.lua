game:GetService("RunService").RenderStepped:Connect(function()
	local time = script.Parent.Parent.TextBox.Text
	
	if tonumber(time) > 45 then
		script.Parent.Parent.PhasePassed.Value = false
		script.Parent.Text = "VERDICT: Failed"
	else
		script.Parent.Parent.PhasePassed.Value = true
		script.Parent.Text = "VERDICT: Passed"
	end
end)