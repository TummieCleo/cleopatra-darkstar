 -----------------------------------
-- Area: Arrapago Reef
-- NPC: Cutter
-- The ship for The Black Coffin Battle (TOAU-15)
-- @pos -462 -2 -394 54
-----------------------------------

package.loaded["scripts/zones/Arrapago_Reef/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Arrapago_Reef/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/missions");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:getCurrentMission(TOAU) == THE_BLACK_COFFIN) then
        player:startEvent(221, 53, -6, 0, 99, 6, 0);
    elseif (player:getCurrentMission(TOAU) == TESTING_THE_WATERS) then
            player:startEvent(15);
    elseif (player:getCurrentMission(TOAU) == PREVALENCE_OF_PIRATES and player:getVar("AhtUrganStatus") == 1) then
            player:startEvent(14);			
	else
        player:messageSpecial(YOU_NO_REQS);
		player:PrintToPlayer("You have no key item");
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option,target)
    printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);

    if(csid == 221) then
        local party = player:getParty();
        if (party ~= nil) then
            for i,v in ipairs(party) do
                if (v:getZoneID() == player:getZoneID() and v:checkDistance(player) > 50) then
                    player:messageText(target,MEMBER_TOO_FAR, false);
                    player:instanceEntry(target,1);
                    return;
                end
            end
        end

        player:createInstance(53,60);
    end
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)

    if (csid == 221 and option == 4) then
        player:setPos(0,-22,27,66,60);
    elseif (csid == 15) then
        player:setVar("AhtUrganStatus",1)
        player:setPos(0,0,0,0,57)
	elseif (csid == 14) then	
	    player:completeMission(TOAU,PREVALENCE_OF_PIRATES)
        player:setVar("AhtUrganStatus",0)
        player:addKeyItem(PERIQIA_ASSAULT_AREA_ENTRY_PERMIT)
        player:messageSpecial(KEYITEM_OBTAINED,PERIQIA_ASSAULT_AREA_ENTRY_PERMIT)
        player:addMission(TOAU,SHADES_OF_VENGEANCE)	
	end
end;

-----------------------------------
-- onInstanceCreated
-----------------------------------

function onInstanceCreated(player,target,instance)

    if (instance) then        
        player:setInstance(instance);
        player:instanceEntry(target,4);

		local party = player:getParty();
        if (party ~= nil) then
            for i,v in ipairs(party) do
                if v:getID() ~= player:getID() and v:getZoneID() == player:getZoneID() then
                    v:setInstance(instance);
					v:startEvent(90);
                end
            end
        end
    else
        player:messageText(target,CANNOT_ENTER, false);
        player:instanceEntry(target,3);
    end
end;
