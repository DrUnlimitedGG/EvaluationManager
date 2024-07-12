local Notify = {}
local tweenservice = game:GetService("TweenService")

function Notify.notification(text)
	print("Called!")
	
	local gui = script.NotifyGUI:Clone()
	gui.Notification.Text = text
	gui.Parent = script.Parent
	gui.Visible = true
	gui.BackgroundTransparency = 1
	
	local tweeninfo = TweenInfo.new(0.4)
	local tween = tweenservice:Create(gui, tweeninfo, {BackgroundTransparency = 0})
	tween:Play()
	
	gui.Timer.LocalScript.Enabled = true
	
end

return Notify
