local enchantedGems = {676, 675, 677, 678}

local enchantableItems = {3271, 7383, 7384, 7406, 7402, 3317, 3318, 7389, 7380, 3342, 3311, 3333, 7415, 7392, 3279, 3447, 8077}

local enchantedItems = {
	[3271] = {660, 679, 779, 794},
	[7383] = {661, 680, 780, 795},
	[7384] = {662, 681, 781, 796},
	[7406] = {663, 682, 782, 797},
	[7402] = {664, 683, 783, 798},
	[3317] = {665, 684, 784, 801},
	[3318] = {666, 685, 785, 802},
	[7389] = {667, 686, 786, 803},
	[7380] = {668, 687, 787, 804},
	[3342] = {669, 688, 788, 805},
	[3311] = {670, 689, 789, 806},
	[3333] = {671, 690, 790, 807},
	[7415] = {672, 691, 791, 808},
	[7392] = {673, 692, 792, 809},
	[3279] = {674, 693, 793, 810},
	[3447] = {763, 762, 774, 761},
	[8077] = {8078, 8079, 8081, 8080}
}

local enchanting = Action()

function enchanting.onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if item.itemid == 676 and isInArray({3123, 9020}, target.itemid) then
		target:transform(9019)
		item:remove(1)
		toPosition:sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	end

	if item.itemid == 677 and isInArray({9035, 9040}, target.itemid) then
		target:transform(target.itemid - 1)
		target:decay()
		item:remove(1)
		toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
		return true
	end

	if isInArray(enchantedGems, item.itemid) then
		if not isInArray(enchantableItems, target.itemid) then
			fromPosition:sendMagicEffect(CONST_ME_POFF)
			return false
		end

		local targetId = table.find(enchantedGems, item.itemid)
		if not targetId then
			return false
		end

		local subtype = target.type
		if not isInArray({3447, 8077}, target.itemid) then
			subtype = 1000
		end

		target:transform(enchantedItems[target.itemid][targetId], subtype)
		target:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		item:remove(1)
		return true
	end

	return false
end

enchanting:id(675, 676, 677, 678)
enchanting:register()