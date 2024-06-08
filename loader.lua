local debris = game:GetService("Debris")

local games = {
	[13772394625] = "https://api.luarmor.net/files/v3/loaders/00975f50438ccfe5ba5c700504abd480.lua",
}

local link = games[game.PlaceId]

if not link then
	local message = Instance.new("Message")
	message.Parent = workspace
	message.Text = "Game isn't supported, sorry!"
	debris:AddItem(message, 3)
	return
end

loadstring(game:HttpGet(link))()
