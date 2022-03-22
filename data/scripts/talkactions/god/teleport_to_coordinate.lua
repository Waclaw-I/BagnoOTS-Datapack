local teleportToCoordinate = TalkAction("/tpto")

function teleportToCoordinate.onSay(player, words, param)
	if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GOD then
		return true
	end

	if param == "" then
		player:sendCancelMessage("Command param required.")
		return false
	end

	local params = param:split(",")
	local x,y,z
	if not params[3] then
		player:sendCancelMessage("Provide x,y,z parameters.")
	end

	x = params[1]
	y = params[2]
	z = params[3]

	local position = Position(x, y, z)

	if not Tile(position) then
		player:sendCancelMessage("Tile not found")
	end

	player:teleportTo(Position(x, y, z))
	return true
end

teleportToCoordinate:separator(" ")
teleportToCoordinate:register()