-----------------------------------
-- Area: Metalworks
-- NPC: Iron Eater
-- Involved in Missions
-- @zone
-- @pos 
-----------------------------------
package.loaded["scripts/zones/Metalworks/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/missions");
require("scripts/zones/Metalworks/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	currentMission = player:getCurrentMission(BASTOK);
	missionStatus = player:getVar("MissionStatus");

	if(currentMission == THE_FOUR_MUSKETEERS and missionStatus == 0) then -- Four Musketeers
		player:startEvent(0x02cb);
	elseif(currentMission == THE_FOUR_MUSKETEERS and missionStatus == 1) then
		player:startEvent(0x02cc);
	else
		player:startEvent(0x0301);
	end
	
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);

	if(csid == 0x02cb and option == 0) then
		player:setVar("MissionStatus",1);
	end

end;