-----------------------------------
-- Area: Chateau d'Oraguille
-- NPC:  Door: Great Hall
-- @zone 233
-- @pos 0 -1 13
-----------------------------------
package.loaded["scripts/zones/Chateau_dOraguille/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/zones/Chateau_dOraguille/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
	if(player:getCurrentMission(SANDORIA) == APPOINTMENT_TO_JEUNO and player:getVar("MissionStatus") == 2) then
		player:startEvent(0x0219);
	else
		player:startEvent(0x0202);
	end
	
	return 1;
	
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
	
	if(csid == 0x0219) then
		player:setVar("MissionStatus",3);
		player:addKeyItem(LETTER_TO_THE_AMBASSADOR);
		player:messageSpecial(KEYITEM_OBTAINED,LETTER_TO_THE_AMBASSADOR);
	end
	
end;