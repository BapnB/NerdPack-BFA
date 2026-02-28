local _, Subzrk = ...
local unpack = _G.unpack
local NeP = _G.NeP

local colorShaman = "|c000070de"

local GUI = {
		-- Header
	{type = "header",  	size = 16, text = "Keybinds", align = "center"},
	{type = 'spacer'},
	{type = 'checkbox', text = 'Use Keybinds Out of Combat', key = 'G_OOCK', width = 55, default = false},
	{type = 'spacer'},
	{type = "checkbox",	text = "Left Shift: "..colorShaman.."Earthbind Totem|r", align = "left", key = "shift", default = true},
	{type = "checkbox",	text = "Left Ctrl: "..colorShaman.."Talent's Totem|r", align = "left", key = "control", default = true},
	{type = "checkbox",	text = "Left Alt: "..colorShaman.."Healing Surge|r", align = "left", key = "alt", default = true},
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
		-- Settings
	{type = "header", 	size = 16, text = "Class Settings", align = "center"},
	{type = 'checkbox', text = 'Auto use Purge', key = 'purge', width = 55, default = true, desc = colorShaman.."there will be 10 sec delay between each cast of Purge|r"},
	{type = "checkspin",text = "Kil\"Jaeden\"s Burning Wish - Units", key = "kj", align = "left", width = 55, step = 1, shiftStep = 2, spin = 4, max = 20, min = 1, check = true, desc = colorShaman.."Legendary will be used only on selected amount of units!|r"},
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
		-- Survival
	{type = "header", 	size = 16, text = "Survival", align = "center", size = 16},
	{type = "checkspin",text = "Healing Surge self", key = "HSps", align = "left", width = 55,  spin = 20, step = 5, shiftStep = 10, max = 100, min = 1, check = true},
	{type = "checkspin",text = "Healing Surge others", key = "HSpo", align = "left", width = 55,  spin = 20, step = 5, shiftStep = 10, max = 100, min = 1, check = true},
	{type = "checkspin",text = "Astral Shift", key = "AS", align = "left", width = 55,  spin = 30, step = 5, shiftStep = 10, max = 100, min = 1, check = true},
	{type = "checkspin",text = "Healthstone", key = "HS", align = "left", width = 55, step = 5, shiftStep = 10, spin = 45, max = 100, min = 1, check = true},
	{type = "checkspin",text = "Healing Potion", key = "AHP", align = "left", width = 55, step = 5, shiftStep = 10, spin = 45, max = 100, min = 1, check = true},
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
}

local exeOnLoad = function()

    print("|c0000FA9A ----------------------------------------------------------------------|r")
    print("|c0000FA9A --- |r"..ColorClass.."SHAMAN - Enhancement|r")
	print("|cffADFF2F ---------------------------------------------------------------------------|r")
	print("|cffADFF2F --- |rPVE:  1/3 - 2/X - 3/X - 4/2 - 5/1 - 6/1 - 7/2")
	print("|cffADFF2F ---------------------------------------------------------------------------|r")

	NeP.Interface:AddToggle({
  
		-- Doom Winds
		key = 'xDoom',
		name = 'Doon Winds',
		text = 'Enable/Disable: Automatic Doom Winds',
		icon = 'Interface\\ICONS\\inv_mace_1h_artifactdoomhammer_d_01',
		
	})
	
	NeP.Interface:AddToggle({key = "dispelall", icon = "Interface\\Icons\\ability_shaman_cleansespirit.png", name = "Dispell", text = "ON/OFF Auto Dispell All"})

end

local Keybinds = {

	{"Earthbind Totem", "keybind(shift) & UI(shift)", "cursor.ground"},
	{"Lightning Surge Totem", "talent(3,1) & keybind(control) & UI(control)", "cursor.ground"},
	{"Earthgrab Totem", "talent(3,2) & keybind(control) & UI(control)", "cursor.ground"},
	{"Voodoo Totem", "talent(3,1) & keybind(control) & UI(control)", "cursor.ground"},
	{"Healing Surge", "keybind(alt) & UI(alt)", "lowest"},
	
}

local General = {

	{(function() PlaySoundKitID(11466, "master", true) end) , "hashero & targettimeout(hero,30)"},
	{(function() PlaySoundKitID(11466, "master", true) end) , "player.buff(Ascendance) & targettimeout(asc,10)"},
	--{"%dispelself", "UI(dispell)"},
	{"Purge", "UI(purge) & inRange.spell & state.purge & !lastcast(Purge).succeed & targettimeout(Purge,10)", "target"},
	
}

local Interrupts = {

	{"!Wind Shear", "interruptAt(63) & inRange.spell", "target"},
	{"!Wind Shear", "interruptAt(63) & inRange.spell", "enemies"},
	{"!Arcane Torrent", "interruptAt(60) & inRange(Stormstrike).spell", "target"},

}

local Survival = {

	{"Healing Surge", "UI(HSps_check) & health <= UI(HSps_spin) & player.maelstrom >= 20", "player"},
	{"Healing Surge", "UI(HSpo_check) & health <= UI(HSpo_spin) & player.maelstrom >= 20 & {faction.positive & !player.pvp || faction.negative & !pvp & !player.pvp}", "lowest"},
	{"&Astral Shift", "UI(AS_check) & player.health <= UI(AS_spin)", "player"},
    --  --
	{"#152615", "item(152615).usable & item(152615).count > 0 & health <= UI(AHP_spin) & UI(AHP_check)"}, --XXX: Astral Healing Potion
	{"#127834", "item(152615).count == 0 & item(127834).usable & item(127834).count > 0 & health <= UI(AHP_spin) & UI(AHP_check)"}, --XXX: Ancient Healing Potion
	{"#5512", "item(5512).usable & item(5512).count > 0 & health <= UI(HS_spin) & UI(HS_check)"}, --XXX: Health Stone
	
}

local Cooldowns = {	

	{"&Blood Fury", "inRange(Stormstrike).spell & {{{talent(7,3) & spell(Earthen Spike).cooldown == 0 || !talent(7,3)} & player.buff(Frostbrand).duration > 5 & player.buff(Flametongue).duration > 5} || pvp.area}", "target"},
	{"&Berserking", "inRange(Stormstrike).spell", "target"},
	{"Feral Spirit", "inRange(Stormstrike).spell", "target"},
	{"Skyfury Totem", "inRange(Rockbiter).spell & pvp.area", "target"},
	
}

local PreCombat = {

	{"Fury of Air", "{toggle(AoE) & player.area(8).enemies >= 1 & !player.buff(Fury of Air) || !toggle(AoE) & player.buff(Fury of Air) || player.area(8).enemies < 1 & player.buff(Fury of Air)}", "player"},
	{"Spirit Walk", "state(root) || state(snare)", "player"},
	{"/startattack", "!isattacking & target.inRange(Stormstrike).spell & target.infront"},
	{"Rockbiter", "inRange.spell & {player.buff(Landslide).duration <= gcd & talent(1,3) || pvp.area & player.maelstrom <= 70}", "target"},
	{"#trinket2", "target.inRange(Stormstrike).spell & {player.area(40).enemies > 1 & ttd < 20 || player.area(40).enemies.combat < 2 || target.boss}", "target"},
	{"Frostbrand", "inRange.spell & player.buff(Frostbrand).duration <= 4 & {talent(4,3) || equipped(Akainu's Absolute Justice) & !pvp.area || pvp.area}", "target"},
	{"Flametongue", "inRange.spell & player.buff(Flametongue).duration <= 4", "target"},
	--{"Fury of Air", "talent(6,2) & target.inRange(Stormstrike).spell & !player.buff(Fury of Air)", "player"},
	{"Earthen Spike", "inRange.spell & talent(7,3)", "target"},
	{"Lava Lash", "inRange.spell & talent(1,2) & player.buff(Hot Hand) & {!player.buff(Stormbringer) || player.buff(Hot Hand).duration <= 4}", "target"},
	{"&Doom Winds", "toggle(xDoom) & target.inRange(Stormstrike).spell & {!talent(7,3) || talent(7,3) & target.debuff(Earthen Spike).duration > 8", "player"},
	{"Crash Lightning", "target.inRange(Stormstrike).spell & player.area(8).enemies >= 2", "target"},
	{"Stormstrike", "inRange.spell & player.buff(Stormbringer)", "target"},
	{"Lightning Bolt", "inRange.spell & talent(5,2) & {talent(7,3) & target.debuff(Earthen Spike) || !talent(7,3)}", "target"},
	{"Lava Lash", "inRange.spell & talent(1,2) & player.buff(Hot Hand)", "target"},
	{"Crash Lightning", "target.inRange(Stormstrike).spell & !player.buff(Stombringer} & talent(6,1)", "target"},
	{"Stormstrike", "inRange.spell", "target"},
	{"Lava Lash", "inRange.spell & spell(Stormstrike).cooldown > gcd & player.maelstrom >= 80", "target"},
	{"Rockbiter", "inRange.spell", "target"},

}

local Combat = {

	{"Spirit Walk", "state(root) || state(snare)", "player"},
	{"/startattack", "!isattacking & target.inRange(Stormstrike).spell & target.infront"},
	{"Rockbiter", "inRange.spell & {player.buff(Landslide).duration <= gcd & talent(1,3) || pvp.area & player.maelstrom <= 70}", "target"},
	{"#trinket2", "target.inRange(Stormstrike).spell & {player.area(40).enemies > 1 & ttd < 20 || player.area(40).enemies.combat < 2 || target.boss}", "target"},
	{"Frostbrand", "inRange.spell & player.buff(Frostbrand).duration <= 4 & {talent(4,3) || equipped(Akainu's Absolute Justice) & !pvp.area}", "target"},
	{"Flametongue", "inRange.spell & player.buff(Flametongue).duration <= 4", "target"},
	--{"Fury of Air", "talent(6,2) & target.inRange(Stormstrike).spell & !player.buff(Fury of Air)", "player"},
	{"Earthen Spike", "inRange.spell & talent(7,3)", "target"},
	{"Lava Lash", "inRange.spell & talent(1,2) & player.buff(Hot Hand) & {!player.buff(Stormbringer) || player.buff(Hot Hand).duration <= 4}", "target"},
	{"&Doom Winds", "toggle(xDoom) & target.inRange(Stormstrike).spell & {!talent(7,3) || talent(7,3) & target.debuff(Earthen Spike).duration > 8", "player"},
	{"Crash Lightning", "target.inRange(Stormstrike).spell & player.area(8).enemies >= 2", "target"},
	{"Stormstrike", "inRange.spell & player.buff(Stormbringer)", "target"},
	{"Lightning Bolt", "inRange.spell & talent(5,2) & {talent(7,3) & target.debuff(Earthen Spike) || !talent(7,3) & player.maelstrom >= 40}", "target"},
	{"Lava Lash", "inRange.spell & talent(1,2) & player.buff(Hot Hand)", "target"},
	{"Crash Lightning", "target.inRange(Stormstrike).spell & !player.buff(Stombringer} & talent(6,1)", "target"},
	{"Stormstrike", "inRange.spell", "target"},
	{"Lava Lash", "inRange.spell & spell(Stormstrike).cooldown > gcd & player.maelstrom >= 80", "target"},
	{"Rockbiter", "inRange.spell", "target"},













	--[[{"Spirit Walk","state(root)||state(snare)","player"},
	{"/startattack", "!isattacking & target.inRange(Lava Lash).spell & target.infront"},
	{"&#144259", "UI(kj_check) & range<=40 & area(10).enemies >= UI(kj_spin) & equipped(144259)", "target"}, --XXX: Kil"jaeden"s Burning Wish (Legendary)
	{"Flametongue", "inRange.spell & canAttack & player.buff.canRefresh", "target"},
	{"Rockbiter", "talent(1,3) & inRange.spell & canAttack & player.buff(Landslide).duration <= gcd", "target"}, -- Landslide buff
	{"Flametongue", "inRange.spell & canAttack & player.buff.canRefresh", "target"},
	{"Frostbrand", "talent(4,3) & inRange.spell & canAttack & player.buff.canRefresh", "target"},
	{"&Doom Winds", "canAttack & toggle(xDoom) & player.buff(Stormbringer)", "target"},
	{"Earthen Spike", "talent(7,3) & inRange.spell & canAttack", "target"},
	{"Crash Lightning", "{player.area(8).enemies >= 2 || !player.buff(Stombringer} & canAttack & !player.buff(Ascendance)", "target"},
	{"Lava Lash", " talent(1,2) & inRange.spell & canAttack & player.buff(Hot Hand) & !player.buff(Ascendance)", "target"},
	{"Stormstrike", "canAttack", "target"},
	{"Lava Lash", "inRange.spell & canAttack & !player.buff(Ascendance) & {player.maelstrom >= 100 || spell(Stormstrike).cooldown > gcd}", "target"},
	{"Rockbiter", "inRange.spell & canAttack", "target"},
	{"Crash Lightning", "inRange(Stormstrike).spell & canAttack & !player.buff(Ascendance)", "target"},]]--
}

local inCombat = {

	{Keybinds},
	{General},
	{Survival, "player.health < 100"},
	{"%dispelall", "toggle(dispelall)"},
	{"Cleanse Spirit", "dispellable(Cleanse Spirit)", "friend || ingroup"},
	{Interrupts, "toggle(interrupts)"},
	{"%pause", "{target.immune_all || player.debuff(Sapped Soul).any}", "player"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack & target.infront"},
	{"Fury of Air", "{toggle(AoE) & player.area(8).enemies >= 1 & !player.buff(Fury of Air) || !toggle(AoE) & player.buff(Fury of Air) || player.area(8).enemies < 1 & player.buff(Fury of Air)}", "player"},
	{Combat, "target.canAttack & target.infront"},
	
}

local outCombat = {

	{Keybinds},
	{Survival, "player.health < 100"},
	{"%dispelall", "toggle(dispelall)"},
	{PreCombat, "target.canAttack & target.infront"},
	
}

NeP.CR:Add(263, {
    name = "["..ColorClass.."Kleei|r]"..ColorClass.."SHAMAN - Enhancement",
    ic = inCombat,
    ooc = outCombat,
    gui = GUI,
    gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
    wow_ver = "7.2.5",
    nep_ver = "1.11",
    load = exeOnLoad
})
