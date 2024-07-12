local rs = game:GetService("RunService")
rs.Stepped:Connect(function()
	script.Parent.Rotation += 1
end)