script.Parent.Beginning.AnchorPoint = Vector2.new(0.5, 0.5)
script.Parent.Beginning.Position = UDim2.new(0.5, 0, 3, script.Parent.Beginning.Size.Y.Offset/2)

script.Parent.Beginning.Visible = true

wait(1)
script.Parent.Beginning:TweenPosition(UDim2.new(0.5, 0, 0.5, 0))