-----------------------------------
-- Area: Talacca Cove
-- MOB: Mihli
-----------------------------------

package.loaded["scripts/zones/Talacca_Cove/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/zones/Talacca_Cove/TextIDs");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;


function onMobSpawn(mob)
    mob:setLocalVar("CureBuff",1);
	mob:setLocalVar("HasteBuff",1);
	mob:setLocalVar("FCBuff",1);
	mob:setLocalVar("Bene",1);
end


-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)
	local curepot = mob:getLocalVar("CureBuff");
	local haste = mob:getLocalVar("HasteBuff");
	local fc = mob:getLocalVar("FCBuff");

	local bene = mob:getLocalVar("Bene");
	local twohr = math.random(30,60);
	local hp = mob:getHPP();
	
	if (acc == 1 and hp < 75) then
		mob:addMod(MOD_CURE_POTENCY,25);
	    mob:setLocalVar("CureBuff",2);	
	elseif (haste == 1 and hp < 50) then
	    mob:addMod(MOD_HASTE_MAGIC,1500);
	    mob:setLocalVar("HasteBuff",2);	
		mob:addStatusEffect(EFFECT_ENWATER, 10, 0, 1500);
	elseif (counter == 1 and hp < 25) then
	    mob:addMod(MOD_FASTCAST,40);
	    mob:setLocalVar("CounterBuff",2);
    end
		
    if (hp < twohr and bene == 1) then
        mob:useMobAbility(433);
        mob:setLocalVar("Bene",0);
    end		
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onMonsterMagicPrepare(mob, target)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob, killer)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, kkiller)
end;