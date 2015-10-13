-----------------------------------
--
--
--
-----------------------------------

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
  
    local power = effect:getPower();
	local bonus = (power * 0.25) + 1;
	local res =  (power * 0.55) + 1;
	local att = (power * 0.07) + 5;



    target:addMod(MOD_FIREACC,bonus);
    target:addMod(MOD_FIREATT,bonus);
    target:addMod(MOD_FIREDEF,bonus);
    target:addMod(MOD_FIRERES,res);
    target:addMod(MOD_ATTP,att);
    target:addMod(MOD_RATTP,att);
	target:addMod(MOD_DOUBLE_ATTACK,att);
	target:addMod(MOD_STR,bonus);
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
    if (not target:isPet()) then
        return;
    end
    local owner = target:getMaster();

    local party = owner:getParty();
	local pet = owner:getPet();
    if (party ~= nil) then
        for i,member in ipairs(party) do
		    if (member:checkDistance(pet) < 10) then
            member:addStatusEffect(EFFECT_IFRIT_S_FAVOR, effect:getPower(), 0, 3);
			end
        end
    end
end;


-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
    
    local power = effect:getPower();
	local bonus = (power * 0.25) + 1;
	local res =  (power * 0.55) + 1;
	local att = (power * 0.07) + 5;

    target:delMod(MOD_FIREACC,bonus);
    target:delMod(MOD_FIREATT,bonus);
    target:delMod(MOD_FIREDEF,bonus);
    target:delMod(MOD_FIRERES,res);
    target:delMod(MOD_ATTP,att);
    target:delMod(MOD_RATTP,att);
	target:delMod(MOD_DOUBLE_ATTACK,att);
	target:delMod(MOD_STR,bonus);

end;