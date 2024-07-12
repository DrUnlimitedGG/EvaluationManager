local sword = script.Parent.OneSword
local gun = script.Parent.OneGun

local pass = script.Parent.OnePassed
local fail = script.Parent.OneFailed

local goodColor = Color3.fromRGB(0, 170, 0)
local badColor = Color3.fromRGB(255, 0, 0)

sword.MouseButton1Click:Connect(function()
	sword.BackgroundColor3 = goodColor
	gun.BackgroundColor3 = badColor
	script.Parent.arena.Value = "Sword Bots"
end)

gun.MouseButton1Click:Connect(function()
	sword.BackgroundColor3 = badColor
	gun.BackgroundColor3 = goodColor
	script.Parent.arena.Value = "Gun Bots"
end)

pass.MouseButton1Click:Connect(function()
	pass.BackgroundColor3 = goodColor
	fail.BackgroundColor3 = badColor
	script.Parent.passed.Value = true
end)

fail.MouseButton1Click:Connect(function()
	fail.BackgroundColor3 = goodColor
	pass.BackgroundColor3 = badColor
	script.Parent.passed.Value = false

end)