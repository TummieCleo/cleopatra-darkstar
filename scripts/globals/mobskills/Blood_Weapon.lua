---------------------------------------------------
-- Blood Weapon
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getMobMod(MOBMOD_SCRIPTED_2HOUR) == 1) then
        return 1;
    elseif (mob:getHPP() <= 50) then
        return 0;
    end
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_BLOOD_WEAPON;
    local duration = 30;
    if (skill:getParam() ~= 0 and mob:getMobMod(MOBMOD_SCRIPTED_2HOUR) == 1) then
        duration = skill:getParam();
    end
    MobBuffMove(mob, typeEffect, 1, 0, duration);
    
    skill:setMsg(MSG_USES);
    return typeEffect;
end;
