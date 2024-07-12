local DATA = script.Parent.Parent.Parent.DATA.Phase2
local notifications = require(script.Parent.Parent.Parent.Notify)

DATA.PassedPhase.Value = false

DATA.PassFail.PassedR1.Value = false
DATA.PassFail.PassedR2.Value = false
DATA.PassFail.PassedRed.Value = false

DATA.Notes.Round1Notes.Value = ""
DATA.Notes.Round2Notes.Value = ""
DATA.Notes.RedemptionNotes.Value = ""

DATA.PassFail.R1Type.Value = "Sword Bots"
DATA.PassFail.R2Type.Value = "Sword Bots"
DATA.PassFail.RedType.Value = "Sword Bots"

script.Parent.MouseButton1Click:Connect(function()
	DATA.PassedPhase.Value = script.Parent.Parent.PhasePassed.Value
	
	DATA.PassFail.PassedR1.Value = script.Parent.Parent.Round1.passed.Value
	DATA.PassFail.PassedR2.Value = script.Parent.Parent.Round2.passed.Value
	DATA.PassFail.PassedRed.Value = script.Parent.Parent.Redemption.passed.Value
	
	DATA.Notes.Round1Notes.Value = script.Parent.Parent.Round1.TextBox.Text
	DATA.Notes.Round2Notes.Value = script.Parent.Parent.Round2.TextBox.Text
	DATA.Notes.RedemptionNotes.Value = script.Parent.Parent.Redemption.TextBox.Text
	
	DATA.PassFail.R1Type.Value = script.Parent.Parent.Round1.arena.Value
	DATA.PassFail.R2Type.Value = script.Parent.Parent.Round2.arena.Value
	DATA.PassFail.RedType.Value = script.Parent.Parent.Redemption.arena.Value
	
	notifications.notification("Data saved!")
	
	script.Parent.Parent:TweenPosition(UDim2.new(0,0,1.5,0))
	script.Parent.Parent.Parent.Panel:TweenPosition(UDim2.new(0,0,1,0))
	
end)