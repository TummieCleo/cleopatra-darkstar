-----------------------------------
-- Area: FeiYin
-- MOB:  Colossus
-----------------------------------

require("scripts/globals/keyitems");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

    checkGoVregime(killer,mob,715,2);

    -- Curses, Foiled A-Golem!?
    if(killer:hasKeyItem(SHANTOTTOS_NEW_SPELL)) then
        killer:delKeyItem(SHANTOTTOS_NEW_SPELL);
        killer:addKeyItem(SHANTOTTOS_EXSPELL);
    end

end;