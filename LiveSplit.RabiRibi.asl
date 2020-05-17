state("rabiribi", "v1.99t")
{
	uint playtime: "rabiribi.exe", 0x167AF18;
	uint tplaytime: "rabiribi.exe", 0x167C7B0;
	uint runtime: "rabiribi.exe", 0x167B0E0;
	uint truntime: "rabiribi.exe", 0x167C7B4;
	
	uint blackness: "rabiribi.exe", 0x16E7338;
	uint minimapstate: "rabiribi.exe", 0x16E7D9C; //0 is bottom, 1 is top
	
	uint musicid: "rabiribi.exe", 0x84C888;
  uint bgfilterid: "rabiribi.exe", 0x172B4F8; //0 is default, 6 is alius

	uint mapid: "rabiribi.exe", 0xD87FA4;
	float xpos: "rabiribi.exe", 0x01689290, 0x10;
  float ypos: "rabiribi.exe", 0x01689290, 0x14;
	
	uint moneytotal: "rabiribi.exe", 0x167C10C;
}

startup
{
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
			settings.CurrentDefaultParent = "skips";
				settings.Add("SyaroSkip", true, "Syaro Skip");
				settings.Add("NoahSkip", true, "Noah Skip");
			settings.CurrentDefaultParent = "lab";
				settings.Add("BigBox", false, "Mr. Big Box");
				settings.Add("RainbowMaid", false, "Rainbow Maid");
				settings.Add("Computer", true, "Computer");
}

init
{
	refreshRate = 60;
	vars.xtile = (int)(current.xpos/1280) + current.mapid * 25;
	vars.ytile = (int)(current.ypos/720);
	vars.reloading = false;
	vars.noahSkipped = false;
	vars.noah1Time = 0;
	vars.noah2Time = 0;
	vars.computerTime = 0;
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
		
		by default, tplaytime is used as that is what leaderboard
		submissions require, but truntime might be more useful for
		personal use as it's a more accurate real time
	*/
	vars.igt = (int) current.truntime * 1000 / 60;
	//vars.igt = (int) current.tplaytime * 1000 / 60;
	return new TimeSpan(0,0,0,0,vars.igt);
}

start
{
	/*
		a sharp increase in screen blackness indicates that the game has started
		this also triggers for starting the game from a file, so it's not perfect
	*/
	if(current.musicid == 53
		&& old.blackness == 0
		&& current.blackness >= 100000
	){ return true; }
}

reset
{
	/*
		resets the timer when the title music plays
		disable this feature if you're running
		a category where save & quit is involved
	*/
	if(current.musicid == 45
		|| current.musicid == 46
	){ return true;	}
	return false;
}

split
{
	vars.xtile = (int)(current.xpos/1280) + current.mapid * 25;
	vars.ytile = (int)(current.ypos/720);
	vars.reloading = current.playtime == 0 || (current.playtime < old.playtime);
	
	//when the minimap shifts down, it means a boss has been defeated
	if(!vars.reloading && (old.minimapstate > current.minimapstate))
	{
		//Prologue Bosses
		if(settings["Cocoa1"]
			&& (15 <= vars.xtile && vars.xtile <= 18)
			&& (6 <= vars.ytile && vars.ytile <= 7)
			&& current.musicid == 44
		){ return true; }
		
		if(settings["Ribbon"]
			&& (19 <= vars.xtile && vars.xtile <= 21)
			&& (13 <= vars.ytile && vars.ytile <= 14)
			&& current.musicid == 44
		){ return true; }
		
		if(settings["Ashuri1"]
			&& (31 <= vars.xtile && vars.xtile <= 33)
			&& (10 <= vars.ytile && vars.ytile <= 11)
			&& current.musicid == 44
		){ return true; }
		//Town Members
		if(settings["Aruraune"]
			&& (4 <= vars.xtile && vars.xtile <= 7)
			&& (4 <= vars.ytile && vars.ytile <= 5)
		){ return true; }
		
		if(settings["Ashuri2"]
			&& (109 <= vars.xtile && vars.xtile <= 111)
			&& (6 <= vars.ytile && vars.ytile <= 7)
		){ return true; }
		
		if(settings["Chocolate"]
			&& (65 <= vars.xtile && vars.xtile <= 67)
			&& (13 <= vars.ytile && vars.ytile <= 15)
		){ return true; }
		
		if(settings["Cicini"]
			&& (21 <= vars.xtile && vars.xtile <= 23)
			&& (13 <= vars.ytile && vars.ytile <= 14)
			&& current.musicid == 48
		){ return true; }
		
		if(settings["Cocoa2"]
			&& (13 <= vars.xtile && vars.xtile <= 15)
			&& (9 <= vars.ytile && vars.ytile <= 10)
		){ return true; }
		
		if(settings["Keke"]
			&& (162 <= vars.xtile && vars.xtile <= 164)
			&& (3 <= vars.ytile && vars.ytile <= 4)
		){ return true; }
		
		if(settings["Kotri1"]
			&& (53 <= vars.xtile && vars.xtile <= 55)
			&& (15 <= vars.ytile && vars.ytile <= 16)
		){ return true; }
		
		if(settings["Kotri2"]
			&& (39 <= vars.xtile && vars.xtile <= 41)
			&& (5 <= vars.ytile && vars.ytile <= 6)
		){ return true; }
		
		if(settings["Kotri3"]
			&& (185 <= vars.xtile && vars.xtile <= 187)
			&& (3 <= vars.ytile && vars.ytile <= 4)
		){ return true; }
		
		if(settings["Lilith1"]
			&& (47 <= vars.xtile && vars.xtile <= 49)
			&& (1 <= vars.ytile && vars.ytile <= 2)
		){ return true; }
		
		if(settings["Lilith2"]
			&& (48 <= vars.xtile && vars.xtile <= 48)
			&& (0 <= vars.ytile && vars.ytile <= 1)
		){ return true; }
		
		if(settings["Nieve"]
			&& (76 <= vars.xtile && vars.xtile <= 78)
			&& (2 <= vars.ytile && vars.ytile <= 3)
		){ return true; }
		
		if(settings["Nixie"]
			&& (85 <= vars.xtile && vars.xtile <= 88)
			&& (5 <= vars.ytile && vars.ytile <= 7)
		){ return true; }
		
		if(settings["Pandora"]
			&& (44 <= vars.xtile && vars.xtile <= 45)
			&& (12 <= vars.ytile && vars.ytile <= 14)
		){ return true; }
		
		if(settings["Crystals"]
			&& (10 <= vars.xtile && vars.xtile <= 12)
			&& (13 <= vars.ytile && vars.ytile <= 14)
		){ return true; }
		
		if(settings["Rita"]
			&& (85 <= vars.xtile && vars.xtile <= 87)
			&& (9 <= vars.ytile && vars.ytile <= 10)
			&& old.musicid == 34
		){ return true; }
		
		if(settings["Saya"]
			&& (121 <= vars.xtile && vars.xtile <= 124)
			&& (2 <= vars.ytile && vars.ytile <= 3)
		){ return true; }
		
		if(settings["Seana1"]
			&& (82 <= vars.xtile && vars.xtile <= 89)
			&& (15 <= vars.ytile && vars.ytile <= 16)
		){ return true; }
		
		if(settings["Seana2"]
			&& (58 <= vars.xtile && vars.xtile <= 60)
			&& (15 <= vars.ytile && vars.ytile <= 16)
		){ return true; }
		
		if(settings["Syaro"]
			&& (238 <= vars.xtile && vars.xtile <= 241)
			&& (5 <= vars.ytile && vars.ytile <= 6)
			&& current.musicid == 48
		){ return true; }
		
		if(settings["Vanilla"]
			&& (63 <= vars.xtile && vars.xtile <= 65)
			&& (3 <= vars.ytile && vars.ytile <= 4)
		){ return true; }
		//Story Bosses
		if(settings["Alius1"]
			&& (211 <= vars.xtile && vars.xtile <= 214)
			&& (6 <= vars.ytile && vars.ytile <= 7)
			&& current.bgfilterid == 6
		){ return true; }
		
		if(settings["Alius2"]
			&& (206 <= vars.xtile && vars.xtile <= 208)
			&& (6 <= vars.ytile && vars.ytile <= 7)
			&& current.bgfilterid == 6
		){ return true; }
		
		if(settings["Alius3"]
			&& (216 <= vars.xtile && vars.xtile <= 218)
			&& (6 <= vars.ytile && vars.ytile <= 7)
			&& current.bgfilterid == 6
		){ return true; }
		
		if(settings["Miru"]
			&& (222 <= vars.xtile && vars.xtile <= 224)
			&& (3 <= vars.ytile && vars.ytile <= 4)
		){ return true; }
		
		if(settings["Noah3"]
			&& (215 <= vars.xtile && vars.xtile <= 217)
			&& (1 <= vars.ytile && vars.ytile <= 2)
		){ return true; }
		
		if(settings["Miriam"]
			&& (187 <= vars.xtile && vars.xtile <= 190)
			&& (8 <= vars.ytile && vars.ytile <= 9)
		){ return true; }
		
		if(settings["Rumi"]
			&& (1 <= vars.xtile && vars.xtile <= 4)
			&& (15 <= vars.ytile && vars.ytile <= 16)
		){ return true; }
		
		if(settings["Irisu"]
			&& (36 <= vars.xtile && vars.xtile <= 38)
			&& vars.ytile == 0
		){ return true; }
		//Misc
		if(settings["BigBox"]
			&& (112 <= vars.xtile && vars.xtile <= 114)
			&& (15 <= vars.ytile && vars.ytile <= 16)
		){ return true; }
		
		if(settings["RainbowMaid"]
			&& (119 <= vars.xtile && vars.xtile <= 121)
			&& (14 <= vars.ytile && vars.ytile <= 15)
		){ return true; }
	}
	//Non-minimap changing bosses
	if(settings["Noah1"]
		&& (217 <= vars.xtile && vars.xtile <= 219)
		&& (1 <= vars.ytile && vars.ytile <= 2)
		&& (current.musicid == 43 && old.musicid == 37)
		&& (current.playtime > vars.noah1Time)
	){ 
		vars.noah1Time = current.playtime;
		return true;
	}
	
	if(settings["Noah2"]
		&& (215 <= vars.xtile && vars.xtile <= 219)
		&& (1 <= vars.ytile && vars.ytile <= 2)
		&& (current.musicid == 42 && old.musicid == 43)
		&& (current.playtime > vars.noah2Time)
	){
		vars.noah2Time = current.playtime;
		return true;
	}
	//Misc
	if(settings["Computer"]
		&& vars.xtile == 140
		&& vars.ytile == 12
		&& (current.moneytotal - old.moneytotal == 17500)
		&& (current.playtime > vars.computerTime)
	){ 
		vars.computerTime = current.playtime;
		return true;
	}
	//Skips
	if(settings["SyaroSkip"]
		&& vars.xtile == 117
		&& vars.ytile == 16
		&& (current.musicid == 19 && old.musicid == 48)
	){ return true; }
	
	if(settings["NoahSkip"]
		&& vars.xtile == 216
		&& vars.ytile == 2
		&& !vars.noahSkipped
	){ return vars.noahSkipped = true; }
	
	return false;
}
