local unpack = _G.unpack

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\dh.blp', width = 256, height = 256, offset = 110, y = -70, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),
	
	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Metamorphosis:|c0000FA9A mouseover", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "3" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Imprison:|c0000FA9A mouseover", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "5" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Chaos Nova:|c0000FA9A when enemies around", key = "list3", width = 100, list = {
	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"}, 
	}, default = "7" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
    {type = 'header', size = 16, text = 'PVP', align = 'center'},
    --{type = 'checkbox',	text = "Stun:|c0000FA9A Auto stun PVP Target [Chaos Nova] or [Imprison].|r", align = 'left', key = 'stun', default = true},	
    {type = 'checkbox',	text = "Gladiator's Medallion:|c0000FA9A Remove stun/fear/disorient/charm.|r", align = 'left', key = 'medal', default = true},	
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Survival', align = 'center'},
	{type = 'checkspin', text = 'Use Blur:', key = 'blur', check = true, spin = 70, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Netherwalk:', key = 'nw', check = true, spin = 25, width = 150, step = 5, max = 95, min = 1},
	{type = 'checkspin', text = 'Use Health Stone:', key = 'hs', check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------	

	{type = "header", size = 16, text = "AoE Toggle", align = "center"},
	{type = "checkspin", text = "Eye Beam:|c0000FA9A enemies in front", key = "eye_beam_aoe_key", check = true, spin = 3, width = 100, step = 1, max = 10, min = 1},
	{type = "checkspin", text = "Blade Dance:|c0000FA9A enemies around", key = "blade_dance_key", check = true, spin = 1, width = 100, step = 1, max = 10, min = 1},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle", align = "center"},
    {type = "checkbox",	text = "Nemesis:|c0000FA9A if talented(7,3)", align = "left", key = "nemesis_key", default = true},
    {type = "checkbox",	text = "Eye Beam:|c0000FA9A if enemy is in front of you", align = "left", key = "eye_beam_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = 'header', size = 16, text = 'Trinkets', align = 'center'},
	{type = 'text', text = '|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r', align = 'center'},
	{type = 'checkbox', text = 'Trinket #1', 	key = 'trk1',	default = false},
	{type = 'checkbox', text = 'Trinket #2', 	key = 'trk2',   default = false},
	{type = 'text', text = '|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Other", align = "center"},
	{type = "checkspin", text = "Auto [Glide]:|c0000FA9A if you are falling in seconds", key = "glide_key", check = true, spin = 0.4, width = 82, step = 0.1, max = 4, min = 1},
	{type = "spacer"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

} 

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r"..ColorClass.."DEMON HUNTER - Havoc|r")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
 	print("|c0000FA9A --- |rRecommended Talents: 1/2 - 2/2 - 3/X - 4/3 - 5/X - 6/1 - 7/2")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A If you like my work you can always support me|r|c00FF0000 https://www.paypal.me/thekleei|r")

	NeP.Interface:AddToggle({key = "charge", name = "Charge", text = "ON/OFF using Felblade and Fel Rush in Rotation", icon = "Interface\\Icons\\ability_demonhunter_felblade"})

end

local pvp = {
    
    {"!Gladiator's Medallion", "UI(medal) & target.player & target.canAttack & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Precombat = {

	{"Chaos Strike", "inRange.spell", "target"},
	{"Annihilation", "inRange.spell", "target"},
	{"Felblade", "toggle(charge) & inRange.spell & infront & talent(1,2)", "target"},
	{"Demon's Bite", "inRange.spell & !talent(2,2)", "target"},
	{"Throw Glaive", "inRange.spell & !target.debuff(Imprison)", "target"},
}

local Survival = {

	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"}, --Health Stone
	{"Blur", "player.health <= UI(blur_spin) & UI(blur_check) & player.combat"},
	{"Netherwalk", "talent(4,1) & player.health <= UI(nw_spin) & UI(nw_check) & player.combat"},

}
local Interrupts = {

	{"&Consume Magic", "interruptAt(20) & target.inRange(Consume Magic).spell", "target"},
	{"!Consume Magic", "interruptAt(63) & inRange.spell & !player.lastcast(Fel Eruption)", "target"},
	{"!Consume Magic", "interruptAt(63) & inRange.spell & !player.lastcast(Fel Eruption)", "enemies"},
	{"!Fel Eruption", "interruptAt(20) & inRange.spell & !immune_stun & !target.boss", "enemies"},
	{"&Arcane Torrent", "interruptAt(40) & inRange(Chaos Strike).spell", "target"},

}

local Keybinds = {

    {"Metamorphosis", "toggle(cooldowns) & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "cursor.ground"},
	{"Chaos Nova", "player.area(6).enemies >= 1 & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"},
	{"Imprison", "inRange.spell & canAttack & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "mouseover"},
	
}

local Cooldowns = {

	{"&Nemesis", "talent(5,3) & !lastcast(Eye Beam).succeed & player.buff(Metamorphosis) & !lastcast(Eye Beam).succeed & !player.casting(Eye Beam)", "target"}, -- & UI(nemesis_key)
	{"&Chaos Blades", "talent(7,1) & !lastcast(Eye Beam).succeed & player.buff(Metamorphosis) & !lastcast(Eye Beam).succeed & !player.casting(Eye Beam)"}, -- & UI(chaos_key)
	{"Fury of the Illidari", "!player.moving & !player.lastcast(Vengeful Retreat) & player.area(5).enemies >= 1 & !lastcast(Eye Beam).succeed"}, --UI(foti_key)
	{"&Arcane Torrent", "player.fury >= 20 & player.furry <= 29 & player.spell(Eye Beam).cooldown == 0 & inRange(Chaos Strike).spell & !player.casting(Eye Beam)", "target"},
	
	{"#trinket1", "UI(trk1) & target.inmelee & target.deathin >= 10 & !lastcast(Eye Beam).succeed"},
	{"#trinket2", "UI(trk2) & target.inmelee & target.deathin >= 10 & !lastcast(Eye Beam).succeed"},
	
}

local Combat = {

    {"/startattack", "!isattacking & canAttack & {!player.buff(Metamorphosis) & target.inRange(Chaos Strike).spell || player.buff(Metamorphosis) & target.inRange(Annihilation).spell}", "target"},	
	
	---Mass
	{"Fury of the Illidari", "toggle(AoE) & !player.moving & !player.lastcast(Vengeful Retreat) & player.area(5).enemies >= 3 & !lastcast(Eye Beam).succeed"},
	{"Eye Beam", "toggle(AoE) & !player.moving & !player.lastcast(Vengeful Retreat) & player.fury <= 70 & {player.area(15).enemies.infront >= UI(eye_beam_aoe_key_spin) || target.boss || target.isdummy} & UI(eye_beam_aoe_key_check)"},
	
	{"Blade Dance", "!talent(3,2) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 4 || player.spell(Eye Beam).cooldown > 0 & player.area(5).enemies >= 5} & !lastcast(Eye Beam).succeed"},
	{"Death Sweep", "!talent(3,2) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 4 || player.spell(Eye Beam).cooldown > 0 & player.area(5).enemies >= 5} & !lastcast(Eye Beam).succeed"},
	
	{"Blade Dance", "talent(3,2) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 1 & !toggle(AoE) || player.area(5).enemies >= 1 & player.area(5).enemies <= 4 & toggle(AoE) || player.spell(Eye Beam).cooldown > 0 & player.area(5).enemies >= 5 & toggle(AoE)} & !lastcast(Eye Beam).succeed"},
	{"Death Sweep", "talent(3,2) & toggle(AoE) & !player.lastcast(Vengeful Retreat) & {player.area(5).enemies == 1 & player.fury <= 39 || player.area(5).enemies >= 2 & player.area(5).enemies <= 4 & toggle(AoE) || player.spell(Eye Beam).cooldown > 0 & player.area(5).enemies >= 5 & toggle(AoE)} & !lastcast(Eye Beam).succeed"},
	
	---Charge
	{"Felblade", "toggle(charge) & talent(1,2) & target.infront & {player.fury <= 60 & !player.buff(Metamorphosis) & target.inRange(Felblade).spell || player.fury <= 39 & player.buff(Metamorphosis) || player.furydiff >= 60 & player.buff(Metamorphosis) & target.inRange(Felblade).spell} & !lastcast(Eye Beam).succeed", "target"},
	
	{"Fel Eruption", "talent(5,2) & inRange.spell & player.fury >= 10  & {target.state(stun) || target.state(fear) || target.state(disorient) || target.state(charm)} & !lastcast(Eye Beam).succeed", "target"},
	{"Fel Barrage", "talent(7,2) & inRange.spell & !target.debuff(Imprison) & {player.buff(Metamorphosis) & player.fury <= 39 & player.spell(Death Sweep).cooldown >= 0 || player.buff(Metamorphosis) & player.fury <= 15 || !player.buff(Metamorphosis)} & !lastcast(Eye Beam).succeed", "target"},

	{"Chaos Strike", "inRange.spell & {toggle(AoE) & {player.area(8).enemies <= 5 & || player.spell(Eye Beam).cooldown > 0} || !toggle(AoE)} & !lastcast(Eye Beam).succeed", "target"},
	{"Annihilation", "inRange.spell & {toggle(AoE) & {player.area(8).enemies <= 5 & || player.spell(Eye Beam).cooldown > 0} || !toggle(AoE)} & !lastcast(Eye Beam).succeed", "target"},

	{"Demon's Bite", "!talent(2,2) & inRange.spell & !lastcast(Eye Beam).succeed", "target"},

	{"Felblade", "toggle(charge) & talent(1,2) & target.infront & target.player & !lastcast(Eye Beam).succeed", "target"},

	{"Throw Glaive", "inRange.spell & !target.debuff(Imprison) & {!target.debuff(Master of the Glaive) || spell(Throw Glaive).charges == 2} & !lastcast(Eye Beam).succeed", "target"},

}

local inCombat = {

	{"!Gladiator's Medallion", "target.player & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
	--{"Glide", "!player.buff(Glide) & falling.duration > 1"},
    ---------------
	{Keybinds},
	{Survival, "player.health < 100"},
	{Interrupts, "toggle(interrupts)"},
	{"%pause", "target.immune_all", "player"},
	{Cooldowns, "toggle(cooldowns) & target.enemy & target.alive"},
	---------------
	{Combat, "target.alive & target.enemy & {!target.player || player.pvp & target.player}"},

}

local outCombat = {

	{"/startattack", "!isattacking & canAttack & {!player.buff(Metamorphosis) & target.inRange(Chaos Strike).spell || player.buff(Metamorphosis) & target.inRange(Annihilation).spell}", "target"},	
	--{"Glide", "!player.buff(Glide) & falling.duration >= 0.50"},
	{Keybinds},
	{Precombat, "target.alive & target.enemy & {!target.player || player.pvp & target.player}"},
	
}

NeP.CR:Add(577, {
	name = "["..ColorClass.."Kleei|r]"..ColorClass.." DEMON HUNTER - Havoc",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.2.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})