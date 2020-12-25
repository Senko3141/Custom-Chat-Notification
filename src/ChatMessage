-- Chat Message
--[[
	
	Senko's Chat Message System
	
	Methods:
		local Directory = require()
		
		local Message = Directory:SetMessage(str, font, interval)
		wait(5)
		Message:Remove()
]]

local StarterGui = game:GetService("StarterGui")
local RunService = game:GetService("RunService")

local m = {};
m.__index = m 


function m:SetMessage(str, data)
	if not str or not data then return end
	if not data.Color or not data.Font or not data.Size or not data.Interval then return end
	
	local color = data.Color
	local font = data.Font
	local textSize = data.Size
	local interval = data.Interval
		
	local self = setmetatable({}, m)
	self.PrevPost = os.clock()
	self.Connection = RunService.RenderStepped:Connect(function()
		if (os.clock() - self.PrevPost) >= interval then
			-- can post
			self.PrevPost = os.clock()
			StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = str,
				Color = color,
				Font = font,
				FontSize = textSize,
			})
		end
	end)
	
	return self
end

function m:Remove()
	self.Connection:Disconnect()
	self = nil
end

return m 
