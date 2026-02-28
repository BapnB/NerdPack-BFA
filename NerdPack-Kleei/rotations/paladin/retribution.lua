local unpack = _G.unpack

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\protection.blp", width = 300, height = 300, offset = 160, y = -75, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Chains of Ice:|c0000FA9A on mouseover, target", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "1" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Death and Decay & Clawing Shadows:|c0000FA9A AOE", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "5" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use HoJ:|c0000FA9A on mouseover, target", key = "list3", width = 100, list = {
	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"}, 
	}, default = "9" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = "header", size = 16, text = "PVP", align = "center"},
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Divine Shield:", key = "ds", check = true, spin = 20, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Shield of Vengeance:", key = "sov", check = true, spin = 85, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Flash of Light:", key = "fol", check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkbox", text = "Also use Flash of Light on team?", key = "folf", default = true},
	{type = "checkspin", text = "Use Health Stone:", key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Blessing of Protection:", key = "bop", check = true, spin = 35, width = 150, step = 5, max = 95, min = 1},
	{type = "checkbox", text = "Also use Blessing of Protection on team?", key = "bopf", default = true},	
	{type = "checkspin", text = "Use Lay on Heands:", key = "loh", check = true, spin = 10, width = 150, step = 5, max = 95, min = 1},
	{type = "checkbox", text = "Also use Lay on Heands on team?", key = "lohf", default = true},
		{type = "checkbox", text = "Use Blessing of Freedom:", key = "bof", default = true},
	{type = "checkbox", text = "Also use Blessing of Freedom on team?", key = "boff", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},
	{type = "checkbox", text = "Avenging Wrath:", key = "aw_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Other", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"},{type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
	{type = "checkbox", text = "Trinket #1", 	key = "trk1",	default = false},
	{type = "checkbox", text = "Trinket #2", 	key = "trk2",   default = false},
	{type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
}

local exeOnLoad = function()

 	print("|c0000FA9A ------------------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r"..ColorClass.."PALADIN - Retribution|r")
	print("|c0000FA9A ------------------------PVE-------------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents:  1/3 - 2/2 - 3/3 - 4/2 - 5/1 - 6/3 - 7/3")
	print("|c0000FA9A ------------------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A Like my work ? buy me a beer or six|r|c00FF0000 https://www.paypal.me/thekleei|r")

end

local pvp = {

    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},
    {"!Gladiator's Medallion", "UI(medal) & canAttack & target.player & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
	{"Hammer of Reckoning", "target.range <= 30 & enemy & !player.buff(Avenging Wrath) & {talent(7,3) & player.buff(Inquisition) || !talent(7,3)}", "target"},

}

local Keybinds = {

    {"Chains of Ice", "inRange.spell & canAttack & infront & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", {"mouseover", "target"}},
	{"Death and Decay", "{keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "cursor.ground"},
	{"Defile", "{keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "cursor.ground"},
	{"Hammer of Justice", "inRange.spell & canAttack & !immune_stun & !target.boss & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", {"mouseover", "target"}},
	
}

local PreCombat = {

	{"%dispelself", nil, "player"},
	{"%dispelall", nil, "lowest"},

}

local Survival = {

	{"!Divine Shield", "health <= UI(ds_spin) & UI(ds_check) & incdmg(5) >= health.max * 0.01 & target.canAttack & !player.debuff(Forbearance)", "player"},
	
	{"!Shield of Vengeance", "health <= UI(sov_spin) & UI(sov_check) & incdmg(5) >= health.max * 0.01 & target.canAttack", "player"},
	
	{"Flash of Light", "talent(6,1) & player.buff(Selfless Healer).count >= 4 & health <= UI(fol_spin) & UI(fol_check)", "player"},
	{"Flash of Light", "inRange.spell & talent(6,1) & player.buff(Selfless Healer).count >= 4 & health <= UI(fol_spin) & UI(folf)", "lowest"},
	
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check)", "player"}, --Health Stone
	
	{"!Blessing of Protection", "health <= UI(bop_spin) & UI(bop_check) & incdmg(5) >= health.max * 0.1 & target.canAttack & !player.debuff(Forbearance)", "player"},
	{"!Blessing of Protection", "range < 40 & health <= UI(bop_spin) & UI(bopf) & incdmg(5) >= health.max * 0.1 & target.canAttack & !player.debuff(Forbearance) & !tank & !tank1 & !tank2", "lowest"},
	
	{"!Lay on Hands", "health <= UI(loh_spin) & UI(loh_check) & incdmg(5) >= health.max * 0.1 & target.canAttack & !player.debuff(Forbearance)", "player"},
	{"!Lay on Hands", "range < 40 & health <= UI(loh_spin) & UI(lohf) & incdmg(5) >= health.max * 0.1 & target.canAttack & !player.debuff(Forbearance)", "lowest"},
	
	{"Blessing of Freedom", "UI(bof_check) & {player.slowed || state(root) || state(snare) || hasslowp}", "player"},
	{"Blessing of Freedom", "inRange.spell & UI(boff) & {slowed || state(root) || state(snare) || hasslowf}", "lowest"},
	
}

local Interrupts = {

	{"!Rebuke", "interruptAt(63) & inRange(Crusader Strike).spell & !player.lastcast(Hammer of Justice)", "target"},
	{"!Rebuke", "interruptAt(63) & inRange(Crusader Strike).spell & !player.lastcast(Hammer of Justice)", "enemies"},
	{"!Hammer of Justice", "interruptAt(20) & inRange.spell & !immune_stun & !target.boss", "enemies"},
	{"!Arcane Torrent",	"interruptAt(60) & inRange(Crusader Strike).spell", "target"},

}

local Cooldowns = {
 	
	{"Avenging Wrath", "target.inRange(Crusader Strike).spell & UI(aw_key) & !player.buff(Avenging Wrath) & {talent(7,3) & player.buff(Inquisition) || !talent(7,3)} & player.holypower >= 3", "player"},
	
	
	{"#trinket1", "UI(trk1) & target.inRange(Crusader Strike).spell"},
	{"#trinket2", "UI(trk2) & target.inRange(Crusader Strike).spell"},

}

local Combat = {

    {"/startattack", "!isattacking & inRange(Crusader Strike).spell", "target"},
	
	{"Judgment", "inRange.spell & player.holypower <= 4 & player.buff(Avenging Wrath)", "target"},
	{"Divine Storm", "toggle(AoE) & {player.area(6).enemies >= 2 & !talent(1,2) || player.area(7).enemies >= 3 & !talent(1,3)} & target.range < 7 & player.buff(Avenging Wrath) & !target.name(fel explosives)", "player"},
	{"Templar's Verdict", "inRange.spell & player.buff(Avenging Wrath)", "target"},
	
	{"Wake of Ashes", "target.inRange(Crusader Strike).spell & player.holypower == 0", "target"},
	{"Blade of Justice", "inRange.spell & player.holypower <= 3", "target"},
	{"Judgment", "inRange.spell & player.holypower <= 4", "target"},
	{"Hammer of Wrath", "inRange.spell & talent(2,3) & {health <= 20 & !isdummy || health >= 20 & isdummy} & player.holypower <= 4 & {talent(1,2) & player.buff(Righteous Verdict).duration > 3 || !talent(1,2)}", {"target", "enemies"}},
	{"Crusader Strike", "inRange.spell & spell(Crusader Strike).charges == 2 & player.holypower <= 4 & {talent(1,2) & player.buff(Righteous Verdict).duration > 3 || !talent(1,2)}", "target"},
	
	{"Divine Storm", "player.buff(Empyrean Power) & player.area(6).enemies >= 1 & target.range < 7 & {talent(1,2) & player.buff(Righteous Verdict).duration > 3 || !talent(1,2)} & !target.name(fel explosives)", "player"},
	
	{"Divine Storm", "toggle(AoE) & {player.area(6).enemies >= 2 & !talent(1,2) || player.area(7).enemies >= 3 & !talent(1,3)} & target.range < 7 & !target.name(fel explosives)", "player"},
	{"Templar's Verdict", "inRange.spell", "target"},
	
	{"Divine Storm", "player.buff(Empyrean Power) & player.area(6).enemies >= 1 & target.range < 7 & !target.name(fel explosives)", "player"},

	{"Hammer of Wrath", "inRange.spell & talent(2,3) & {health <= 20 & !isdummy || health >= 20 & isdummy", {"target", "enemies"}},
	{"Crusader Strike", "inRange.spell & player.holypower <= 4", "target"},
	
	{"Blade of Justice", "inRange.spell & player", "target"},
	{"Judgment", "inRange.spell & player", "target"},
	
}

local inCombat = {

	{pvp, "target.canAttack & !target.immune_all"},
	{Keybinds, "target.canAttack & !target.immune_all"},
	{Interrupts, "toggle(interrupts) & target.canAttack"},
	{Survival, "player.health < 100"},
	{"%pause", "target.immune_all", "player"},
	{"Inquisition", "target.inRange(Judgment).spell & talent(7,3) & player.holypower >= 2 & player.buff(Inquisition).duration <= 3", "player"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack"},
	{Combat, "target.canAttack & target.infront"},

}

local outCombat = {

	{pvp, "target.player & !target.immune_all"},
	{Keybinds, "target.canAttack & !target.immune_all"},
	{Interrupts, "toggle(interrupts) & target.interruptAt(65) & target.canAttack"},
	{"%pause", "target.immune_all", "player"},
	{Combat, "target.canAttack"},
	{Precombat},

}

NeP.CR:Add(70, {
	name = "["..ColorClass.."Kleei|r]"..ColorClass.." PALADIN - Retribution",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.3.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})