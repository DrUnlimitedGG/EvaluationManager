local notifications = require(script.Parent.Parent.Parent.Notify)
local username
local rank
local remote = game.ReplicatedStorage:WaitForChild("Evaluator")
local evalueeRemote = game.ReplicatedStorage:WaitForChild("Evaluee")

script.Parent.MouseButton1Click:Connect(function()
	username = script.Parent.Parent.EnterName.Text
	rank = script.Parent.Parent.Parent.DATA.EvalSelected.Value

	if username == "" or rank == "" then
		notifications.notification("You need to actually fill it out bro")
	else
		script.Parent.Parent.Parent.DATA.Username.Value = username
		script.Parent.Parent.Parent.Operative.DATA.Username.Value = username

		script.Parent.Parent.Parent.Operative.DATA.EvalSelected.Value = rank

		notifications.notification("Beginning " .. rank .. " eval for " .. username)

		remote:FireServer()
		evalueeRemote:FireServer(username)

		script.Parent.Parent.Visible = false

		if rank == "Trooper" then
			script.Parent.Parent.Parent.Panel.Visible = true
			script.Parent.Parent.Parent.Panel:TweenPosition(UDim2.new(0,0,1,0))
		elseif rank == "Operative" then
			script.Parent.Parent.Parent.Operative.Panel.Visible = true
			script.Parent.Parent.Parent.Operative.Panel:TweenPosition(UDim2.new(0,0,1,0))

		end

	end

end)