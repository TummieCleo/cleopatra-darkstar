-----------------------------------
-- Area: Mount Zhayolm
--  NPC: ??? (Spawn Khromasoul Bhurborlor(ZNM T3))
-- @pos 88 -22 70 61
-----------------------------------
package.loaded["scripts/zones/Mount_Zhayolm/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Mount_Zhayolm/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local mobID = 17027474;
    if (trade:hasItemQty(2585,1) and trade:getItemCount() == 1) then -- Trade Vinegar Pie
        if (GetMobAction(mobID) == ACTION_NONE) then
            player:tradeComplete();
            SpawnMob(mobID):updateClaim(player);
        end
    elseif (trade:hasItemQty(2621,1) and trade:getItemCount() == 1) then -- Trade Bhurbolor's Vambrace
        if (GetMobAction(mobID) == ACTION_NONE) then
            player:tradeComplete();
            player:addKeyItem(GOLD_COLORED_SEAL);
			player:messageSpecial(KEYITEM_OBTAINED,GOLD_COLORED_SEAL);			
        end		
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:hasKeyItem(PURPLISH_GREY_SEAL)) then
	    if (player:getFreeSlotsCount() == 0) then
		    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,2585);
	    else
	        player:delKeyItem(MAROON_SEAL);
			player:messageSpecial(KEYITEM_LOST,PURPLISH_GREY_SEAL);
		    player:addItem(2585,1);
			player:messageSpecial(ITEM_OBTAINED,2585);
		end
    else
        player:messageSpecial(NOTHING_HAPPENS);
	end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;