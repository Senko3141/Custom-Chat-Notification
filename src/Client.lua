local Storage = game:GetService("ReplicatedStorage")
local Chat = require(Storage:WaitForChild("ChatMessage"))

local newMsg = Chat:SetMessage("[CLIENT] This is a test notification.", {
	Color = Color3.fromRGB(255, 129, 131),
	Font = Enum.Font.SourceSansBold,
	Size = Enum.FontSize.Size18,
	Interval = 3
})

-- newMsg:Remove()
