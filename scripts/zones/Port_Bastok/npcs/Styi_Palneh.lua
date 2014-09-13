-----------------------------------
-- Area: Port Bastok
-- NPC: Styi Palneh
-- Title Change NPC
-- @pos 28 4 -15 236
-----------------------------------


package.loaded["scripts/zones/Port_Bastok/TextIDs"] = nil;
require("scripts/zones/Port_Bastok/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
local title2 = { NEW_ADVENTURER , BASTOK_WELCOMING_COMMITTEE , BUCKET_FISHER , PURSUER_OF_THE_PAST , MOMMYS_HELPER , HOT_DOG ,
				STAMPEDER , RINGBEARER , ZERUHN_SWEEPER , TEARJERKER , CRAB_CRUSHER , BRYGIDAPPROVED , GUSTABERG_TOURIST , MOGS_MASTER , CERULEAN_SOLDIER ,
				DISCERNING_INDIVIDUAL , VERY_DISCERNING_INDIVIDUAL , EXTREMELY_DISCERNING_INDIVIDUAL , APOSTATE_FOR_HIRE , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 }
local title3 = { SHELL_OUTER , PURSUER_OF_THE_TRUTH , QIJIS_FRIEND , TREASURE_SCAVENGER , SAND_BLASTER , DRACHENFALL_ASCETIC ,
				ASSASSIN_REJECT , CERTIFIED_ADVENTURER , QIJIS_RIVAL , CONTEST_RIGGER , KULATZ_BRIDGE_COMPANION , AVENGER , AIRSHIP_DENOUNCER ,
				STAR_OF_IFRIT , PURPLE_BELT , MOGS_KIND_MASTER , TRASH_COLLECTOR , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 }
local title4 = { BEADEAUX_SURVEYOR , PILGRIM_TO_DEM , BLACK_DEATH , DARK_SIDER , SHADOW_WALKER , SORROW_DROWNER , STEAMING_SHEEP_REGULAR ,
				SHADOW_BANISHER , MOGS_EXCEPTIONALLY_KIND_MASTER , HYPER_ULTRA_SONIC_ADVENTURER , GOBLIN_IN_DISGUISE , BASTOKS_SECOND_BEST_DRESSED ,
				0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 }
local title5 = { PARAGON_OF_WARRIOR_EXCELLENCE , PARAGON_OF_MONK_EXCELLENCE , PARAGON_OF_DARK_KNIGHT_EXCELLENCE , HEIR_OF_THE_GREAT_EARTH ,
				MOGS_LOVING_MASTER , HERO_AMONG_HEROES , DYNAMISBASTOK_INTERLOPER , MASTER_OF_MANIPULATION , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 }
local title6 = { LEGIONNAIRE , DECURION , CENTURION , JUNIOR_MUSKETEER , SENIOR_MUSKETEER , MUSKETEER_COMMANDER , GOLD_MUSKETEER ,
				PRAEFECTUS , SENIOR_GOLD_MUSKETEER , PRAEFECTUS_CASTRORUM , ANVIL_ADVOCATE , FORGE_FANATIC , ACCOMPLISHED_BLACKSMITH , ARMORY_OWNER , TRINKET_TURNER ,
				SILVER_SMELTER , ACCOMPLISHED_GOLDSMITH , JEWELRY_STORE_OWNER , FORMULA_FIDDLER , POTION_POTENTATE , ACCOMPLISHED_ALCHEMIST , APOTHECARY_OWNER ,
				0 , 0 , 0 , 0 , 0 , 0 }
local title7 = { MOG_HOUSE_HANDYPERSON , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 }
																								
player:startEvent(0x00C8,gentitle(player,title2),gentitle(player,title3),gentitle(player,title4),gentitle(player,title5),gentitle(player,title6),gentitle(player,title7),1   ,player:getGil());
end; 

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
	 if(csid==0x00C8)then
		if(option > 0 and option <29)then
			if (player:delGil(200))then
				local title = { NEW_ADVENTURER , BASTOK_WELCOMING_COMMITTEE , BUCKET_FISHER , PURSUER_OF_THE_PAST , MOMMYS_HELPER , HOT_DOG ,
				STAMPEDER , RINGBEARER , ZERUHN_SWEEPER , TEARJERKER , CRAB_CRUSHER , BRYGIDAPPROVED , GUSTABERG_TOURIST , MOGS_MASTER , CERULEAN_SOLDIER ,
				DISCERNING_INDIVIDUAL , VERY_DISCERNING_INDIVIDUAL , EXTREMELY_DISCERNING_INDIVIDUAL , APOSTATE_FOR_HIRE , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 }
				player:setTitle(title[option])
			end				
		elseif(option > 256 and option <285)then
			if (player:delGil(300))then
				local title = { SHELL_OUTER , PURSUER_OF_THE_TRUTH , QIJIS_FRIEND , TREASURE_SCAVENGER , SAND_BLASTER , DRACHENFALL_ASCETIC ,
				ASSASSIN_REJECT , CERTIFIED_ADVENTURER , QIJIS_RIVAL , CONTEST_RIGGER , KULATZ_BRIDGE_COMPANION , AVENGER , AIRSHIP_DENOUNCER ,
				STAR_OF_IFRIT , PURPLE_BELT , MOGS_KIND_MASTER , TRASH_COLLECTOR , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 }
				player:setTitle(  title[option - 256])
			end
		elseif(option > 512 and option < 541)then
			if (player:delGil(400))then
			local title = { BEADEAUX_SURVEYOR , PILGRIM_TO_DEM , BLACK_DEATH , DARK_SIDER , SHADOW_WALKER , SORROW_DROWNER , STEAMING_SHEEP_REGULAR ,
				SHADOW_BANISHER , MOGS_EXCEPTIONALLY_KIND_MASTER , HYPER_ULTRA_SONIC_ADVENTURER , GOBLIN_IN_DISGUISE , BASTOKS_SECOND_BEST_DRESSED ,
				0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 }
				player:setTitle( title[option - 512])
			end
		elseif(option > 768 and option <797)then
			if (player:delGil(500))then
				local title = { PARAGON_OF_WARRIOR_EXCELLENCE , PARAGON_OF_MONK_EXCELLENCE , PARAGON_OF_DARK_KNIGHT_EXCELLENCE , HEIR_OF_THE_GREAT_EARTH ,
				MOGS_LOVING_MASTER , HERO_AMONG_HEROES , DYNAMISBASTOK_INTERLOPER , MASTER_OF_MANIPULATION , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 }
				player:setTitle( title[option - 768])
			end
		elseif(option > 1024 and option < 1053)then
			if (player:delGil(600))then
				local title = { LEGIONNAIRE , DECURION , CENTURION , JUNIOR_MUSKETEER , SENIOR_MUSKETEER , MUSKETEER_COMMANDER , GOLD_MUSKETEER ,
				PRAEFECTUS , SENIOR_GOLD_MUSKETEER , PRAEFECTUS_CASTRORUM , ANVIL_ADVOCATE , FORGE_FANATIC , ACCOMPLISHED_BLACKSMITH , ARMORY_OWNER , TRINKET_TURNER ,
				SILVER_SMELTER , ACCOMPLISHED_GOLDSMITH , JEWELRY_STORE_OWNER , FORMULA_FIDDLER , POTION_POTENTATE , ACCOMPLISHED_ALCHEMIST , APOTHECARY_OWNER ,
				0 , 0 , 0 , 0 , 0 , 0 }
				player:setTitle( title[option - 1024])
			end
		elseif(option > 1280 and option < 1309)then
			if (player:delGil(700))then
				local title = { MOG_HOUSE_HANDYPERSON , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 }
				player:setTitle(  title[option - 1280]) 
			end
		end
	end			
end;

function gentitle(player,title)
	local val1 = 0
	for i = 1, #title do
		if(title[i] == 0 or player:hasTitle(title[i]) ~= true)then
			val1 = val1 + math.pow(2,i)
		end			
	end
	return val1
end;



