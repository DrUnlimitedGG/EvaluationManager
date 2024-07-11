script.Parent.Parent.Parent.Parent:WaitForChild("DATA")
local data = script.Parent.Parent.Parent.Parent.DATA

script.Parent.MouseButton1Click:Connect(function()
	local p1 = script.Parent.Parent.ExportOptions.Phase1.Value
	local p2 = script.Parent.Parent.ExportOptions.Phase2.Value
	local p3 = script.Parent.Parent.ExportOptions.Phase3.Value
	local p4 = script.Parent.Parent.ExportOptions.Phase4.Value

	local exportString

	exportString = "__" .. data.Username.Value .."__\n"

	local phasesString = ""

	if p1 then
		phasesString = "1"
	end

	if p2 then
		phasesString = phasesString .. ", 2"
	end

	if p3 then
		phasesString = phasesString .. ", 3"
	end

	if p4 then
		phasesString = phasesString .. ", 4"
	end

	exportString = exportString .. "Trooper Evaluation - Phase " .. phasesString

	if p1 then
		exportString = exportString .. "\n\n**Phase 1** - "
		if data.Phase1.PassedPhase.Value then
			exportString = exportString .. "__Passed__\n> :white_check_mark: Tall Towers - " .. tostring(data.Phase1.TowerTime.Value) .. " seconds"
		elseif data.Phase1.PassedPhase.Value == false then
			exportString = exportString .. "__Failed__\n> :x: Tall Towers - " .. tostring(data.Phase1.TowerTime.Value) .. " seconds"
		end

	end

	if p2 then
		exportString = exportString .. "\n\n**Phase 2** - "
		
		
	end

end)


