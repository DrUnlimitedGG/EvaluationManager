game:GetService("RunService").RenderStepped:Connect(function()
	local time = script.Parent.Parent.TextBox.Text
	
	if tonumber(time) > 14 then
		script.Parent.Parent.PhasePassed.Value = true
		script.Parent.Text = "VERDICT: Passed"
	else
		script.Parent.Parent.PhasePassed.Value = false
		script.Parent.Text = "VERDICT: Failed"
	end
end)