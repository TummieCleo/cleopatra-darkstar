---------------------------------------------------
-- Poison Nails  M=3? guess
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/summon");

---------------------------------------------------

function OnPetAbility(target, pet, skill)
	local numhits = 1;
	local accmod = 1;
	local dmgmod = 2.5;

	local totaldamage = 0;
	local damage = AvatarPhysicalMove(pet,target,skill,numhits,accmod,dmgmod,0,TP_NO_EFFECT,1,2,3);

	totaldamage = AvatarFinalAdjustments(damage.dmg,pet,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_PIERCE,numhits);

	target:delHP(totaldamage);
	target:updateEnmityFromDamage(pet,totaldamage);

	if(AvatarPhysicalHit(skill, totalDamage) and target:hasStatusEffect(EFFECT_POISON) == false) then
		target:addStatusEffect(EFFECT_POISON,1,3,60);
	end

	return totaldamage;
end