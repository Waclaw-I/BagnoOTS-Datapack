-- Sends Discord webhook special notifications.
-- The URL layout is https://discord.com/api/webhooks/:id/:token
-- Leave empty if you wish to disable.

announcementChannels = {
    ["serverAnnouncements"] = "https://discord.com/api/webhooks/952531951879856199/YPOybpOOhc1P0FjwqVOxJ222bow-uGVDb3HbwIsFfA3EyXSq1jehtSbFa5FqEbglZNKh", -- Used for an announcement channel on your discord
    ["raids"] = "https://discord.com/api/webhooks/954187053703233566/KNHWhIdi_2oWV4s4BC-2o65nSIEE7TULDDJl9z98MlX2SxfASdU9uvJzHKj_ta0oj0CQ", -- Used to isolate raids on your discord
    ["player-kills"] = "https://discord.com/api/webhooks/952531951879856199/YPOybpOOhc1P0FjwqVOxJ222bow-uGVDb3HbwIsFfA3EyXSq1jehtSbFa5FqEbglZNKh", -- Self-explaining
}

-- Example of notification (After you do the config):
-- Webhook.specialSend("Server save", message, WEBHOOK_COLOR_WARNING, announcementChannels["serverAnnouncements"]) -- This is going to send a message into your server announcements channel

--[[ 
	Dev Comment: This lib can be used to add special webhook channels 
	where you are going to send your messages. Webhook.specialSend was designed
	to be used with countless possibilities.	
]]

