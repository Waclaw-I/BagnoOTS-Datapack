local swampPosition = Position(32825, 31965, 7)

local shrek = GlobalEvent("shrek")
function shrek.onStartup()

	local shrek = Game.createNpc("shrek", swampPosition)
	if shrek then
		shrek:setMasterPos(swampPosition)
		shrek:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end

	Spdlog.info("Shrek arrived at his swamp")
	return true

end
shrek:register() 