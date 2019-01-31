-----------------------------------
-- Area: Caedarva Mire
--  NPC: ??? (Spawn Mahjlaef the Paintorn(ZNM T3))
-- @pos 695 -7 527 79
-----------------------------------
package.loaded["scripts/zones/Caedarva_Mire/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Caedarva_Mire/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local mobID = 17101204;
    if (trade:hasItemQty(2594,1) and trade:getItemCount() == 1) then -- Trade Exorcism Treatise
        if (GetMobAction(mobID) == ACTION_NONE) then
            player:tradeComplete();
            SpawnMob(mobID):updateClaim(player);
        end
    elseif (trade:hasItemQty(2630,1) and trade:getItemCount() == 1) then -- Trade Mahjlaef's Staff
        if (GetMobAction(mobID) == ACTION_NONE) then
            player:tradeComplete();
            player:addKeyItem(FALLOW_COLORED_SEAL);
			player:messageSpecial(KEYITEM_OBTAINED,FALLOW_COLORED_SEAL);			
        end		
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:messageSpecial(NOTHING_HAPPENS);
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