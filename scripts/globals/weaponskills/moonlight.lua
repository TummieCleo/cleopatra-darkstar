------------------------
--    Moonlight     -- 
------------------------
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/weaponskills");

function OnUseWeaponSkill(attacker, target, wsID)
	lvl = attacker:getSkillLevel(11); --get club skill
	damage = (lvl/9) - 1;
	damagemod = damage * ((50+(attacker:getTP()*0.5))/100);
	return damagemod;
end
