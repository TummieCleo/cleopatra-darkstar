-----------------------------------
--
-- Zone: Lufaise_Meadows (24)
--
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/missions");

-----------------------------------
-- onInitialize
-----------------------------------

function onInitialize(zone)
end;

-----------------------------------		
-- onZoneIn		
-----------------------------------		

function onZoneIn(player,prevZone)		
cs = -1;	
	
	if(player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then	
		player:setPos(-475.825,-20.461,281.149,11);
	end
	
	if(player:getCurrentMission(COP) == THE_ISLE_OF_FORGOTTEN_SAINTS)then
		cs = 0x006E;
	end
	
	return cs;	
end;

-----------------------------------		
-- onRegionEnter		
-----------------------------------		

function onRegionEnter(player,region)	
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
	
	if(csid == 0x006E) then
		player:completeMission(COP,THE_ISLE_OF_FORGOTTEN_SAINTS);
		player:addMission(COP,AN_INVITATION_WEST);
	end
	
end;