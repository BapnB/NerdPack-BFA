local unpack = unpack

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Kleei\\media\\guard.blp", width = 320, height = 320, offset = 195, y = -105, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),

	{type = 'header', size = 16, text = 'Keybinds', align = 'center'},
	{type = 'text', text = "|c0000FA9A Just hold the Key|r", align = 'center'},
	{type = 'text', text = "|c0087CEFA Choose Keybind:", align = 'center'},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Charge and Stun:|c0000FA9A mouseover, target", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "1" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Regrowth:|c0000FA9A mouseover, self", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "6" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Thrash, Swipe:|c0000FA9A", key = "list3", width = 100, list = {
	{key = "7", text = "Shift Keybind"},
	{key = "8", text = "Control Keybind"},
	{key = "9", text = "Alt Keybind"},
	{key = "none", text = "Disable"}, 
	}, default = "8" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Survival Instincts:", key = "instinct_key", check = true, spin = 45, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Barkskin:", key = "skin_key", check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Frenzied Regeneration:", key = "fr_key", check = true, spin = 50, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 150, step = 5, max = 95, min = 1},
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
	
    {type = "text", text = "In combat:|c0000FA9A use Rebirth on mouseover|r"},
    {type = "text", text = "Out of combat:|c0000FA9A use Revive on mouseover|r"},

}

local exeOnLoad = function()

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A --- |r"..ColorClass.." DRUID - Guardian|r")
	print("|c0000FA9A ------------------------PVE-------------------------------------------|r")
	print("|c0000FA9A --- |rRecommended Talents: 1/X - 2/X - 3/3 - 4/X - 5/X - 6/X - 7/X")
	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A Like my work ? buy me a beer or six|r|c00FF0000 https://www.paypal.me/thekleei|r")

end

local Keybinds = {

	{"&Wild Charge", "inRange.spell & canAttack & infront & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & timeout(charge, 0.2)", {"mouseover", "target"}},
	{"&Skull Bash", "inRange.spell & canAttack & infront & !IsStealthed & range > 8 & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2} & timeout(charge, 1.2)", {"mouseover", "target"}},
	
	{"&Mighty Bash", "inRange.spell & canAttack & infront & {keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", {"mouseover", "target"}},
	
	{"Regrowth", "inRange.spell & !canAttack & !player.moving & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", {"mouseover", "player"}},
	
	{"Thrash", "{keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"},
	{"Swipe", "{keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"},
	
}

local PreCombat = {

    {"Bear Form", "!form == 1 & !IsStealthed & !flying & target.canAttack", "player"},
	
	{"Swipe", "area(10).enemies > 1", "player"},
	{"Mangle", "inRange.spell & canAttack & infront", "target"},
	
    --{"Regrowth", "health <= 85 & !IsStealthed & !flying & !player.moving", "player"},
    
}

local Interrupts = {

	{"&Skull Bash", "inRange.spell & canAttack & infront", "target"},

}

local Survival = {

    {"Survival Instincts", "!buff & health <= UI(instinct_key_spin) & UI(instinct_key_check) & incdmg(5) > health.max * 0.2", "player"},
	{"Barkskin", "health <= UI(skin_key_spin) & UI(skin_key_check) & incdmg(5) > health.max * 0.2", "player"},
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & incdmg(5) > health.max * 0.2", "player"}, --Health Stone
	{"Swiftmend", "health <= 30 & incdmg(5) > health.max * 0.2", "player"},
	{"Ironfur", "!buff & incdmg.phys(5) > health.max * 0.004", "player"},
	{"Frenzied Regeneration", "!buff & health <= UI(fr_key_spin) & UI(fr_key_check) & incdmg(5) > health.max * 0.08", "player"},
	
}

local Cooldowns = {

	{"Rage of the Sleeper", nil, "player"},
	{"Incarnation: Guardian of Ursoc", "talent(5,2)", "player"},

}

local Combat = {

    {"/startattack", "!isattacking & inRange(Mangle).spell & canAttack & infront & !IsStealthed", "target"},
    
	{"Thrash", "toggle(AoE) & area(8).enemies > 1", "player"},
	{"Pulverize", "inRange.spell & canAttack & infront & player.buff.duration < 5", "target"},
	{"Mangle", "inRange.spell & canAttack & infront", "target"},
    {"Moonfire", "inRange.spell & canAttack & combat & player.buff(Galactic Guardian)", "target"},
	{"&Maul", "inRange.spell & canAttack & infront & player.rage > 60", "target"},
	{"Swipe", "toggle(AoE) & area(8).enemies > 1", "player"},
	{"Thrash", "area(8).enemies > 0", "player"},
	{"Moonfire", "inRange.spell & canAttack & combat & !debuff", "target"},
	{"Moonfire", "toggle(AoE) & inRange.spell & canAttack & combat & !debuff", "enemies"},
	{"Moonfire", "inRange.spell & canAttack & combat", "target"},
	
}

local inCombat = {

	{"*%target", "canAttack & {!target.exists || target.dead}", "mouseover"},
	
	{"%taunt(Growl)"},
	{"Rebirth", "inRange.spell & !enemy & dead & player & player.area(40).enemies >= 1", "mouseover"},
	
	{Keybinds},
    {"Bear Form", "!form == 1 & !IsStealthed & !flying & target.canAttack", "player"},
	{Interrupts, "target.interruptAt(65) & toggle(Interrupts)"},
	{Survival, "player.health < 100"},
	{Cooldowns, "toggle(Cooldowns)"},
	{Combat},
	
}

local outCombat = {

	{"Revive", "inRange.spell & !player.moving & !enemy & dead & player", "mouseover"},

	{Keybinds},
	{PreCombat},
	
}

NeP.CR:Add(104, {
	name = "["..ColorClass.."Kleei|r]"..ColorClass.." DRUID - Guardian|r",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.2.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})