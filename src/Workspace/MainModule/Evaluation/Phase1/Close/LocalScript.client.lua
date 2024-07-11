local DATA = script.Parent.Parent.Parent.DATA.Phase1
local notifications = require(script.Parent.Parent.Parent.Notify)

script.Parent.MouseButton1Click:Connect(function()
	DATA.PassedPhase.Value = script.Parent.Parent.PhasePassed.Value
	
	DATA.TowerTime.Value = script.Parent.Parent.TextBox.Text
	
	notifications.notification("Data saved!")
	
	script.Parent.Parent:TweenPosition(UDim2.new(0,0,1.5,0))
	script.Parent.Parent.Parent.Panel:TweenPosition(UDim2.new(0,0,1,0))
	
end)