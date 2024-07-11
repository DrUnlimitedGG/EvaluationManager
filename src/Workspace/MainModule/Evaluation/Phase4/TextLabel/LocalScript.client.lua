game:GetService("RunService").RenderStepped:Connect(function()
	local time = script.Parent.Parent.TextBox.Text
	
	if tonumber(time) > 6 then
		script.Parent.Text = "VERDICT: Passed"
		script.Parent.Parent.PassedPhase.Value = true
	else
		script.Parent.Text = "VERDICT: Failed"
		script.Parent.Parent.PassedPhase.Value = false
	end
end)