script.Parent.Parent.Parent.Parent:WaitForChild("DATA")
local data = script.Parent.Parent.Parent.Parent.DATA

script.Parent.MouseButton1Click:Connect(function()
	local p1 = script.Parent.Parent.ExportOptions.Phase1.Value
	local p2 = script.Parent.Parent.ExportOptions.Phase2.Value
	local p3 = script.Parent.Parent.ExportOptions.Phase3.Value
	
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


	exportString = exportString .. "Operative Evaluation - Phase " .. phasesString

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
		if data.Phase2.PassedPhase.Value then
			exportString = exportString .. "__Passed__\n> :white_check_mark: Firing Range - " .. tostring(data.Phase2.Hits.Value) .. " hits"
		elseif data.Phase2.PassedPhase.Value == false then
			exportString = exportString .. "__Failed__\n> :x: Firing Range - " .. tostring(data.Phase2.Hits.Value) .. " hits"
		end

	end
	
	if p3 then
		exportString = exportString .. "\n\n**Phase 3** - "
		
		if data.Phase3.PassedPhase.Value then
			exportString = exportString .. "__Passed__\n"
		end
		
		if data.Phase3.PassedPhase.Value == false then
			exportString = exportString .. "__Failed__\n"
		end
			
		if data.Phase3.PassFail.PassedR1.Value or data.Phase3.PassFail.PassedR2.Value then
				
			if data.Phase3.PassFail.PassedR1.Value then
				exportString = exportString .. "> :white_check_mark: " .. data.Phase3.PassFail.R1Type.Value
					
				if not (data.Phase3.Notes.Round1Notes.Value == "") then
					exportString = exportString .. " - " .. data.Phase3.Notes.Round1Notes.Value
				end
			elseif data.Phase3.PassFail.PassedR1.Value == false then
				exportString = exportString .. "> :x: " .. data.Phase3.PassFail.R1Type.Value

				if not (data.Phase3.Notes.Round1Notes.Value == "") then
					exportString = exportString .. " - " .. data.Phase3.Notes.Round1Notes.Value
				end
			end
				
			exportString = exportString .. "\n"
				
			if data.Phase3.PassFail.PassedR2.Value then
				exportString = exportString .. "> :white_check_mark: " .. data.Phase3.PassFail.R2Type.Value

				if not (data.Phase3.Notes.Round2Notes.Value == "") then
					exportString = exportString .. " - " .. data.Phase3.Notes.Round2Notes.Value
				end
			elseif data.Phase3.PassFail.PassedR2.Value == false then
				exportString = exportString .. "> :x: " .. data.Phase3.PassFail.R2Type.Value

				if not (data.Phase3.Notes.Round2Notes.Value == "") then
					exportString = exportString .. " - " .. data.Phase3.Notes.Round2Notes.Value
				end
			end
				
		elseif not (data.Phase3.PassFail.PassedR1.Value or data.Phase3.PassFail.PassedR2.Value) then
				
			if data.Phase3.PassFail.PassedR1.Value then
				exportString = exportString .. "> :white_check_mark: " .. data.Phase3.PassFail.R1Type.Value

				if not (data.Phase3.Notes.Round1Notes.Value == "") then
					exportString = exportString .. " - " .. data.Phase3.Notes.Round1Notes.Value
				end
			elseif data.Phase3.PassFail.PassedR1.Value == false then
				exportString = exportString .. "> :x: " .. data.Phase3.PassFail.R1Type.Value

				if not (data.Phase3.Notes.Round1Notes.Value == "") then
					exportString = exportString .. " - " .. data.Phase3.Notes.Round1Notes.Value
				end
			end

			exportString = exportString .. "\n"

			if data.Phase3.PassFail.PassedR2.Value then
				exportString = exportString .. "> :white_check_mark: " .. data.Phase3.PassFail.R2Type.Value

				if not (data.Phase3.Notes.Round2Notes.Value == "") then
					exportString = exportString .. " - " .. data.Phase3.Notes.Round2Notes.Value
				end
			elseif data.Phase3.PassFail.PassedR2.Value == false then
				exportString = exportString .. "> :x: " .. data.Phase3.PassFail.R2Type.Value

				if not (data.Phase3.Notes.Round2Notes.Value == "") then
					exportString = exportString .. " - " .. data.Phase3.Notes.Round2Notes.Value
				end
			end
				
			exportString = exportString .. "\n> ---\n"
				
			if data.Phase3.PassFail.PassedRed.Value then
				exportString = exportString .. "> :white_check_mark: " .. data.Phase3.PassFail.RedType.Value

				if not (data.Phase3.Notes.RedemptionNotes.Value == "") then
					exportString = exportString .. " - " .. data.Phase3.Notes.RedemptionNotes.Value
				end
			elseif data.Phase3.PassFail.PassedRed.Value == false then
				exportString = exportString .. "> :x: " .. data.Phase3.PassFail.RedType.Value

				if not (data.Phase3.Notes.RedemptionNotes.Value == "") then
					exportString = exportString .. " - " .. data.Phase3.Notes.RedemptionNotes.Value
				end
			end
		end
			
	end
	
	
	
	exportString = exportString .. "\n\n__Verdict__:"
	exportString = exportString .. "\n\n__Discussion__"

	script.Parent.Parent.Export.TextScaled = true
	script.Parent.Parent.Export.Text = exportString
	script.Parent.Parent.Export.Visible = true

end)


