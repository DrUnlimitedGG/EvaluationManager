local viewportFrame = script.Parent

local cameraDistance = 6
local cameraFieldOfView = 50
local objectPitchAngle = 0
local objectRotationSpeed = 60

local viewportCamera = Instance.new("Camera")
viewportCamera.FieldOfView = cameraFieldOfView
viewportCamera.Parent = viewportFrame
viewportFrame.CurrentCamera = viewportCamera

local object = viewportFrame.Part
object.CFrame = CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(objectPitchAngle), 0, 0)

--  loop
game:GetService("RunService").Heartbeat:Connect(function()
	local t = os.clock()
	
	viewportCamera.CFrame = CFrame.Angles(0, math.rad(t*objectRotationSpeed), 0) * CFrame.new(0, 0, cameraDistance)
end)