-----------------------------------------
-- Spell: Indi-Refresh
-- Gradually restores target party member's MP
-- Composure increases duration 3x
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/pets");
require("scripts/globals/summon");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    
	bellCheck(caster, bell)
	
    if (bell == 2) then
	    caster:PrintToPlayer("You cannot use Geomancy without a bell",0xD);
	else
	    return 0;
	end
end;

function onSpellCast(caster,target,spell)
    removeIndi(caster)
    local potency = doGeoPotency(caster, target, spell)
	-- local duration = 180 + player:getMod(MOD_INDI_DURATION);NYI
	local duration = 180;
    caster:addStatusEffectEx(EFFECT_INDI_REGEN,EFFECT_REGEN_II,potency,3,duration)
	return 0;	
end;