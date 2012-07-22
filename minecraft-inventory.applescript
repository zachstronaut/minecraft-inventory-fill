-- 
-- AppleScript to Fill Minecraft Inventory
--  
-- Zachary Johnson
-- 2012-07-22
-- http://github.com/zachstronaut
-- 

tell application "System Events"
	-- Bring it to the front
	tell application "Minecraft" to activate
	
	-- Back out of the pause menu
	key code 53
	delay 1
	
	-- Enter item IDs you want to get
	-- http://www.minecraftwiki.net/wiki/Data_values
	repeat with k in {"276", "277", "278", "279", "302", "303", "304", "305", "259", "355", "345", "347", "322 2", "50 64", "261", "262 64"}
		keystroke "t"
		delay 0.1
		
		-- Put in your player's name here
		keystroke "/give sirzach "
		delay 0.1
		
		keystroke k
		delay 0.1
		
		key code 36
		delay 0.2
	end repeat
end tell