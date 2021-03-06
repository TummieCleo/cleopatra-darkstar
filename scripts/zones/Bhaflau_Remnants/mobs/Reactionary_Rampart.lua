-----------------------------------
-- Area:
-- NPC:  Archaic Rampart
-- teleport to small room 15 0 20
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/salvagescaler");
require("scripts/globals/status");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

   -- mob:addStatusEffect(EFFECT_BIND,0,0,10000);
    salvageRampart(mob,target);  
	mob:setLocalVar("Scale",1);
	mob:setLocalVar("spawnTime",2);
	mob:setLocalVar("NMspawn",1);
	local mobid = mob:getID();
	if (mobid == 17084692) then -- 1st Floor Chiggoe / Gate Widow
	    mob:setLocalVar("popTime1", os.time());
	    mob:setLocalVar("Mob1",17084693);
	    mob:setLocalVar("Mob2",17084694);
	    mob:setLocalVar("Mob3",17084695);
	    mob:setLocalVar("Mob4",17084696);
	    mob:setLocalVar("Mob5",17084697);
	    mob:setLocalVar("RampNM",17084698);	    
	elseif (mobid == 17084699) then -- 2nd Floor Bees
	    mob:setLocalVar("popTime2", os.time());
	    mob:setLocalVar("Mob1",17084700);
	    mob:setLocalVar("Mob2",17084701);
	    mob:setLocalVar("Mob3",17084702);
	    mob:setLocalVar("Mob4",17084703);
	    mob:setLocalVar("Mob5",17084704);
	    mob:setLocalVar("RampNM",17084705);	
	elseif (mobid == 17084706) then -- 3rd Floor Colibri / Zachary
	    mob:setLocalVar("popTime3", os.time());
	    mob:setLocalVar("Mob1",17084707);
	    mob:setLocalVar("Mob2",17084708);
	    mob:setLocalVar("Mob3",17084709);
	    mob:setLocalVar("Mob4",17084710);
	    mob:setLocalVar("Mob5",17084711);
	    mob:setLocalVar("RampNM",17084712);	
	elseif (mobid == 17084713) then -- 4th Floor Birds
	    mob:setLocalVar("popTime4", os.time());
	    mob:setLocalVar("Mob1",17084714);
	    mob:setLocalVar("Mob2",17084715);
	    mob:setLocalVar("Mob3",17084716);
	    mob:setLocalVar("Mob4",17084717);
	    mob:setLocalVar("Mob5",17084718);
	    mob:setLocalVar("RampNM",17084719);			
	end

end;

function onMobEngaged(mob,target)
	local mobid = mob:getID();
    if (mobid == 17084692) then
        mob:addStatusEffect(EFFECT_BIND,0,0,10000);
	end
    if (mobid == 17084699) then
        mob:addStatusEffect(EFFECT_BIND,0,0,10000);
	end
    if (mobid == 17084706) then
        mob:addStatusEffect(EFFECT_BIND,0,0,10000);
	end
    if (mobid == 17084713) then
        mob:addStatusEffect(EFFECT_BIND,0,0,10000);
	end	
	
end

function onMobRoam(mob)
	local mobid = mob:getID();
    local spawnTime1 = mob:getLocalVar("popTime1");	
    local spawnTime2 = mob:getLocalVar("popTime2");
    local spawnTime3 = mob:getLocalVar("popTime3");
    local spawnTime4 = mob:getLocalVar("popTime4");	
    if (mobid == 17084692) then
		if (os.time() - spawnTime1 > 60) then
		    DespawnMob(17084692);
		end
	end
    if (mobid == 17084699) then
		if (os.time() - spawnTime2 > 60) then
		    DespawnMob(17084699);
		end
	end
    if (mobid == 17084706) then
		if (os.time() - spawnTime3 > 60) then
		    DespawnMob(17084706);
		end
	end
    if (mobid == 17084713) then
		if (os.time() - spawnTime4 > 60) then
		    DespawnMob(17084713);
		end
	end	
end


function onMobFight(mob,target)
	local spawnTime = mob:getLocalVar("spawnTime");
	local spawnnum = mob:getLocalVar("SpawnID");
	local mobone = mob:getLocalVar("Mob1");
	local mobtwo = mob:getLocalVar("Mob2");
	local mobthree = mob:getLocalVar("Mob3");
	local mobfour = mob:getLocalVar("Mob4");
	local mobfive = mob:getLocalVar("Mob5");
	local mob1stat = 0;
	local mob2stat = 0;
	local mob3stat = 0;
	local mob4stat = 0;
	local mob5stat = 0;
	local mobsup = 0;
	local mob1 = GetMobByID(mobone);
	local mob2 = GetMobByID(mobtwo);
	local mob3 = GetMobByID(mobthree);
	local mob4 = GetMobByID(mobfour);
	local mob5 = GetMobByID(mobfive);
	
		if (GetMobAction(mobone) ~= 0) then
		    mob1stat = 1;
		end
		if (GetMobAction(mobtwo) ~= 0) then
		    mob2stat = 1;
		end
		if (GetMobAction(mobthree) ~= 0) then
		    mob3stat = 1;
		end
		if (GetMobAction(mobfour) ~= 0) then
		    mob4stat = 1;
        end			
		if (GetMobAction(mobfive) ~= 0) then
		    mob5stat = 1;
		end
	
	mobsup = mob1stat + mob2stat + mob3stat + mob4stat + mob5stat;
	

	-- Get the status of all 5 mobs
	
	if ((mob:getBattleTime() - spawnTime > 12) and mobsup < 5) then
	    mob:useMobAbility(1778);
		mob:delHP(1000);
		mob:setLocalVar("spawnTime", mob:getBattleTime());
	end
	



end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	printf("MOB IS DOWN");
	-- Despawn mobs
    local mobid = mob:getID();
	local mobone = mob:getLocalVar("Mob1");
	local mobtwo = mob:getLocalVar("Mob2");
	local mobthree = mob:getLocalVar("Mob3");
	local mobfour = mob:getLocalVar("Mob4");
	local mobfive = mob:getLocalVar("Mob5");
	local nm = mob:getLocalVar("RampNM",17084698);	
	
	if (GetMobAction(mobone) > 0) then
	    GetMobByID(mobone):setHP(0);
	end	
	if (GetMobAction(mobtwo) > 0) then
	    GetMobByID(mobtwo):setHP(0);
	end	
	if (GetMobAction(mobthree) > 0) then
	    GetMobByID(mobthree):setHP(0);
	end	
	if (GetMobAction(mobfour) > 0) then
	    GetMobByID(mobfour):setHP(0);
	end	
	if (GetMobAction(mobfive) > 0) then
	    GetMobByID(mobfive):setHP(0);
	end	
	if (GetMobAction(nm) > 0) then
	    GetMobByID(nm):setHP(0);
	end		
	
    if (killer ~= nil) then
	    killer:startEvent(4);
	end
	    
	
	
	
end;


function onEventUpdate(player,csid,option)
	local posx = player:getVar("Bhaflau_X");
    local posy = player:getVar("Bhaflau_Y");
	local posz = player:getVar("Bhaflau_Z");
    if (csid == 4) then
        player:setPos(posx,posy,posz);
    end
--printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
	local posx = player:getVar("Bhaflau_X");
    local posy = player:getVar("Bhaflau_Y");
	local posz = player:getVar("Bhaflau_Z");
    if (csid == 4) then
        player:setPos(posx,posy,posz);
    end
end;
