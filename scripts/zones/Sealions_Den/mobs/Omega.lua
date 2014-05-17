-----------------------------------
-- Area: Sealions Den
-- NPC:  Omega
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	killer:addTitle(OMEGA_OSTRACIZER);	
	local OmegaID=mob:getID();
	switch (OmegaID) : caseof {
		[16908294] = function (x)          
			killer:startEvent(0x000b);
		end,
		[16908301] = function (x)          
			killer:startEvent(0x000b);
		end,
		[16908308] = function (x) 
			killer:startEvent(0x000b);		 
		end,
	}
end;

function onEventFinish(player,csid,option)	
	--printf("CSID: %u",csid);
	--printf("RESULT: %u",option);
	if(csid == 0x000b) then
		local instance = player:getVar("bcnm_instanceid")

		--Players are healed in between the fights, but their TP is set to 0
		player:setHP(player:getMaxHP());
		player:setMP(player:getMaxMP());
		player:setTP(0);
		
		if(instance == 1) then
			player:setPos(-779, -103, -80);
	         	SpawnMob(16908295); --ultima1
		elseif(instance == 2) then
		 	player:setPos(-140, -23, -440);
		 	SpawnMob(16908302); --ultima2
		else
         		player:setPos(499, 56, -802);
		 	SpawnMob(16908309); --ultima3
		end
	end
end;	