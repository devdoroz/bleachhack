_G.script_key = getgenv()['script_key'] or getfenv()['script_key']
local debris = game:GetService("Debris")

local games = {
	[4777817887] = "https://api.luarmor.net/files/v3/loaders/86d5ae1b35228252db1cd70ae526ede9.lua",
}

local link = games[game.GameId]

if not link then
	local message = Instance.new("Message")
	message.Parent = workspace
	message.Text = "Game isn't supported, sorry!"
	debris:AddItem(message, 3)
	return
end

loadstring(game:HttpGet(link))()
