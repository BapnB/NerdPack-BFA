local _, Subzrk = ...
local unpack = _G.unpack
local NeP = _G.NeP

local colorShaman = "|c000070de"

local GUI = {
		-- Header
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
	{type = "header",  	size = 16, text = "Keybinds", align = "center"},
  {type = "spacer"},{type = "ruler"},{type = "spacer"},
	{type = 'checkbox', text = 'Use Keybinds Out of Combat', key = 'G_OOCK', width = 55, default = false},
	{type = 'spacer'},
	{type = "checkbox",	text = "Left Shift: "..colorShaman.."Earthbind Totem|r", align = "left", key = "shift", default = true},
	{type = "checkbox",	text = "Left Ctrl: "..colorShaman.."Talent's Totem|r", align = "left", key = "control", default = true},
	{type = "checkbox",	text = "Left Alt: "..colorShaman.."Pause|r", align = "left", key = "alt", default = true},
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
		-- Settings
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
	{type = "header", 	size = 16, text = "Class Settings", align = "center"},
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
  {type = 'checkbox', text = 'Auto use Purge', key = 'purge', width = 55, default = true, desc = colorShaman.."there will be 10 sec delay between each cast of Purge|r"},
  {type = 'checkbox', text = 'Dispell yourself', key = 'dispell', width = 55, default = true},
	{type = "checkspin",text = "Kil\"Jaeden\"s Burning Wish - Units", key = "kj", align = "left", width = 55, step = 1, shiftStep = 2, spin = 4, max = 20, min = 1, check = true, desc = colorShaman.."Legendary will be used only on selected amount of units!|r"},

		-- Survival
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
	{type = "header", 	size = 16, text = "Survival", align = "center", size = 16},
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
  {type = "checkspin",text = "Healing Surge", key = "HS", align = "left", width = 55,  spin = 20, step = 5, shiftStep = 10, max = 100, min = 1, check = true},
	{type = "checkspin",text = "Astral Shift", key = "AS", align = "left", width = 55,  spin = 30, step = 5, shiftStep = 10, max = 100, min = 1, check = true},
  {type = "checkspin",text = "Healthstone", key = "HS", align = "left", width = 55, step = 5, shiftStep = 10, spin = 45, max = 100, min = 1, check = true},
	{type = "checkspin",text = "Healing Potion", key = "AHP", align = "left", width = 55, step = 5, shiftStep = 10, spin = 45, max = 100, min = 1, check = true},
		-- Interrupt
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
	{type = "header", 	size = 16, text = "Interrupt", align = "center", size = 16},
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
	{type = "checkspin",text = "Interrupt @", key = "INT", align = "left", width = 55,  spin = 35, step = 5, shiftStep = 10, max = 100, min = 5, check = true},
	{type = "checkspin",text = "Interrupt Anyone @", key = "INTA", align = "left", width = 55,  spin = 70, step = 5, shiftStep = 10, max = 100, min = 5, check = true},
	{type = "spacer"},
	{type = "checkbox",text = "Blind", key = "I_Blind", align = "left", default = true},
	{type = "checkbox",text = "Arcane Torrent", key = "I_AT", align = "left", default = true},
}

local exeOnLoad = function()

    print("|c0000FA9A ----------------------------------------------------------------------|r")
    print("|c0000FA9A --- |r"..ColorClass.."SHAMAN - Elemental|r")
	print("|cffADFF2F ---------------------------------------------------------------------------|r")
	print("|cffADFF2F --- |rPVE:  1/3 - 2/X - 3/X - 4/2 - 5/1 - 6/1 - 7/2")
	print("|cffADFF2F ---------------------------------------------------------------------------|r")

	NeP.Interface:AddToggle({
		key = "xIntRandom",
		name = "Interrupt Anyone",
		text = "Interrupt all nearby enemies, without targeting them.",
		icon = "Interface\\Icons\\inv_ammo_arrow_04",
	})

end

local Keybinds = {
	{"!Earthbind", "keybind(shift) & UI(shift)", "target"},
	{"!Lightning Surge Totem", "talent(3,1) & keybind(control) & UI(control)"},
  {"!Earthgrab Totem", "talent(3,2) & keybind(control) & UI(control)"},
  {"!Voodoo Totem", "talent(3,1) & keybind(control) & UI(control)"},
	{"%pause", "keybind(alt) & UI(alt)"},
}

local General = {
  {(function() PlaySoundKitID(11466, "master", true) end) , "hashero & targettimeout(hero,30)"},
  {(function() PlaySoundKitID(11466, "master", true) end) , "player.buff(Ascendance) & targettimeout(asc,10)"},
  {"%dispelself", "UI(dispell)"},
	{"Purge", "UI(purge) & inRange.spell & state.purge & !lastcast(Purge).succeed & targettimeout(Purge,10)", "target"},
}

local Interrupts = {
	{"&Wind Shear", "inRange.spell"},
}

local Survival = {
  {"Healing Surge", "UI(HS_check) & player.health <= UI(HS_spin) & player.maelstrom >= 20", "player"},
  {"&Astral Shift", "UI(AS_check) & player.health <= UI(AS_spin)", "player"},
    --  --
	{"#152615", "item(152615).usable & item(152615).count > 0 & health <= UI(AHP_spin) & UI(AHP_check)"}, --XXX: Astral Healing Potion
	{"#127834", "item(152615).count == 0 & item(127834).usable & item(127834).count > 0 & health <= UI(AHP_spin) & UI(AHP_check)"}, --XXX: Ancient Healing Potion
	{"#5512", "item(5512).usable & item(5512).count > 0 & health <= UI(HS_spin) & UI(HS_check)"}, --XXX: Health Stone
}

local Cooldowns = {

  {"&Blood Fury", nil, "target"},
  {"&Berserking", nil, "target"},
	{"Fire Elemental", "hashero || player.buff(Berserking)", "target"},
}

local Combat = {
	{"/startattack", "!isattacking & target.inRange(Mortal Strike).spell & target.infront"},
  {"&#144259", "UI(kj_check) & range<=40 & area(10).enemies >= UI(kj_spin) & equipped(144259)", "target"}, --XXX: Kil"jaeden"s Burning Wish (Legendary)
	{"Flame Shock", "!target.debuff || target.debuff.duration <= 9 & maelstrom >= 20 & player.buff(Elemental Focus)", "target"},
	{"Flame Shock", "toggle(aoe) & !advanced_unlock & {!enemies.debuff(Flame Shock) || enemies.debuff(Flame Shock).duration <= 9 & maelstrom >= 20 & player.buff(Elemental Focus)}", "enemies"}, -- generic
	{"Flame Shock", "toggle(aoe) & target.area(8).enemies >= 2 & advanced_unlock & {!enemies.debuff(Flame Shock) || enemies.debuff(Flame Shock).duration <= 9 & maelstrom >= 20 & player.buff(Elemental Focus)}", "enemies"}, -- advanced
	{"Totem Mastery", "!buff(Tailwind Totem)", "player"},
	{"Elemental Blast", "", "target"},
	{"Earth Shock", "player.maelstrom >= 117", "target"},
	{"Lava Burst", "debuff(Flame Shock) & {player.buff(Lava Surge) || spell(Lava Burst).charges >= 2}", "target"},
	{"Lightning Bolt", "player.buff(Power of the Maelstrom) & spell(Lava Burst).charges < 2", "target"},
	{"Earth Shock", "player.maelstrom >= 111 & !player.buff(Lava Surge)", "target"},
	{"Stormkeeper", "player.buff(Power of the Maelstrom).count >= 3", "player"},
	{"Lava Burst", "debuff(Flame Shock)", "target"},
	{"Chain Lightning", "area(8).enemies >= 2", "target"},
	{"Lightning Bolt", "area(8).enemies == 1", "target"},

	

	{"Lightning Bolt", "inRange.spell & canAttack", "target"},

}

local Opener = {
	{"Flame Shock", "", ""},
	{"Lava Burst", "", ""},
	{"Lava Burst", "", ""},
	{"Elemental Blast", "", ""},
	{"Flame Shock", "", ""},
	{"&Blood Fury", "", ""},
	{"&Berserking", "", ""},
	{"#trinket1", "UI(trinket1)"},
	{"#trinket2", "UI(trinket2)"},
	{"Ascendance", "", ""},
	-- Spam Lava Burst
	-- Elemental Blast on cd
	{"Earth Shock", "maelstrom.deficit >= 10", ""},
	-- Earth Shock when Ascendance ends
}

local inCombat = {
	{Keybinds},
  {General},
  {Survival, "player.health < 100 & player.area(30).enemies >= 1"},
	{Interrupts, "interruptAt(35) & toggle(Interrupts) & dungeon.interrupts", "target"},
	{Interrupts, "interruptAt(75) & toggle(Interrupts) & toggle(xIntRandom) & dungeon.interrupts", "enemies"},
	{"%pause", "player.debuff(Sapped Soul).any"},
	{Cooldowns, "toggle(cooldowns) & isattacking & target.inRange(Lava Lash).spell"},
	{Combat},
}

local outCombat = {
	{Keybinds, "UI(G_OOCK)"},
}

NeP.CR:Add(262, {
    name = "["..ColorClass.."Kleei|r]"..ColorClass.."SHAMAN - Elemental",
    ic = inCombat,
    ooc = outCombat,
    gui = GUI,
    gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
    wow_ver = "7.2.5",
    nep_ver = "1.11",
    load = exeOnLoad
})
