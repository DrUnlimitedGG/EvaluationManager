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
	
	if exportoptions.Phase2.Value == false then
		script.Parent.Phase2.Image = ""
	elseif exportoptions.Phase2.Value then
		script.Parent.Phase2.Image = "http://www.roblox.com/asset/?id=12690727184"
	end
end)

script.Parent.Phase3.MouseButton1Click:Connect(function()
	exportoptions.Phase3.Value = not exportoptions.Phase3.Value
	
	if exportoptions.Phase3.Value == false then
		script.Parent.Phase3.Image = ""
	elseif exportoptions.Phase3.Value then
		script.Parent.Phase3.Image = "http://www.roblox.com/asset/?id=12690727184"
	end
end)