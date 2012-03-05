-----------------------------------
--
-- Zone: Dangruf_Wadi (191)
--
-----------------------------------

package.loaded["scripts/zones/Dangruf_Wadi/TextIDs"] = nil;
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/zones/Dangruf_Wadi/TextIDs");

-----------------------------------
-- onInitialize
-----------------------------------

function onInitialize(zone)
	zone:registerRegion(1, -133.5, 2, 132.6, -132.7, 4,  133.8);  -- I-8 Geyser	
	zone:registerRegion(2, -213.5, 2,  92.6, -212.7, 4,   94.0);  -- H-8 Geyser	
	zone:registerRegion(3,  -67.3, 2, 532.8,  -66.3, 4,  534.0);  -- J-3 Geyser	
end;		

-----------------------------------		
-- onZoneIn		
-----------------------------------		

function onZoneIn(player,prevZone)		
	cs = -1;	
	if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then	
		player:setPos(-4.025,-4.449,0.016,112);
	end	
	return cs;	
end;		

-----------------------------------	
-- onRegionEnter	
-----------------------------------	

function onRegionEnter(player,region)	
	switch (region:GetRegionID()): caseof
	{
	[1] = function (x)
	player:startEvent(0x000A);
	SendUncnown0x39Packet(17559896, 0x32);
	end,
	[2] = function (x)
	player:startEvent(0x000B);
	SendUncnown0x39Packet(17559897, 0x31);
	end,
	[3] = function (x)	
	player:startEvent(0x000C);	
	SendUncnown0x39Packet(17559898, 0x33);	
	end,	
	}	
	if (player:hasKeyItem(BLUE_ACIDITY_TESTER)) then	
		player:delKeyItem(BLUE_ACIDITY_TESTER);
		player:addKeyItem(RED_ACIDITY_TESTER);
	end	
end;		

-----------------------------------		
-- onRegionLeave		
-----------------------------------		

function onRegionLeave(player,region)		
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
end;	
