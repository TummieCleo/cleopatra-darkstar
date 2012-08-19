-----------------------------------
--
-- Zone: Valkurm_Dunes (103)
--
-----------------------------------

package.loaded["scripts/zones/Valkurm_Dunes/TextIDs"] = nil;
require("scripts/globals/quests");
require("scripts/globals/settings");
require("scripts/zones/Valkurm_Dunes/TextIDs");

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
   wc = player:getWeather();
	if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then	
		player:setPos(60.989,-4.898,-151.001,198);
	end	
	if (player:getQuestStatus(WINDURST, I_CAN_HEAR_A_RAINBOW) == QUEST_ACCEPTED and player:hasItem(1125,0)) then	
		colors = player:getVar("ICanHearARainbow");
		o = (tonumber(colors) % 4 >= 2);
		r = (tonumber(colors) % 2 >= 1);
		y = (tonumber(colors) % 8 >= 4);
		cs = 0x0003;
       if (o == false and wc < 4) then
	        player:setVar("ICanHearARainbow_Weather",1);
           player:setVar("ICanHearARainbow",colors+2);
		elseif (r == false and (wc == 4 or wc == 5)) then
			player:setVar("ICanHearARainbow_Weather",4);
			player:setVar("ICanHearARainbow",colors+1);
		elseif (y == false and (wc == 8 or wc == 9)) then
			player:setVar("ICanHearARainbow_Weather",8);
			player:setVar("ICanHearARainbow",colors+4);
		else	
			cs = -1;
		end	
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
	if (csid == 0x0003) then		
		weather = player:getVar("ICanHearARainbow_Weather");	
		if (player:getVar("ICanHearARainbow") < 127) then	
			player:updateEvent(0,0,weather);
		else	
			player:updateEvent(0,0,weather,6);
		end	
	end		
end;			

-----------------------------------			
-- onEventFinish			
-----------------------------------			

function onEventFinish(player,csid,option)			
	--printf("CSID: %u",csid);		
	--printf("RESULT: %u",option);		
	if (csid == 0x0003) then		
		player:setVar("ICanHearARainbow_Weather",0);	
	end		
end;
