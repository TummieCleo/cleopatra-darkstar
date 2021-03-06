---------------------------------------------------------------------------------------------------
-- func: goto
-- desc: Goes to the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, choice)
local tokenCap = player:getVar("TokenCap");

local AdelheidTokens = player:getVar("CurrentTokens_Adelheid");
local AdelheidPoints = player:getVar("CurrentPoints_Adelheid");

local AyameTokens = player:getVar("CurrentTokens_Ayame");
local AyamePoints = player:getVar("CurrentPoints_Ayame");

local CurillaTokens = player:getVar("CurrentTokens_Curilla");
local CurillaPoints = player:getVar("CurrentPoints_Curilla");

local DarcullinTokens = player:getVar("CurrentTokens_Darcullin");
local DarcullinPoints = player:getVar("CurrentPoints_Darcullin");

local ExcenmilleTokens = player:getVar("CurrentTokens_Excenmille");
local ExcenmillePoints = player:getVar("CurrentPoints_Excenmille");

local KupipiTokens = player:getVar("CurrentTokens_Kupipi");
local KupipiPoints = player:getVar("CurrentPoints_Kupipi");

local LionTokens = player:getVar("CurrentTokens_Lion");
local LionPoints = player:getVar("CurrentPoints_Lion");

local NanaaTokens = player:getVar("CurrentTokens_Nanaa");
local NanaaPoints = player:getVar("CurrentPoints_Nanaa");

local NajiTokens = player:getVar("CurrentTokens_Naja");
local NajiPoints = player:getVar("CurrentPoints_Naja");

local ZeidTokens = player:getVar("CurrentTokens_Zeid");
local ZeidPoints = player:getVar("CurrentPoints_Zeid");


-- Get Trib Quest Info
local location = "";
local trust = "";
local npc = "";
local active = 0;

    if (player:getVar("ADEL_TRIB_FIGHT") == 1) then
	    npc = "Erline - Eldieme Necroplis [S]";
		trust = "Adelhied";
		location = "QuBai Arena";
		active = 1;
    elseif (player:getVar("AYAME_TRIB_FIGHT") == 1) then
	    npc = "Ayame - Metalworks";
		trust = "Ayame";
		location = "Waughroon Shrine";
		active = 1;	
    elseif (player:getVar("CURILLA_TRIB_FIGHT") == 1) then
	    npc = "Curilla - Chateau d'Oraguille";
		trust = "Curilla";
		location = "Horlais Peak";
		active = 1;	
    elseif (player:getVar("DARC_TRIB_FIGHT") == 1) then
	    npc = "Nareema - Caedarva Mire";
		trust = "Darcullin";
		location = "QuBai Arena";
		active = 1;	
    elseif (player:getVar("EXCEN_TRIB_FIGHT") == 1) then
	    npc = "Excenmille - Northern San d'Oria";
		trust = "Exenmille";
		location = "Horlais Peak";
		active = 1;			
    elseif (player:getVar("KUPIPI_TRIB_FIGHT") == 1) then
	    npc = "Kupipi - Heaven's Tower";
		trust = "Kupipi";
		location = "Balgas Dais";
		active = 1;
    elseif (player:getVar("LION_TRIB_FIGHT") == 1) then
	    npc = "Gilgamesh - Norg";
		trust = "Lion";
		location = "QuBai Arena";
		active = 1;	
    elseif (player:getVar("NANAA_TRIB_FIGHT") == 1) then
	    npc = "Nanaa Mihgo - Windurst Woods";
		trust = "Nanaa Mihgo";
		location = "Balgas Dais";
		active = 1;	 
    elseif (player:getVar("NAJI_TRIB_FIGHT") == 1) then
	    npc = "Naji - Metalworks";
		trust = "Naji";
		location = "Waughroon Shrine";
		active = 1;	
    elseif (player:getVar("ZIED_TRIB_FIGHT") == 1) then
	    npc = "Torch - Castle Zvahl Baileys ";
		trust = "Zied";
		location = "QuBai Arena";
		active = 1;			
    end


    if (choice == nil) then
	player:PrintToPlayer("Syntax @trustpoints <#>.  The following choices are available:" ,0x1C);
	player:PrintToPlayer("0: Current Quest Info, 1: Adelheid, 2: Ayame, 3: Curilla, 4: Darcullin, 5: Excenmille, " ,0x1C);
	player:PrintToPlayer("6: Kupipi, 7: Lion, 8: Nanaa Mihgo, 9: Naji, 10: Zeid" ,0x1C);	
	elseif (tonumber(choice) == 0) then
	    if (active == 1) then
		    player:PrintToPlayer("Current Trust Point Quest: "..trust..".",0x1C);
		    player:PrintToPlayer("Starting NPC: "..npc..".",0x1C);			
		    player:PrintToPlayer("Fight Location: "..location..".",0x1C);			
		else
		    player:PrintToPlayer("You currently have no Trust Point Quests Active.",0x1C);	
        end			
	elseif (tonumber(choice) == 1) then
		player:PrintToPlayer("Adelheid: "..AdelheidPoints.."/".."10000 Trust Points.  Trust Tokens(Adelheid): "..AdelheidTokens,0x1C);
	elseif (tonumber(choice) == 2) then
		player:PrintToPlayer("Ayame: "..AyamePoints.."/".."10000 Trust Points.  Trust Tokens(Ayame): "..AyameTokens,0x1C);
	elseif (tonumber(choice) == 3) then
		player:PrintToPlayer("Curilla: "..CurillaPoints.."/".."10000 Trust Points.  Trust Tokens(Curilla): "..CurillaTokens,0x1C);
	elseif (tonumber(choice) == 4) then
		player:PrintToPlayer("Darcullin: "..DarcullinPoints.."/".."10000 Trust Points.  Trust Tokens(Darcullin): "..DarcullinTokens,0x1C);
	elseif (tonumber(choice) == 5) then
		player:PrintToPlayer("Excenmille: "..ExcenmillePoints.."/".."10000 Trust Points.  Trust Tokens(Excenmille): "..ExcenmilleTokens,0x1C);
	elseif (tonumber(choice) == 6) then
		player:PrintToPlayer("Kupipi: "..KupipiPoints.."/".."10000 Trust Points.  Trust Tokens(Kupipi): "..KupipiTokens,0x1C);		
	elseif (tonumber(choice) == 7) then
		player:PrintToPlayer("Lion: "..LionPoints.."/".."10000 Trust Points.  Trust Tokens(Lion): "..LionTokens,0x1C);
	elseif (tonumber(choice) == 8) then
		player:PrintToPlayer("Nanaa Mihgo: "..NanaPoints.."/".."10000 Trust Points.  Trust Tokens(Nanaa): "..NanaaTokens,0x1C);		
	elseif (tonumber(choice) == 9) then
		player:PrintToPlayer("Naji: "..NajiPoints.."/".."10000 Trust Points.  Trust Tokens(Naji): "..NajiTokens,0x1C);				
	elseif (tonumber(choice) == 10) then
		player:PrintToPlayer("Zeid: "..ZeidPoints.."/".."10000 Trust Points.  Trust Tokens(Zeid): "..ZeidTokens,0x1C);		
	end
	
end