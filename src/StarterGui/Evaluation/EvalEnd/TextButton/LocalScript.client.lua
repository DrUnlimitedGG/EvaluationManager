script.Parent.MouseButton1Click:Connect(function()
	wait(2)
	
	script.Parent.Parent.Visible = false
	script.Parent.Parent.Folder.Export.Visible = false
	script.Parent.Parent.Parent.Panel:TweenPosition(UDim2.new(0,0,1,0))
end)