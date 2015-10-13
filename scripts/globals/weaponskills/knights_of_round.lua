-----------------------------------
-- Knights Of Round
-- Sword Weapon Skill
-- Skill Level: N/A
-- Caliburn/Excalibur: Additional Effect: Regen.
-- Regen 10HP/Tick, duration varies with TP.
-- Available only when equipped with the Relic Weapons Caliburn (Dynamis use only) or Excalibur.
-- Also available without aftermath as a latent effect on Corbenic Sword.
-- Aligned with the Flame Gorget & Light Gorget.
-- Aligned with the Flame Belt & Light Belt.
-- Element: None
-- Modifiers: STR:40% ; MND:40%
-- 100%TP    200%TP    300%TP
-- 3.00      3.00      3.00
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID)

	local params = {};
	params.numHits = 1;
	params.ftp100 = 3; params.ftp200 = 3; params.ftp300 = 3;
	params.str_wsc = 0.6; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.6; params.chr_wsc = 0.0;
	params.crit100 = 0.0; params.crit200 = 0.0; params.crit300 = 0.0;
	params.canCrit = false;
	params.acc100 = 0.0; params.acc200= 0.0; params.acc300= 0.0;
	params.atkmulti = 1;

	if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
		params.ftp100 = 7; params.ftp200 = 7; params.ftp300 = 7;
		if((player:getEquipID(SLOT_MAIN) == 60646) and (player:getMainJob() == JOB_RDM or JOB_PLD)) then
		params.ftp100 = 10; params.ftp200 = 10; params.ftp300 = 10;
		end
	end

	local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, params);
	if((player:getEquipID(SLOT_MAIN) == 19748) and (player:getMainJob() == JOB_RDM or JOB_PLD)) then
		if(damage > 0) then
			if(player:getTP() >= 100 and player:getTP() < 200) then
				player:addStatusEffect(EFFECT_AFTERMATH, 2, 0, 20, 0, 10);
			elseif(player:getTP() >= 200 and player:getTP() < 300) then
				player:addStatusEffect(EFFECT_AFTERMATH, 2, 0, 40, 0, 10);
			elseif(player:getTP() == 300) then
				player:addStatusEffect(EFFECT_AFTERMATH, 2, 0, 60, 0, 10);
			end
		end
	end
	
	if((player:getEquipID(SLOT_MAIN) == 20645) and (player:getMainJob() == JOB_RDM or JOB_PLD)) then
		--params.ftp100 = 9; params.ftp200 = 9; params.ftp300 = 9;
		if(damage > 0) then
			if(player:getTP() >= 100 and player:getTP() < 200) then
				player:addStatusEffect(EFFECT_AFTERMATH, -30, 0, 20, 0, 13);
			elseif(player:getTP() >= 200 and player:getTP() < 300) then
				player:addStatusEffect(EFFECT_AFTERMATH, -30, 0, 40, 0, 13);
			elseif(player:getTP() == 300) then
				player:addStatusEffect(EFFECT_AFTERMATH, -30, 0, 60, 0, 13);
			end
		end
	end

	if((player:getEquipID(SLOT_MAIN) == 20646) and (player:getMainJob() == JOB_RDM or JOB_PLD)) then
		--params.ftp100 = 19; params.ftp200 = 19; params.ftp300 = 19;
		if(damage > 0) then
			if(player:getTP() >= 100 and player:getTP() < 200) then
				player:addStatusEffect(EFFECT_AFTERMATH, -30, 0, 20, 0, 13);
			elseif(player:getTP() >= 200 and player:getTP() < 300) then
				player:addStatusEffect(EFFECT_AFTERMATH, -30, 0, 40, 0, 13);
			elseif(player:getTP() == 300) then
				player:addStatusEffect(EFFECT_AFTERMATH, -30, 0, 60, 0, 13);
			end
		end
	end	
	
	
	
	
	
	
	damage = damage * WEAPON_SKILL_POWER
	return tpHits, extraHits, criticalHit, damage;

end
