local actionIdFixes = {
	{
        description = "Arito quest shortcut hole",
        itemId = 231,
		actionId = 100,
		itemPos = {x = 33214, y = 32552, z = 7},
	},
    {
        description = "Orc fortress explorer society door",
        itemId = 6264,
        transformTo = 6260,
		actionId = 50555,
		itemPos = {x = 32967, y = 31720, z = 2},
	}
}

local fixes = GlobalEvent("fixes")
function fixes.onStartup()
    for i = 1, #actionIdFixes do
        local fix = actionIdFixes[i]
        local itemToFix = Tile(fix.itemPos):getItemById(fix.itemId)

        if not itemToFix then
            Spdlog.info(string.format("init fix configuration wrong: %s", fix.description))
        else
            if fix.transformTo then
                itemToFix:transform(fix.transformTo)
            end

            itemToFix:setActionId(fix.actionId)
        end
    end
    Spdlog.info(string.format("%s action id fixes loaded", #actionIdFixes))
	return true

end
fixes:register()