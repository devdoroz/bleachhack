_G.script_key = getgenv()['script_key'] or getfenv()['script_key']
local debris = game:GetService("Debris")

local games = {
	[4777817887] = "https://api.luarmor.net/files/v3/loaders/3915a1fdfb05a5f46118eb6fccbd48a6.lua",
	[3150475059] = "https://api.luarmor.net/files/v3/loaders/7e2acc0ac5385e8677fcfdf16efcd510.lua",
	[184199275] = "https://api.luarmor.net/files/v3/loaders/ae959005deeaceec2423cacc3d5ff772.lua"
}

local freeGames = {
	[4777817887] = "https://api.luarmor.net/files/v3/loaders/3915a1fdfb05a5f46118eb6fccbd48a6.lua",
	[3150475059] = "https://api.luarmor.net/files/v3/loaders/50ac53ef9bc082c5e184696d281fc839.lua",
	[184199275] = "https://api.luarmor.net/files/v3/loaders/ae959005deeaceec2423cacc3d5ff772.lua"
}

local link = (_G.script_key and games or freeGames)[game.GameId]

if not link then
	local message = Instance.new("Message")
	message.Parent = workspace
	message.Text = "Game isn't supported, sorry!"
	debris:AddItem(message, 3)
	return
end

loadstring(game:HttpGet(link))()
