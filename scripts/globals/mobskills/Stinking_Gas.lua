---------------------------------------------
--  Stinking Gas
--
--  Description: Lowers Vitality of enemies within range.
--  Type: Magical (Wind)
--  
--  
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");
---------------------------------------------
function OnMobWeaponSkill(target, mob, skill)


    isEnfeeble = true;
    typeEffect = EFFECT_VIT_DOWN;
    statmod = MOD_INT;
    accrand = math.random(1,2);
    resist = 1;--applyPlayerResistance(mob,skill,target,isEnfeeble,typeEffect,statmod);
    if(resist > 0.5 and accrand == 1) then
        if(target:getStatusEffect(typeEffect) == nil) then
            skill:setMsg(MSG_ENFEEB_IS);
            target:addStatusEffect(typeEffect,50,0,120);
        else
            skill:setMsg(MSG_NO_EFFECT);
        end
    else
        skill:setMsg(MSG_MISS);
    end
    return typeEffect;

end;