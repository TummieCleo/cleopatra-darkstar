-----------------------------------
--
-- Zone: Beadeaux_[S]
--
-----------------------------------

require("scripts/globals/settings");
package.loaded["scripts/zones/Beadeaux_[S]/TextIDs"] = nil;
require("scripts/zones/Beadeaux_[S]/TextIDs");

-----------------------------------
--  onInitialize
-----------------------------------

function onInitialize(zone)
end;

-----------------------------------		
-- onZoneIn		
-----------------------------------		

function onZoneIn(player,prevZone)		
	cs = -1;	

	if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then	
		player:setPos(-297.109,0.008,96.002,252);
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

function onEventUpdate(player,csid,menuchoice)	
	--print("CSID: ",csid);
	--print("RESULT: ",menuchoice);
end;	

-----------------------------------	
-- onEventFinish	
-----------------------------------	

function onEventFinish(player,csid,menuchoice)	
	--print("CSID: ",csid);
	--print("RESULT: ",menuchoice);
end;	
