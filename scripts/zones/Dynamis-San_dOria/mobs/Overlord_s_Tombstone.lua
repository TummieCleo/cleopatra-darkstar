-----------------------------------
-- Area: Dynamis Sandy
-- NPC:  Overlords Tombstone
-- Boss: Zone Boss
-----------------------------------
require("scripts/globals/keyitems");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
mob:addMod(MOD_EVA,50);
mob:addMod(MOD_ACC,50);


end;


function onMobEngaged(mob,target)
local weakener = target:getVar("DynaWeakener");
 if (weakener == 4) then
   mob:setMod(MOD_HPP,-75);
   mob:setMod(MOD_DEFP,-75);
   mob:setMod(MOD_ATTP,-75);
   mob:addMod(MOD_EVA,-40);
   mob:addMOd(MOD_ACC,-40);
   target:setVar("DynaWeakener",0);
  --  SetDropRate(5004,3415,300);
target:PrintToPlayer("The Monster may not prove to be a challenge", 0xD); 
elseif (weakener == 3) then
   mob:setMod(MOD_HPP,-57);
   mob:setMod(MOD_DEFP,-57);
   mob:setMod(MOD_ATTP,-77);
   mob:addMod(MOD_EVA,-30);
   mob:addMOd(MOD_ACC,-30);
   target:setVar("DynaWeakener",0);
  --  SetDropRate(5004,3415,300);
target:PrintToPlayer("You have significantly weakened the monster!", 0xD);
elseif (weakener == 2) then
   mob:setMod(MOD_HPP,-38);
   mob:setMod(MOD_DEFP,-20);
   mob:setMod(MOD_ATTP,-20);
   mob:addMod(MOD_EVA,-20);
   mob:addMOd(MOD_ACC,-20);
   target:setVar("DynaWeakener",0);
  --  SetDropRate(5004,3415,500);
target:PrintToPlayer("You have weakened the monster!", 0xD);
elseif (weakener == 1) then
   mob:setMod(MOD_HPP,-20);
   mob:setMod(MOD_DEFP,-10);
   mob:setMod(MOD_ATTP,-10);
   mob:addMod(MOD_EVA,-10);
   mob:addMOd(MOD_ACC,-10);
   target:setVar("DynaWeakener",0);
    -- SetDropRate(5004,3415,700);
target:PrintToPlayer("You have weakened the monster ever so slightly", 0xD);
elseif (weakener == 0) then
 -- mob:setMod(MOD_ACC,100);
 -- mob:setMod(MOD_EVA,100);
   target:setVar("DynaWeakener",0);
target:PrintToPlayer("You have summoned a Monster.", 0xD);  
end   
end;


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
killer:setVar("DynaWeakener",0);
killer:addKeyItem(HYDRA_CORPS_COMMAND_SCEPTER);
	

end;