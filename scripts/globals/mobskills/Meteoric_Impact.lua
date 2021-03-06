---------------------------------------------
--  Hysteric Barrage
--
--  Description: Delivers a fivefold attack. Damage varies with TP.
--  Type: Physical (Hand-to-Hand)
--
--
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local numhits = 1;
	local accmod = 1;
	local dmgmod = 1;
	if (mob:getID() == 17097390) then
	    dmgmod = 2;
	else
	    dmgmod = 6;
	end
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,5,7,9);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_H2H,info.hitslanded);
	target:delHP(dmg);
	return dmg;
end;
