local internalNpcName = "Shrek"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1212
}

npcConfig.flags = {
	floorchange = false
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcConfig.shop = {
	-- Attack Imbuements
	-- Fire Damage Imbuement
	{ itemName = "fiery heart", clientId = 9636, buy = 3 * 375 },
	{ itemName = "green dragon scale", clientId = 5920, buy = 3 * 100 },
	{ itemName = "demon horn", clientId = 5954, buy = 3 * 1000 },
	-- Earth Damage Imbuement
	{ itemName = "swamp grass", clientId = 9686, buy = 3 * 20 },
	{ itemName = "poisonous slime", clientId = 9640, buy = 3 * 50 },
	{ itemName = "slime heart", clientId = 8143, buy = 3 * 160 },
	-- Ice Damage Imbuement
	{ itemName = "frosty heart", clientId = 9661, buy = 3 * 280 },
	{ itemName = "seacrest hair", clientId = 21801, buy = 3 * 260 },
	{ itemName = "polar bear paw", clientId = 9650, buy = 3 * 30 },
	-- Energy Damage Imbuement
	{ itemName = "rorc feather", clientId = 18993, buy = 3 * 70 },
	{ itemName = "peacock feather fan", clientId = 21975, buy = 3 * 350 },
	{ itemName = "energy vein", clientId = 23508, buy = 3 * 270 },
	-- Death Damage Imbuement
	{ itemName = "pile of grave earth", clientId = 11484, buy = 3 * 25 },
	{ itemName = "demonic skeletal hand", clientId = 9647, buy = 3 * 80 },
	{ itemName = "petrified scream", clientId = 10420, buy = 3 * 250 },
	-- Life Leech
	{ itemName = "vampire teeth", clientId = 9685, buy = 3 * 275 },
	{ itemName = "bloody pincers", clientId = 9633, buy = 3 * 100 },
	{ itemName = "piece of dead brain", clientId = 9663, buy = 3 * 420 },
	-- Mana Leech
	{ itemName = "rope belt", clientId = 11492, buy = 3 * 66 },
	{ itemName = "silencer claws", clientId = 20200, buy = 3 * 390 },
	{ itemName = "some grimeleech wings", clientId = 22730, buy = 3 * 1200 },
	-- Critical Hit
	{ itemName = "protective charm", clientId = 11444, buy = 3 * 60 },
	{ itemName = "sabretooth", clientId = 10311, buy = 3 * 400 },
	{ itemName = "vexclaw talon", clientId = 22728, buy = 3 * 1100 },

	-- Protective Imbuements
	-- Death Protection
	{ itemName = "flask of embalming fluid", clientId = 11466, buy = 3 * 30 },
	{ itemName = "gloom wolf fur", clientId = 22007, buy = 3 * 70 },
	{ itemName = "mystical hourglass", clientId = 9660, buy = 3 * 700 },
	-- Earth Protection
	{ itemName = "piece of swampling wood", clientId = 17823, buy = 3 * 30 },
	{ itemName = "snake skin", clientId = 9694, buy = 3 * 400 },
	{ itemName = "brimstone fangs", clientId = 11702, buy = 3 * 380 },
	-- Fire Protection
	{ itemName = "green dragon leather", clientId = 5877, buy = 3 * 100 },
	{ itemName = "blazing bone", clientId = 16131, buy = 3 * 610 },
	{ itemName = "draken sulphur", clientId = 11658, buy = 3 * 550 },
	-- Ice Protection
	{ itemName = "winter wolf fur", clientId = 10295, buy = 3 * 20 },
	{ itemName = "thick fur", clientId = 10307, buy = 3 * 150 },
	{ itemName = "deepling warts", clientId = 14012, buy = 3 * 180 },
	-- Energy Protection
	{ itemName = "wyvern talisman", clientId = 9644, buy = 3 * 265 },
	{ itemName = "crawler head plating", clientId = 14079, buy = 3 * 210 },
	{ itemName = "wyrm scale", clientId = 9665, buy = 3 * 400 },
	-- Holy Protection
	{ itemName = "cultish robe", clientId = 9639, buy = 3 * 150 },
	{ itemName = "cultish mask", clientId = 9638, buy = 3 * 280 },
	{ itemName = "hellspawn tail", clientId = 10304, buy = 3 * 475 },
	-- Paralysis Deflection
	{ itemName = "wereboar hooves", clientId = 22053, buy = 3 * 175 },
	{ itemName = "crystallized anger", clientId = 23507, buy = 3 * 400 },
	{ itemName = "quill", clientId = 28567, buy = 3 * 1100 },

	-- Support Imbuements
	-- Walking Speed
	{ itemName = "damselfly wing", clientId = 17458, buy = 3 * 20 },
	{ itemName = "compass", clientId = 10302, buy = 3 * 45 },
	{ itemName = "waspoid wing", clientId = 14081, buy = 3 * 190 },

	-- Capacity
	{ itemName = "fairy wings", clientId = 25694, buy = 3 * 200 },
	{ itemName = "little bowl of myrrh", clientId = 25697, buy = 3 * 500 },
	{ itemName = "goosebump leather", clientId = 20205, buy = 3 * 650 },

	-- Skill Improving Imbuements
	-- Axe Fighting
	{ itemName = "orc tooth", clientId = 10196, buy = 3 * 150 },
	{ itemName = "battle stone", clientId = 11447, buy = 3 * 290 },
	{ itemName = "moohtant horn", clientId = 21200, buy = 3 * 140 },
	-- Sword Fighting
	{ itemName = "lion's mane", clientId = 9691, buy = 3 * 60 },
	{ itemName = "mooh'tah shell", clientId = 21202, buy = 3 * 110 },
	{ itemName = "war crystal", clientId = 9654, buy = 3 * 460 },
	-- Club Fighting
	{ itemName = "cyclops toe", clientId = 9657, buy = 3 * 55 },
	{ itemName = "ogre nose ring", clientId = 22189, buy = 3 * 210 },
	{ itemName = "warmaster's wristguards", clientId = 10405, buy = 3 * 200 },
	-- Distance Fighting
	{ itemName = "elven scouting glass", clientId = 11464, buy = 3 * 50 },
	{ itemName = "elven hoof", clientId = 18994, buy = 3 * 115 },
	{ itemName = "metal spike", clientId = 10298, buy = 3 * 320 },
	-- Shielding
	{ itemName = "piece of scarab shell", clientId = 9641, buy = 3 * 45 },
	{ itemName = "brimstone shell", clientId = 11703, buy = 3 * 210 },
	{ itemName = "frazzle skin", clientId = 20199, buy = 3 * 400 },
	-- Magic Level
	{ itemName = "elvish talisman", clientId = 9635, buy = 3 * 45 },
	{ itemName = "broken shamanic staff", clientId = 11452, buy = 3 * 35 },
	{ itemName = "strand of medusa hair", clientId = 10309, buy = 3 * 600 },
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, inBackpacks, name, totalCost)
	npc:sellItem(player, itemId, amount, subType, true, inBackpacks, 2854)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Bought %ix %s for %i %s.", amount, name, totalCost, ItemType(npc:getCurrency()):getPluralName():lower()))
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, clientId, subtype, amount, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

npcHandler:setMessage(MESSAGE_GREET, "What are you doing in my swamp?")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Buy what you want and go away.")
npcHandler:setMessage(MESSAGE_FAREWELL, "That’ll do Donkey, that’ll do.")
npcHandler:addModule(FocusModule:new())

npcType:register(npcConfig)