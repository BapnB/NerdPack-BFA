local unpack = _G.unpack

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\fury.blp", width = 256, height = 256, offset = 210, y = -100, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Charge:|c0000FA9A", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "1" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Heroic Leap:|c0000FA9A on mouseover", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "6" },	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Storm Bolt:|c0000FA9A on mouseover or target", key = "list3", width = 100, list = {
	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"}, 
	}, default = "8" },
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
	{type = "checkspin", text = "Use Commanding Shout:", key = "cs", check = true, spin = 50, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Intimidating Shout:", key = "is", check = true, spin = 25, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Enraged Regeneration:", key = "enr_regen", check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

    {type = 'text', text = "Cooldowns Toggle:"},
	{type = 'text', text = "|c0087CEFA All if target will die in more than 5 sec|r", align = 'center'},
    {type = 'text', text = "Use Battle Cry"},
    {type = 'text', text = "Use Blood Fury:|c0000FA9A (Racial orc)"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

}

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r"..ColorClass.."WARRIOR - Fury|r")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
 	print("|c0000FA9A --- |rSupported Talents: 1/1 - 2/2 - 3/3 - 4/2 - 5/2 - 6/3 - 7/2")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A Like my work ? buy me a beer or six|r|c00FF0000 https://www.paypal.me/thekleei|r")

    NeP.Interface:AddToggle({key = "avatar_key", icon = "Interface\\Icons\\warrior_talent_icon_avatar", name = "Avatar", text = "Include Avatar and racials in rotation"})
	
end

local pvp = {

    {"&Berserker Rage", "{player.state(incapacitate) ||  player.state(fear)}", "player"},
    {"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & target.player & {player.state(stun) & player.spell(Every Man for Himself)cooldown > 0 & player.race = Human || player.state(stun) & !player.race = Human || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Bloodthirst_surv = {

	{"Bloodthirst", "inRange.spell & canAttack", "target"},
	{"%pause", "spell(Bloodthirst).cooldown < = 1,6", "player"},
	
}

local Keybinds = {

	{"Charge", "inRange.spell & canAttack & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "target"},
	{"Heroic Leap", "!player.lastcast(Heroic Leap) & keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5", "cursor.ground"},
	{"Storm Bolt", "inRange.spell & canAttack & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", {"mouseover", "target"}},
	{"Shockwave", "canAttack & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}"},

}

local PreCombat = {

	--{"Whirlwind", "player.buff(Wrecking Ball) & area(7).enemies >= 1", "player"},
    --{"Whirlwind", "toggle(AoE) & area(8).enemies >= 2", "player"},
	--{"Bloodthirst", "inRange.spell & canAttack & !toggle(cooldowns)", "target"},
	--{"Raging Blow", "inRange.spell & canAttack & !toggle(cooldowns)", "target"},
	--{"Furious Slash", "inRange.spell & canAttack & !toggle(cooldowns)", "target"},
    {"/startattack", "inRange(Bloodthirst).spell & canAttack & !isattacking", "target"},

}

local Survival ={

    {"Enraged Regeneration", "health <= UI(enr_regen_spin) & UI(enr_regen_check) & player.area(8).enemies > 0", "player"},
	{"Commanding Shout", "health <= UI(cs_spin) & UI(cs_check) & target.canAttack", "player"},
	{"Intimidating Shout", "pvp.area & health <= UI(is_spin) & UI(is_check) & player.incdmg(5) >= player.health.max * 0.1 & player.area(8).enemies > 0"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check)", "player"}, --Health Stone

}

local Interrupts = {

    {"!Pummel", "inRange.spell & interruptAt(63)", "target"},
	{"!Pummel", "inRange.spell & interruptAt(63)", "enemies"},

}

local Cooldowns = {

	{"&Blood Fury", "target.inRange(Bloodthirst).spell & player.buff(Battle Cry) & toggle(avatar_key) & buff(Battle Cry).duration > 5", "player"},
	{"&Avatar", "target.inRange(Bloodthirst).spell & player.buff(Battle Cry) & toggle(avatar_key)& buff(Battle Cry).duration > 5", "player"},
	
	--{"Battle Cry", "target.inRange(Bloodthirst).spell & {player.rage < 80 & !pvp.area || pvp.area}", "player"},
	--{"Bloodbath", "target.inRange(Bloodthirst).spell & {player.buff(Battle Cry) || spell(Battle Cry).cooldown > 30}", "player"},

	{"#trinket1", "UI(trk1) & target.inRange(Bloodthirst).spell"},
	{"#trinket2", "UI(trk2) & target.inRange(Bloodthirst).spell"},

}

local Combat = {

    {"/startattack", "inRange(Bloodthirst).spell & canAttack & !isattacking", "target"},
	{"Whirlwind", "toggle(AoE) & area(8).enemies > 1 & player.buff(Massacre) & !player.buff(Meat Cleaver)", "player"},
	{"Rampage", "inRange.spell & canAttack & player.buff(Massacre)", "target"},
	{"Execute", "inRange.spell & canAttack & !isdummy & !player.buff(Battle Cry) & player.area(8).enemies <= 4", "target"},
	{"Raging Blow", "inRange.spell & canAttack & player.area(8).enemies <= 3 & player.buff(Enraged)", "target"},
	{"Whirlwind", "toggle(AoE) & area(8).enemies >= 2 & player.level > 54 & !player.buff(Meat Cleaver) & !lastcast(Whirlwind) & !player.buff(Battle Cry) & {!talent(5,2) & player.rage >= 84 || talent(5,2) & player.rage >= 99}", "player"},
	{"Rampage", "inRange.spell & canAttack & {talent(5,2) & player.buff(Frothing Berserker) || !talent(5,2) || player.buff(Battle Cry)}", "target"},	
	{"Odyn's Fury", "toggle(cooldowns) & player.area(12).enemies > 2 & {player.buff(Battle Cry) || spell(Battle Cry).cooldown > 45}", "player"},
	{"Whirlwind", "toggle(AoE) & area(8).enemies >= 3 & !player.buff(Meat Cleaver) & {player.level < 55 || !lastcast(Whirlwind) || player.area(8).enemies >= 8}", "player"},
	--{"Raging Blow", "inRange.spell & canAttack & player.buff(Battle Cry) & {player.area(8).enemies == 3 & equip.set(T20) == 4 || player.area(8).enemies < 3}", "target"},
	{"Odyn's Fury", "toggle(cooldowns) & player.area(12).enemies > 0 & {player.buff(Battle Cry) || spell(Battle Cry).cooldown > 45}", "player"},
	{"Bloodthirst", "inRange.spell & canAttack", "target"},
	{"Raging Blow", "inRange.spell & canAttack & player.area(8).enemies <= 3", "target"},
	{"Whirlwind", "toggle(AoE) & area(6).enemies > 0 & {artifact(Wild Slashes).traits_count < 2 || player.area(8).enemies > 2 || player.buff(Wrecking Ball)}", "player"},
	{"Furious Slash", "inRange.spell & canAttack", "target"},

}

local ExecuteBC = {

	{"/startattack", "inRange(Bloodthirst).spell & canAttack & !isattacking", "target"},

	{"Battle Cry", "target.inRange(Bloodthirst).spell & lastcast(Rampage) & player.rage <= 30", "player"},
	{"&Bloodbath", "target.inRange(Bloodthirst).spell & {player.buff(Battle Cry) || spell(Battle Cry).cooldown > 30}", "player"},
	{"Odyn's Fury", "target.inRange(Bloodthirst).spell & player.buff(Battle Cry)", "player"},
	
	{"Rampage", "inRange.spell & player.buff(Massacre) & !player.buff(Enrage)", "target"},
	
	{"Execute", "inRange.spell", "target"},
	
	{"Bloodthirst", "inRange.spell", "target"},

}

local Execute = {

	{"/startattack", "inRange(Bloodthirst).spell & canAttack & !isattacking", "target"},
	
	{"Rampage", "inRange.spell & player.buff(Massacre) & !player.buff(Enrage)", "target"},
	
	{"Execute", "inRange.spell", "target"},
	
	{"Bloodthirst", "inRange.spell", "target"},

}


local MultiTargetBC = {

	{"/startattack", "inRange(Bloodthirst).spell & canAttack & !isattacking", "target"},

	{"Battle Cry", "target.inRange(Bloodthirst).spell & player.buff(Meat Cleaver) & player.rage <= 70", "player"},
	{"&Bloodbath", "target.inRange(Bloodthirst).spell & {player.buff(Battle Cry) || spell(Battle Cry).cooldown > 30}", "player"},
	{"Rampage", "inRange.spell & {talent(5,2) & {player.buff(Frothing Berserker) || !player.buff(Frothing Berserker) & player.rage >= 100} || !talent(5,2) || player.buff(Massacre)} & player.buff(Meat Cleaver)", "target"},
	{"Odyn's Fury", "target.inRange(Bloodthirst).spell & player.buff(Battle Cry)", "player"},
	
	{"Whirlwind", "!player.buff(Meat Cleaver)", "player"},
	{"Bloodthirst", "inRange.spell", "target"},
	{"Raging Blow", "inRange.spell", "target"},
	{"Furious Slash", "inRange.spell", "target"},

}

local MultiTarget8 = {

	{"/startattack", "inRange(Bloodthirst).spell & canAttack & !isattacking", "target"},

	{"Rampage", "inRange.spell & {talent(5,2) & {player.buff(Frothing Berserker) || !player.buff(Frothing Berserker) & player.rage >= 100} || !talent(5,2) || player.buff(Massacre)} & player.buff(Meat Cleaver)", "target"},
	{"Whirlwind", nil, "player"},

}

local MultiTarget3 = {

	{"/startattack", "inRange(Bloodthirst).spell & canAttack & !isattacking", "target"},

	{"Bloodthirst", "inRange.spell", "target"},
	{"Rampage", "inRange.spell & {talent(5,2) & {player.buff(Frothing Berserker) || !player.buff(Frothing Berserker) & player.rage >= 100} || !talent(5,2) || player.buff(Massacre)} & player.buff(Meat Cleaver)", "target"},
	{"Whirlwind", nil, "player"},
	{"Raging Blow", "inRange.spell", "target"},
	{"Furious Slash", "inRange.spell", "target"},

}

local MultiTarget2 = {

	{"/startattack", "inRange(Bloodthirst).spell & canAttack & !isattacking", "target"},

	{"Bloodthirst", "inRange.spell", "target"},
	{"Rampage", "inRange.spell & {talent(5,2) & {player.buff(Frothing Berserker) || !player.buff(Frothing Berserker) & player.rage >= 100} || !talent(5,2) || player.buff(Massacre)} & player.buff(Meat Cleaver)", "target"},
	{"Whirlwind", "!player.buff(Meat Cleaver)", "player"},
	{"Raging Blow", "inRange.spell", "target"},
	{"Furious Slash", "inRange.spell", "target"},

}

local SingleTargetBC = {

	{"/startattack", "inRange(Bloodthirst).spell & canAttack & !isattacking", "target"},
	
	{"Battle Cry", "target.inRange(Bloodthirst).spell & {lastcast(Rampage) || !pvp.area & player.rage >= 40 & player.rage <= 50 & spell(Bloodthirst).cooldown > 0 || !pvp.area & player.rage <= 40 || pvp.area & player.rage <= 80}", "player"},
	{"&Bloodbath", "target.inRange(Bloodthirst).spell & {player.buff(Battle Cry) || spell(Battle Cry).cooldown > 30}", "player"},
	{"Odyn's Fury", "target.inRange(Bloodthirst).spell & player.buff(Battle Cry) & !player.rage >= 85", "player"},
	
	{"Rampage", "inRange.spell & {talent(5,2) & {player.buff(Frothing Berserker) || !player.buff(Frothing Berserker) & player.rage >= 100} || !talent(5,2) || player.buff(Massacre)}", "target"},
	{"Bloodthirst", "inRange.spell & !{player.buff(Battle Cry) & player.rage >= 85}", "target"},
	{"Raging Blow", "inRange.spell & !{player.buff(Battle Cry) & player.rage >= 85}", "target"},
	{"Furious Slash", "inRange.spell & !{player.buff(Battle Cry) & player.rage >= 85}", "target"},

}

local SingleTarget = {

	{"/startattack", "inRange(Bloodthirst).spell & canAttack & !isattacking", "target"},
	
	{"Rampage", "inRange.spell & {talent(5,2) & {player.buff(Frothing Berserker) || !player.buff(Frothing Berserker) & player.rage >= 100} || !talent(5,2) || player.buff(Massacre)}", "target"},
	{"Bloodthirst", "inRange.spell", "target"},
	{"Raging Blow", "inRange.spell", "target"},
	{"Furious Slash", "inRange.spell", "target"},

}

local inCombat = {

    {pvp, "target.canAttack"},
	{Bloodthirst_surv, "player.buff(Enraged Regeneration)"},
    {Keybinds},
    {Interrupts, "toggle(interrupts) & target.infront & target.canAttack"},
	{Survival, "player.health < 100"},
	{"%pause", "target.immune_all", "player"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack"},

	{ExecuteBC, "target.canAttack & target.infront & !isdummy & target.health <= 20 & {spell(Battle Cry).cooldown == 0 || player.buff(Battle Cry)} & toggle(cooldowns)"},
	{Execute, "target.canAttack & target.infront & !isdummy & target.health <= 20"},
	
	{MultiTargetBC, "target.canAttack & target.infront & area(8).enemies >= 2 & toggle(AoE) & {spell(Battle Cry).cooldown == 0 || player.buff(Battle Cry)} & toggle(cooldowns)"},
	{MultiTarget8, "target.canAttack & target.infront & area(8).enemies >= 8 & toggle(AoE)"},
	{MultiTarget3, "target.canAttack & target.infront & area(8).enemies >= 3 & toggle(AoE)"},
	{MultiTarget2, "target.canAttack & target.infront & area(8).enemies == 2 & toggle(AoE)"},

	{SingleTargetBC, "target.canAttack & target.infront & {area(8).enemies == 1 || !toggle(AoE)} & {spell(Battle Cry).cooldown == 0 || player.buff(Battle Cry)} & toggle(cooldowns)"},
	{SingleTarget, "target.canAttack & target.infront & {area(8).enemies == 1 || !toggle(AoE)} & {!{spell(Battle Cry).cooldown == 0 || player.buff(Battle Cry)} || !toggle(cooldowns)}"},
	--{Combat},

}

local outCombat = {

    {pvp, "target.canAttack"},
    {Keybinds},
	{"%pause", "target.immune_all", "player"},
	{PreCombat},

}

NeP.CR:Add(72, {
	name = "["..ColorClass.."Kleei|r]"..ColorClass.." WARRIOR - Fury",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.3.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})