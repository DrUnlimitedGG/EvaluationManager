local exportoptions = script.Parent.ExportOptions
local image = "http://www.roblox.com/asset/?id=12690727184"

script.Parent.Phase1.MouseButton1Click:Connect(function()
	exportoptions.Phase1.Value = not exportoptions.Phase1.Value
	
	if exportoptions.Phase1.Value == false then
		script.Parent.Phase1.Image = ""
	elseif exportoptions.Phase1.Value then
		script.Parent.Phase1.Image = "http://www.roblox.com/asset/?id=12690727184"
	end
	
end)

script.Parent.Phase2.MouseButton1Click:Connect(function()
	exportoptions.Phase2.Value = not exportoptions.Phase2.Value

	if exportoptions.Phase1.Value == false then
		script.Parent.Phase1.Image = ""
	elseif exportoptions.Phase1.Value then
		script.Parent.Phase1.Image = "http://www.roblox.com/asset/?id=12690727184"
	end

end)

script.Parent.Phase1.MouseButton1Click:Connect(function()
	exportoptions.Phase1.Value = not exportoptions.Phase1.Value

	if exportoptions.Phase1.Value == false then
		script.Parent.Phase1.Image = ""
	elseif exportoptions.Phase1.Value then
		script.Parent.Phase1.Image = "http://www.roblox.com/asset/?id=12690727184"
	end

end)

script.Parent.Phase1.MouseButton1Click:Connect(function()
	exportoptions.Phase1.Value = not exportoptions.Phase1.Value

	if exportoptions.Phase1.Value == false then
		script.Parent.Phase1.Image = ""
	elseif exportoptions.Phase1.Value then
		script.Parent.Phase1.Image = "http://www.roblox.com/asset/?id=12690727184"
	end

end)