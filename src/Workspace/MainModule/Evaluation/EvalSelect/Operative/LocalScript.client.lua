script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Parent.DATA.EvalSelected.Value = "Operative"
	script.Parent.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	script.Parent.Parent.Trooper.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
end)