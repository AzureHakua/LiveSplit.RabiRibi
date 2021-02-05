state("rabiribi", "v1.99t")
{
	uint playtime: "rabiribi.exe", 0x167AF18;
	uint tplaytime: "rabiribi.exe", 0x167C7B0;
	uint runtime: "rabiribi.exe", 0x167B0E0;
	uint truntime: "rabiribi.exe", 0x167C7B4;
	
	uint blackness: "rabiribi.exe", 0x16E7338;
	uint minimapstate: "rabiribi.exe", 0x16E7D9C; //0 is bottom, 1 is top
	uint eventid: "rabiribi.exe", 0x16E73BC; //5 is when a boss is defeated
	
	uint musicid: "rabiribi.exe", 0x84C888;
	uint bgfilterid: "rabiribi.exe", 0x172B4F8; //0 is default, 6 is alius

	uint mapid: "rabiribi.exe", 0xD87FA4;
	float xpos: "rabiribi.exe", 0x01689290, 0x10;
	float ypos: "rabiribi.exe", 0x01689290, 0x14;
	
	uint moneytotal: "rabiribi.exe", 0x167C10C;
	ushort eggtotal: "rabiribi.exe", 0x167CC14;
	
	uint gamestate: "rabiribi.exe", 0x84C8BC;
	uint menustate: "rabiribi.exe", 0x0172C294;
	uint savecursor: "rabiribi.exe", 0x0172C29C;
	float artbookactivetime: "rabiribi.exe", 0x01689290, 0x134C;
	float artbooktimer: "rabiribi.exe", 0x01689290, 0xB504;
	
	uint warphom: "rabiribi.exe", 0x0167AFB8;
	uint warpfc2: "rabiribi.exe", 0x0167AFBC;
	byte1664 itemarray: "rabiribi.exe", 0x01679EEC;
}

state("rabiribi", "v1.65")
{
	uint playtime: "rabiribi.exe", 0xD37048;
	uint tplaytime: "rabiribi.exe", 0xD388E0;
	uint runtime: "rabiribi.exe", 0xD37210;
	uint truntime: "rabiribi.exe", 0xD388E4;
	
	uint blackness: "rabiribi.exe", 0xA45824;
	uint minimapstate: "rabiribi.exe", 0xA46274; //0 is bottom, 1 is top
	uint eventid: "rabiribi.exe", 0xA4589C; //5 is when a boss is defeated
	
	uint musicid: "rabiribi.exe", 0xA46294;
	uint bgfilterid: "rabiribi.exe", 0xA8AA8C; //0 is default, 6 is alius

	uint mapid: "rabiribi.exe", 0xA908F8;
	float xpos: "rabiribi.exe", 0x940EE0, 0x0C;
	float ypos: "rabiribi.exe", 0x940EE0, 0x10;
	
	uint moneytotal: "rabiribi.exe", 0xD3823C;
	ushort eggtotal: "rabiribi.exe", 0xD38D44;
	
	uint gamestate: "rabiribi.exe", 0x4CFB78;
	uint menustate: "rabiribi.exe", 0xA8B81C;
	uint savecursor: "rabiribi.exe", 0xA8B824;
	float artbookactivetime: "rabiribi.exe", 0x940EE0, 0x1310;
	float artbooktimer: "rabiribi.exe", 0x940EE0, 0xB2FC;
	
	uint warphom: "rabiribi.exe", 0xD370E8;
	uint warpfc2: "rabiribi.exe", 0xD370EC;
	byte1664 itemarray: "rabiribi.exe", 0xD3601C;
}

state("rabiribi", "v2.00")
{
	uint playtime: "rabiribi.exe", 0x01672FB0;
	uint tplaytime: "rabiribi.exe", 0x01674848;
	uint runtime: "rabiribi.exe", 0x01673178;
	uint truntime: "rabiribi.exe", 0x0167484C;
	
	uint blackness: "rabiribi.exe", 0x016E3F48;
	uint minimapstate: "rabiribi.exe", 0x016E49AC; //0 is bottom, 1 is top
	uint eventid: "rabiribi.exe", 0x016E3FCC; //5 is when a boss is defeated
	
	uint musicid: "rabiribi.exe", 0x00844888;
	uint bgfilterid: "rabiribi.exe", 0x01728108; //0 is default, 6 is alius

	uint mapid: "rabiribi.exe", 0x00D9BF88;
	float xpos: "rabiribi.exe", 0x01681340, 0x10;
	float ypos: "rabiribi.exe", 0x01681340, 0x14;
	
	uint moneytotal: "rabiribi.exe", 0x016741A4;
	ushort eggtotal: "rabiribi.exe", 0x01674CAC;
	
	uint gamestate: "rabiribi.exe", 0x008448BC;
	uint menustate: "rabiribi.exe", 0x01728EA4;
	uint savecursor: "rabiribi.exe", 0x01728EAC;
	float artbookactivetime: "rabiribi.exe", 0x01681340, 0x134C;
	float artbooktimer: "rabiribi.exe", 0x01681340, 0xB504;
	
	uint warphom: "rabiribi.exe", 0x01673050;
	uint warpfc2: "rabiribi.exe", 0x01673054;
	byte1664 itemarray: "rabiribi.exe", 0x01671F84;
}

startup
{
	settings.Add("practice", false, "Practice Mode");
	settings.SetToolTip("practice", "Practice Mode starts timer on boss and resets on reload. For use with the boss settings below.");
	settings.Add("runtime", true, "Use T.Runtime");
	settings.SetToolTip("runtime", "When unchecked, T.Playtime will be used for IGT instead.");
	settings.Add("main", true, "Main Bosses");
	settings.Add("other", true, "Other Settings");
	
	settings.CurrentDefaultParent = "main";
		settings.Add("prologue", true, "Prologue Bosses");
		settings.Add("town", true, "Town Members");
		settings.Add("story", true, "Story Bosses");	
			settings.CurrentDefaultParent = "prologue";
				settings.Add("Cocoa1", true, "Prologue Cocoa");
				settings.Add("Ribbon", true, "Ribbon");
				settings.Add("Ashuri1", true, "Prologue Ashuri");
				settings.Add("ForestUPRPRC", false, "Forest UPRPRC");
				settings.Add("BeachUPRPRC", false, "Beach UPRPRC");
			settings.CurrentDefaultParent = "town";
				settings.Add("Aruraune", false, "Aruraune");
				settings.Add("Ashuri2", false, "Ashuri 2");
				settings.Add("Chocolate", true, "Chocolate");
				settings.Add("Cicini", true, "Cicini");
				settings.Add("Cocoa2", true, "Cocoa 2");
				settings.Add("Keke", false, "Keke Bunny");
				settings.Add("Kotri1", true, "Kotri 1");
				settings.Add("Kotri2", true, "Kotri 2");
				settings.Add("Kotri3", true, "Kotri 3");
				settings.Add("Lilith1", false, "Lilith 1");
				settings.Add("Lilith2", false, "Lilith 2");
				settings.Add("Nieve", true, "Nieve");
				settings.Add("Nixie", true, "Nixie");
				settings.Add("Pandora", true, "Pandora");
				settings.Add("Crystals", false, "Rainbow Crystals");
				settings.Add("Rita", true, "Rita");
				settings.Add("Saya", false, "Saya");
				settings.Add("Seana1", false, "Seana1");
				settings.Add("Seana2", false, "Seana2");
				settings.Add("Syaro", false, "Syaro");
				settings.Add("Vanilla", true, "Vanilla");
			settings.CurrentDefaultParent = "story";
				settings.Add("Alius1", true, "Illusion Alius I");
				settings.Add("Alius2", true, "Illusion Alius II");
				settings.Add("Alius3", false, "Illusion Alius III");
				settings.Add("Miru", false, "Miru");
				settings.Add("Noah1", false, "Noah");
				settings.Add("Noah2", false, "Noah 2");
				settings.Add("Noah3", true, "Noah 3");
				settings.Add("Rumi", false, "Rumi");
				settings.Add("Miriam", false, "Miriam");
				settings.Add("Irisu", false, "Irisu");
	settings.CurrentDefaultParent = "other";
		settings.Add("skips", true, "Boss Skips");
		settings.Add("lab", true, "Exotic Lab");
		settings.Add("rando", false, "Custom Map");
		settings.Add("hundo", false, "ATM / 100%");
		settings.Add("xtm", false, "Legacy");
			settings.CurrentDefaultParent = "skips";
				settings.Add("SyaroSkip", true, "Syaro Skip");
				settings.Add("NoahSkip", true, "Noah Skip");
				settings.Add("Kotri3Skip", false, "Kotri 3 Skip");
				settings.Add("ArurauneSkip", false, "Aruraune Skip");
			settings.CurrentDefaultParent = "lab";
				settings.Add("BigBox", false, "Mr. Big Box");
				settings.Add("RainbowMaid", false, "Rainbow Maid");
				settings.Add("Computer", true, "Computer");
				settings.Add("Sandbag", false, "Sandbag");
			settings.CurrentDefaultParent = "rando";
				settings.Add("EasterEgg", false, "Every Egg");
				settings.Add("EasterEgg5", false, "5 Eggs");
				settings.Add("EasterEgg7", false, "7 Eggs");
				settings.Add("Trophy", false, "Trophy");
			settings.CurrentDefaultParent = "hundo";
				settings.Add("HomWarp", false, "HoM Warp Stone");
				settings.Add("Fc2Warp", false, "FC2 Warp Stone");
				settings.Add("Item100", false, "100% Item Collection");
			settings.CurrentDefaultParent = "xtm";
				settings.Add("PrePrologue", false, "Pre Prologue");
				settings.Add("BeachSkip", false, "Beach Skip");
				settings.Add("MRE", false, "Miru Early");
}

init
{
	if(modules.First().ModuleMemorySize == 0x10CE000)
		version = "v1.65";
	else if(modules.First().ModuleMemorySize == 0x01874000)
		version = "v2.00";
	else
		version = "v1.99t";
	
	
	refreshRate = 60;
	vars.xtile = (int)(current.xpos/1280) + current.mapid * 25;
	vars.ytile = (int)(current.ypos/720);
	vars.reloading = false;
	
	vars.hasSplit = new bool[100];
	vars.maxEggs = 0;
	vars.framecounter = 0;
}

update
{
	return true;
}

gameTime
{
	/*
		truntime is total frame count
		tplaytime is total frame count without cutscenes or menus
		
		by default, truntime is used as that is what leaderboard
		submissions require for "Time without Loads"
	*/
	if(settings["runtime"]){
		vars.igt = (int) current.truntime * 1000 / 60;
	}
	else{
		vars.igt = (int) current.tplaytime * 1000 / 60;
	}
	return new TimeSpan(0,0,0,0,vars.igt);
}

start
{
	/*
		a sharp increase in screen blackness indicates that the game has started
		this also triggers for starting the game from a file, so it's not perfect
	*/
	if((current.savecursor == 0
		&& old.blackness == 0
		&& current.blackness >= 100000
		&& (
			(version != "v1.65" && current.menustate == 12)
			|| (version == "v1.65" && current.menustate == 2)
		)
	) || (
		// for artbook things
		current.artbookactivetime >= 60
		&& old.artbooktimer == 0
		&& current.artbooktimer > 0
	)){ 
		vars.hasSplit = new bool[100];
		vars.maxEggs = 0;
		vars.framecounter = 0;
		return true; 
	}
	//boss practice
	if(settings["practice"]
		&& !vars.reloading
		&& (current.minimapstate > old.minimapstate)
	){
		vars.hasSplit = new bool[100];
		return true;
	}
}

reset
{
	/*
		resets the timer when the title music plays
		disable this feature if you're running
		a category where save & quit is involved
	*/
	if((
		(
			(version != "v1.65" && current.menustate == 2)
			|| (version == "v1.65" && (current.musicid == 45 || current.musicid == 46))
		)
	) || (
		old.artbookactivetime < 60
		&& current.artbookactivetime >= 60
	)){ 
		vars.hasSplit = new bool[100];
		vars.maxEggs = 0;
		vars.framecounter = 0;
		return true;
	}
	//boss practice
	if(settings["practice"] && vars.reloading)
	{
		vars.hasSplit = new bool[100];
		vars.reloading = false;
		return true;
	}
	return false;
}

split
{
	if(vars.framecounter < 100000) {
		vars.framecounter++;
	}
	vars.xtile_old = vars.xtile;
	vars.xtile = (int)(current.xpos/1280) + current.mapid * 25;
	vars.ytile = (int)(current.ypos/720);
	vars.reloading = current.playtime == 0 || (current.playtime < old.playtime);
	
	// don't split outside main game state
	if(current.gamestate != 2) return false;
	
	//when the minimap shifts down, it means a boss has been defeated
	if(!vars.reloading && (old.minimapstate > current.minimapstate))
	{
		//Prologue Bosses
		if(settings["Cocoa1"]
			&& (15 <= vars.xtile && vars.xtile <= 18)
			&& (6 <= vars.ytile && vars.ytile <= 7)
			&& current.musicid == 44
		){ print("Cocoa1 Split"); return true; }
		
		if(settings["Ribbon"]
			&& (19 <= vars.xtile && vars.xtile <= 21)
			&& (13 <= vars.ytile && vars.ytile <= 14)
			&& current.musicid == 44
		){ print("Ribbon Split"); return true; }
		
		if(settings["Ashuri1"]
			&& (31 <= vars.xtile && vars.xtile <= 33)
			&& (10 <= vars.ytile && vars.ytile <= 11)
			&& current.musicid == 44
		){ print("Ashuri1 Split"); return true; }
		
		if(settings["BeachUPRPRC"]
			&& (43 <= vars.xtile && vars.xtile <= 45)
			&& (10 <= vars.ytile && vars.ytile <= 11)
			&& old.musicid == 36
		){ print("BeachUPRPRC Split"); return true; }
		
		//Town Members
		if(settings["Aruraune"]
			&& (4 <= vars.xtile && vars.xtile <= 7)
			&& (4 <= vars.ytile && vars.ytile <= 5)
		){ print("Aruraune Split"); return true; }
		
		if(settings["Ashuri2"]
			&& (109 <= vars.xtile && vars.xtile <= 111)
			&& (6 <= vars.ytile && vars.ytile <= 7)
		){print("Ashuri2 Split"); return true; }
		
		if(settings["Cicini"]
			&& (21 <= vars.xtile && vars.xtile <= 23)
			&& (13 <= vars.ytile && vars.ytile <= 14)
			&& current.musicid == 48
		){ print("Cicini Split"); return true; }
		
		if(settings["Cocoa2"]
			&& (13 <= vars.xtile && vars.xtile <= 15)
			&& (9 <= vars.ytile && vars.ytile <= 10)
		){ print("Cocoa2 Split"); return true; }
		
		if(settings["Keke"]
			&& (162 <= vars.xtile && vars.xtile <= 164)
			&& (3 <= vars.ytile && vars.ytile <= 4)
		){ print("Keke Split"); return true; }
		
		if(settings["Kotri1"]
			&& (53 <= vars.xtile && vars.xtile <= 55)
			&& (15 <= vars.ytile && vars.ytile <= 16)
		){ print("Kotri1 Split"); return true; }
		
		if(settings["Kotri2"]
			&& (39 <= vars.xtile && vars.xtile <= 41)
			&& (5 <= vars.ytile && vars.ytile <= 6)
		){ print("Kotri2 Split"); return true; }
		
		if(settings["Kotri3"]
			&& (185 <= vars.xtile && vars.xtile <= 187)
			&& (3 <= vars.ytile && vars.ytile <= 4)
		){ print("Kotri3 Split"); return true; }
		
		if(settings["Lilith1"]
			&& (47 <= vars.xtile && vars.xtile <= 49)
			&& (1 <= vars.ytile && vars.ytile <= 2)
		){ print("Lilith1 Split"); return true; }
		
		if(settings["Lilith2"]
			&& (48 <= vars.xtile && vars.xtile <= 48)
			&& (0 <= vars.ytile && vars.ytile <= 1)
		){ print("Lilith2 Split"); return true; }
		
		if(settings["Nieve"]
			&& (76 <= vars.xtile && vars.xtile <= 78)
			&& (2 <= vars.ytile && vars.ytile <= 3)
		){ print("Nieve Split"); return true; }
		
		if(settings["Nixie"]
			&& (85 <= vars.xtile && vars.xtile <= 88)
			&& (5 <= vars.ytile && vars.ytile <= 7)
		){ print("Nixie Split"); return true; }
		
		if(settings["Pandora"]
			&& (vars.xtile == 45)
			&& (12 <= vars.ytile && vars.ytile <= 14)
		){ print("Pandora Split"); return true; }
		
		if(settings["Crystals"]
			&& (10 <= vars.xtile && vars.xtile <= 12)
			&& (13 <= vars.ytile && vars.ytile <= 14)
		){ print("Crystals Split"); return true; }
		
		if(settings["Saya"]
			&& (121 <= vars.xtile && vars.xtile <= 124)
			&& (2 <= vars.ytile && vars.ytile <= 3)
		){ print("Saya Split"); return true; }
		
		if(settings["Seana1"]
			&& (82 <= vars.xtile && vars.xtile <= 89)
			&& (15 <= vars.ytile && vars.ytile <= 16)
		){ print("Seana1 Split"); return true; }
		
		if(settings["Seana2"]
			&& (58 <= vars.xtile && vars.xtile <= 60)
			&& (15 <= vars.ytile && vars.ytile <= 16)
		){ print("Seana2 Split"); return true; }
		
		if(settings["Syaro"]
			&& (238 <= vars.xtile && vars.xtile <= 241)
			&& (5 <= vars.ytile && vars.ytile <= 6)
			&& current.musicid == 48
		){ print("Syaro Split"); return true; }
		
		if(settings["Vanilla"]
			&& (63 <= vars.xtile && vars.xtile <= 65)
			&& (3 <= vars.ytile && vars.ytile <= 4)
		){ print("Vanilla Split"); return true; }
		
		//Story Bosses
		if(settings["Alius1"]
			&& (211 <= vars.xtile && vars.xtile <= 214)
			&& (6 <= vars.ytile && vars.ytile <= 7)
			&& current.bgfilterid == 6
		){ print("Alius1 Split"); return true; }
		
		if(settings["Alius2"]
			&& (206 <= vars.xtile && vars.xtile <= 208)
			&& (6 <= vars.ytile && vars.ytile <= 7)
			&& current.bgfilterid == 6
		){ print("Alius2 Split"); return true; }
		
		if(settings["Alius3"]
			&& (216 <= vars.xtile && vars.xtile <= 218)
			&& (6 <= vars.ytile && vars.ytile <= 7)
			&& current.bgfilterid == 6
		){ print("Alius3 Split"); return true; }
		
		if(settings["Miru"]
			&& (222 <= vars.xtile && vars.xtile <= 224)
			&& (3 <= vars.ytile && vars.ytile <= 4)
		){ print("Miru Split"); return true; }
		
		if(settings["Noah3"]
			&& (215 <= vars.xtile && vars.xtile <= 217)
			&& (1 <= vars.ytile && vars.ytile <= 2)
		){ print("Noah3 Split"); return true; }
		
		if(settings["Miriam"]
			&& (187 <= vars.xtile && vars.xtile <= 190)
			&& (8 <= vars.ytile && vars.ytile <= 9)
		){ print("Miriam Split"); return true; }
		
		if(settings["Rumi"]
			&& (1 <= vars.xtile && vars.xtile <= 5)
			&& (11 <= vars.ytile && vars.ytile <= 16)
		){ print("Rumi Split"); return true; }
		
		if(settings["Irisu"]
			&& (36 <= vars.xtile && vars.xtile <= 38)
			&& vars.ytile == 0
		){ print("Irisu Split"); return true; }
		//Misc
		if(settings["BigBox"]
			&& (112 <= vars.xtile && vars.xtile <= 114)
			&& (15 <= vars.ytile && vars.ytile <= 16)
		){ print("BigBox Split"); return true; }
		
		if(settings["RainbowMaid"]
			&& (119 <= vars.xtile && vars.xtile <= 121)
			&& (14 <= vars.ytile && vars.ytile <= 15)
		){ print("RainbowMaid Split"); return true; }
	}
	
	//Non-minimap changing bosses
	if(settings["ForestUPRPRC"]
		&& (current.musicid == 36 && old.musicid == 36)
		&& (current.mapid == 1 && old.mapid == 0)
	){ print("ForestUPRPRC Split"); return true; }
			
	if(settings["Rita"]
		&& (85 <= vars.xtile && vars.xtile <= 87)
		&& (9 <= vars.ytile && vars.ytile <= 10)
		&& (current.eventid == 5 && old.eventid == 0)
	){ print("Rita Split"); return true; }
	
	if(settings["Chocolate"]
		&& (65 <= vars.xtile && vars.xtile <= 67)
		&& (13 <= vars.ytile && vars.ytile <= 15)
		&& (current.eventid == 5 && old.eventid == 0)
	){ print("Chocolate Split"); return true; }
	
	if(settings["Noah1"]
		&& (217 <= vars.xtile && vars.xtile <= 219)
		&& (1 <= vars.ytile && vars.ytile <= 2)
		&& (current.musicid == 43 && old.musicid == 37)
		&& !vars.hasSplit[0]
	){ print("Noah1 Split"); return vars.hasSplit[0] = true; }
	
	if(settings["Noah2"]
		&& (215 <= vars.xtile && vars.xtile <= 219)
		&& (1 <= vars.ytile && vars.ytile <= 2)
		&& (current.musicid == 42 && old.musicid == 43)
		&& !vars.hasSplit[1]
	){ print("Noah2 Split"); return vars.hasSplit[1] = true; }
	//Misc
	if(settings["Computer"]
		&& (139 <= vars.xtile && vars.xtile <= 141)
		&& vars.ytile == 12
		&& (current.moneytotal - old.moneytotal == 17500)
		&& !vars.hasSplit[2]
	){ print("Computer Split"); return vars.hasSplit[2] = true; }
	
	if(settings["Sandbag"]
		&& vars.xtile == 52
		&& (4 <= vars.ytile && vars.ytile <= 7)
		&& current.musicid == 13
		&& ((version == "1.99t" && old.musicid == 59) || (version != "1.99t" && old.musicid == 40))
		&& !vars.hasSplit[3]
	){ print("Sandbag Split"); return vars.hasSplit[3] = true; }
	//Skips
	if(settings["SyaroSkip"]
		&& vars.xtile == 117
		&& vars.ytile == 16
		&& (current.musicid == 19 && old.musicid == 48)
		&& !vars.hasSplit[4]
	){ print("SyaroSkip Split"); return vars.hasSplit[4] = true; }
	
	if(settings["NoahSkip"]
		&& (vars.xtile_old == 217 && vars.xtile == 216)
		&& vars.ytile == 2
		&& !vars.hasSplit[5]
	){ print("NoahSkip Split"); return vars.hasSplit[5] = true; }
	
	if(settings["Kotri3Skip"]
		&& (vars.xtile_old == 185 && vars.xtile != 185)
		&& vars.ytile == 4
		&& current.musicid == 38
		&& !vars.hasSplit[6]
	) { print("Kotri3Skip Split"); return vars.hasSplit[6] = true; }
	
	if(settings["ArurauneSkip"]
		&& vars.xtile == 6
		&& vars.ytile == 4
		&& current.musicid == 47
		&& !vars.hasSplit[7]
	) { print("ArurauneSkip Split"); return vars.hasSplit[7] = true; }
	
	//Randomizer
	if(settings["EasterEgg"]
		&& (current.eggtotal > vars.maxEggs && vars.framecounter >= refreshRate)
	){
		print("EasterEgg Split"); 
		vars.maxEggs++;
		return true;
	}
	
	if(settings["EasterEgg5"]
		&& !settings["EasterEgg"]
		&& current.eggtotal == 5
		&& old.eggtotal == 4
	){ print("EasterEgg5 Split"); return true; }
	
	if(settings["EasterEgg7"]
		&& !settings["EasterEgg"]
		&& current.eggtotal == 7
		&& old.eggtotal == 6
	){ print("EasterEgg7 Split"); return true; }
	
	if(settings["Trophy"]
		&& current.itemarray[168] == 1
		&& old.itemarray[168] == 0
	){ print("Trophy Split"); return true; }
	
	//Misc
	if(settings["HomWarp"]
		&& !vars.reloading
		&& !vars.hasSplit[8]
		&& vars.xtile == 186
		&& vars.ytile == 9
		&& current.warphom == 1
		&& old.warphom == 0
	) { print("HomWarp Split"); return vars.hasSplit[8] = true; }
	
	if(settings["Fc2Warp"]
		&& !vars.reloading
		&& !vars.hasSplit[9]
		&& vars.xtile == 4
		&& vars.ytile == 16
		&& current.warpfc2 == 1
		&& old.warpfc2 == 0
	) { print("Fc2Warp Split"); return vars.hasSplit[9] = true; }
	
	if(settings["Item100"] && !vars.hasSplit[10]) {
		// ribbon badge
		if(current.itemarray[372] == 0) return false;
		// items
		for(int i=4; i<148; i+=4) {if(current.itemarray[i] == 0) return false;}
		// badges
		for(int i=256; i<380; i+=4) {if(current.itemarray[i] == 0) return false;}
		// health ups
		for(int i=384; i<484; i+=4) {if(current.itemarray[i] == 0) return false;}
		// attack ups
		for(int i=640; i<720; i+=4) {if(current.itemarray[i] == 0) return false;}
		// mana ups
		for(int i=896; i<996; i+=4) {if(current.itemarray[i] == 0) return false;}
		// regen ups
		for(int i=1152; i<1212; i+=4) {if(current.itemarray[i] == 0) return false;}
		// pack ups
		for(int i=1408; i<1448; i+=4) {if(current.itemarray[i] == 0) return false;}

		print("Item100 Split"); 
		return vars.hasSplit[10] = true;
	}
	
	//Legacy
	if(settings["PrePrologue"]
		&& current.eventid == 311 && old.eventid == 0
	) { print("PrePrologue Split"); return true; }
	if(settings["BeachSkip"]
		&& (current.xpos < 2250 && old.xpos > 5500)
		&& (current.mapid == 1 && old.mapid == 0)
	) { print("BeachSkip Split"); return true; }
	if(settings["MRE"]
		&& !vars.hasSplit[11]
		&& current.musicid == 54
		&& vars.ytile == 7
		&& current.mapid == 8
		&& (current.xpos >= 24486 && current.xpos < 24586 && old.xpos < 24486)
	) { print("MRE Split"); return vars.hasSplit[11] = true; }
	
	return false;
}
