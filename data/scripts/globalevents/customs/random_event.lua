local random_event = GlobalEvent("Random event")
local event_chance = 10 -- Event chance rolled every full hour

local function removeEvent()
    setGlobalStorageValue(GlobalStorage.ExperienceEvent, 1)
    setGlobalStorageValue(GlobalStorage.LootEvent, 1)
    setGlobalStorageValue(GlobalStorage.SkillEvent, 1)
end


local function randomeventwebhook(message) -- New local function that runs on delay to send webhook message.
	Webhook.send("[Random Event] ", message, WEBHOOK_COLOR_ONLINE, announcementChannels["serverAnnouncements"]) --Sends webhook message
end

function random_event.onThink(interval)
    removeEvent()
    if math.random(100) <= event_chance then
        local eventType = math.random(3)
        local eventImpact = math.random(100)

        local eventRate = 1.5
        if (eventImpact >= 90) then
            eventRate = 3
        elseif (eventImpact >= 70) then
            eventRate = 2.5
        elseif (eventImpact >= 40) then
            eventRate = 2
        end

        local message = "Event type not recognized";
        if eventType == 1 then
            setGlobalStorageValue(GlobalStorage.ExperienceEvent, eventRate)
            message = string.format("A random event occured! Fot next 60 minutes experience rate is multiplied by: %s", eventRate)
        elseif eventType == 2 then
            setGlobalStorageValue(GlobalStorage.LootEvent, eventRate)
            message = string.format("A random event occured! Fot next 60 minutes loot rate is multiplied by: %s", eventRate)
        else
            setGlobalStorageValue(GlobalStorage.SkillEvent, eventRate)
            message = string.format("A random event occured! Fot next 60 minutes skill rate is multiplied by: %s", eventRate)
        end

        Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
        addEvent(randomeventwebhook, 60000, message) -- Event with 1 minute delay to send webhook message after server starts.
    end
	return true
end

random_event:interval(1000 * 60 * 60) -- 1 hour interval
random_event:register() 