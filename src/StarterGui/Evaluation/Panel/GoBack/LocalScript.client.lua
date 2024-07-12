script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent:TweenPosition(UDim2.new(0,0,1.3,0))
	script.Parent.Parent.Parent.EvalSelect.Visible = true
end)