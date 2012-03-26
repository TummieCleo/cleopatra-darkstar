-----------------------------------
-- Area: Port Bastok
-- NPC:  Hilda
-- Involved in Quest: Cid's Secret, Riding on the Clouds
-- Starts & Finishes: The Usual 
-- @zone 236
-- @pos -163 -8 13
-----------------------------------
package.loaded["scripts/zones/Port_Bastok/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/zones/Port_Bastok/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	
    if(trade:getGil() == 0 and trade:getItemCount() == 1) then
        if(trade:hasItemQty(ROLANBERRY,1); and player:getVar("CidsSecret_Event") == 1 and player:hasKeyItem(UNFINISHED_LETTER) == false) then
            player:startEvent(0x0085);
        elseif(trade:hasItemQty(KING_TRUFFLE,1) and player:getQuestStatus(BASTOK,THE_USUAL) == 1) then
            player:startEvent(0x0087);
        end
    end
	
	if(player:getQuestStatus(JEUNO,RIDING_ON_THE_CLOUDS) == QUEST_ACCEPTED and player:getVar("ridingOnTheClouds_2") == 5) then
		if(trade:hasItemQty(1127,1) and trade:getItemCount() == 1) then -- Trade Kindred seal
			player:setVar("ridingOnTheClouds_2",0);
			player:tradeComplete();
			player:addKeyItem(SMILING_STONE);
			player:messageSpecial(KEYITEM_OBTAINED,SMILING_STONE);
		end
	end
	
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	CidsSecret = player:getQuestStatus(BASTOK,CID_S_SECRET);

	if(player:getQuestStatus(BASTOK,THE_USUAL) ~= 2) then
		if(CidsSecret == 1) then
			player:startEvent(0x0084);
			if(player:getVar("CidsSecret_Event") ~= 1) then
				player:setVar("CidsSecret_Event",1);
			end
		elseif(player:getFameLevel(BASTOK) >= 5 and CidsSecret == 2) then
			if(player:getVar("TheUsual_Event") == 1) then
				player:startEvent(0x0088);
			else
				player:startEvent(0x0086);
			end
		else
			player:startEvent(0x0030);
		end
	else
		player:startEvent(0x0030);
	end
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
    
	if(csid == 0x0085) then
        player:tradeComplete();
        player:addKeyItem(UNFINISHED_LETTER);
        player:messageSpecial(KEYITEM_OBTAINED,UNFINISHED_LETTER);
        player:setVar("CidsSecret_Event",2);
    elseif(csid == 0x0086 and option == 0) then
    	if(player:getQuestStatus(BASTOK,THE_USUAL) == 0) then
			player:addQuest(BASTOK,THE_USUAL);
		end
    elseif(csid == 0x0087) then
        player:addKeyItem(STEAMING_SHEEP_INVITATION);
        player:messageSpecial(KEYITEM_OBTAINED,STEAMING_SHEEP_INVITATION);
    elseif(csid == 0x0088) then
		player:setTitle(STEAMING_SHEEP_REGULAR);
		player:delKeyItem(STEAMING_SHEEP_INVITATION);
		player:setVar("TheUsual_Event",0);
		player:addItem(SPEED_BOW);
		player:messageSpecial(ITEM_OBTAINED,SPEED_BOW);
		player:addFame(BASTOK,BAS_FAME*30);
		player:completeQuest(BASTOK,THE_USUAL);
    end
	 
end;