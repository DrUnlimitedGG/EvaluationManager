local tweenservice = game:GetService("TweenService")
local timer = 7

while timer > 0 do
	wait(1)
	timer = timer - 1
	script.Parent.Text = timer
	
end

local tweeninfo = TweenInfo.new(0.4)
local tween1 = tweenservice:Create(script.Parent.Parent, tweeninfo, {BackgroundTransparency = 1})
local tween2 = tweenservice:Create(script.Parent, tweeninfo, {TextTransparency = 1})
local tween3 = tweenservice:Create(script.Parent.Parent.Notification, tweeninfo, {TextTransparency = 1})
local tween4 = tweenservice:Create(script.Parent.Parent.TextLabel, tweeninfo, {TextTransparency = 1})

tween1:Play()
tween2:Play()
tween3:Play()
tween4:Play()

wait(0.75)
script.Parent.Parent:Destroy()