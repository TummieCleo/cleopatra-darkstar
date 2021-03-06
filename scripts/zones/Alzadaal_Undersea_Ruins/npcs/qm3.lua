-----------------------------------
-- Area: Alzadaal Undersea Ruins
--  NPC: ??? (Spawn Armed Gears(ZNM T3))
-- @pos -42 -4 -169 72
-----------------------------------
package.loaded["scripts/zones/Alzadaal_Undersea_Ruins/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Alzadaal_Undersea_Ruins/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local mobID = 17072178;
    if (trade:hasItemQty(2574,1) and trade:getItemCount() == 1) then -- Trade Ferrite
        if (GetMobAction(mobID) == ACTION_NONE) then
            player:tradeComplete();
            SpawnMob(mobID):updateClaim(player);
        end
    elseif (trade:hasItemQty(2610,1) and trade:getItemCount() == 1) then -- Trade Gotoh's Necklace
        if (GetMobAction(mobID) == ACTION_NONE) then
            player:tradeComplete();
            player:addKeyItem(CHARCOAL_GREY_SEAL);
			player:messageSpecial(KEYITEM_OBTAINED,CHARCOAL_GREY_SEAL);
        end			
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:hasKeyItem(APPLE_GREEN_SEAL)) then
	    if (player:getFreeSlotsCount() == 0) then
		    player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,2575);
	    else
	        player:delKeyItem(APPLE_GREEN_SEAL);
			player:messageSpecial(KEYITEM_LOST,APPLE_GREEN_SEAL);			
		    player:addItem(2575,1);
			player:messageSpecial(ITEM_OBTAINED,2575);			
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