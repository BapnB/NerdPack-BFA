local unpack = unpack

local Logo_GUI = {

	{type = 'texture', texture = 'Interface\\AddOns\\Nerdpack-Kleei\\media\\mm.blp', width = 200, height = 175, offset = 170, y = -80, align = 'center'},

}

local GUI = {

	unpack(Logo_GUI),

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Freezing Trap:|c0000FA9A on cursor ground", key = "list1", width = 100, list = {
	{key = "1", text = "Shift Keybind"},
	{key = "2", text = "Control Keybind"},
	{key = "3", text = "Alt Keybind"},
	{key = "none", text = "Disable"},
	}, default = "2" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Binding Shot:|c0000FA9A on cursor ground", key = "list2", width = 100, list = {
	{key = "4", text = "Shift Keybind"},
	{key = "5", text = "Control Keybind"},
	{key = "6", text = "Alt Keybind"},
	{key = "none", text = "Disable"},	
	}, default = "6" },
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "dropdown", text = "Use Barrage / Multi-Shot:|c0000FA9A", key = "list3", width = 100, list = {
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
	
    {type = "header", size = 16, text = "PVP", align = "center"},
	{type = "checkbox", text = "Use Bursting Shot:|c0000FA9A if enemy player in range", key = "bs_key", default = true},
    {type = "checkbox",	text = "Gladiator's Medallion , Every Man for Himself:", align = "left", key = "medal", default = true},
	{type = "text", text = "|c0000FA9A      Remove stun/fear/disorient/charm.|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 65, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Aspect of the Turtle:", key = "aott_key", check = true, spin = 40, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Exhilaration:", key = "exhil", check = true, spin = 70, width = 150, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Feign Death:", key = "FD_key", check = false, spin = 10, width = 150, step = 5, max = 95, min = 1},
	{type = "text", text = "|c0000FA9A      When not moving (better use manualy)|r"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	
	{type = "header", size = 16, text = "Cooldowns Toggle", align = 'center'},
	{type = "checkbox", text = "Use Trueshot:|c0000FA9A", key = "trueshot_key", default = true},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------

	{type = "header", size = 16, text = "Other", align = "center"},
	{type = "checkbox", text = "Use Misdirection:|c0000FA9A on [tank] / [pet] if exists", key = "misdir_key", default = true},
	{type = "checkbox", text = "Use Concussive Shot:|c0000FA9A slow PVP target if is not controled", key = "slow_key", default = true},
    {type = "checkbox", text = "Interrupt:|c0000FA9A target instantly", key = "int_key", default = false},
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "text", text = "", align = "center"}, --------------------------------------
	{type = "ruler"}, {type = "ruler"},
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

 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |r"..ColorClass.." HUNTER - Marksmanship|r")	
	print("|c0000FA9A -------------------------Supported Talents----------------------------|r")
	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |rRaid Talents: 1/1 - 2/1 - 3/1 - 4/3 - 5/x - 6/1 - 7/3")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A --- |rM+ Talents: 1/1 - 2/1 - 3/1 - 4/3 - 5/x - 6/3 - 7/3")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
 	print("|c0000FA9A ---------------------------Stats Priority-----------------------------|r")
 	print("|c0000FA9A13% Haste(cap) > Mastery > Crit. Avoid Versatility is the worst stat|r")
 	print("|c0000FA9A ----------------------------------------------------------------------|r")
	print("|c0000FA9A")
    print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
    print("|c0000FA9A Like my work ? buy me a beer or six|r|c00FF0000 https://www.paypal.me/thekleei|r")

    NeP.Interface:AddToggle({key = "auto_talents", icon = "Interface\\Icons\\ability_hunter_murderofcrows", name = "Auto Change Talents", text = "|rIf target are boss it will force learn talent |c0000BFFF[A Murder of Crows]\n|rOtherwise it will force learn |c0000BFFF[Volley]|r. Works only out of combat"})

end

local pvp = {

    {"Concussive Shot", "UI(slow_key) & inRange.spell & player & canAttack & !state(snare) & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)", "target"},
    
	{"!Every Man for Himself", "UI(medal) & state(stun)", "player"},        
    {"!Gladiator's Medallion", "UI(medal) & target.player & target.canAttack & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},

}

local Keybinds = {

	{"Binding Shot", "talent(5,1) & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "cursor.ground"},
	{"Freezing Trap", "{keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "cursor.ground"},
	{"Tar Trap", "{keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2}", "cursor.ground"},
	
	{"Barrage", "inRange(Arcane Shot).spell & canAttack & alive & infront & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target"},
    {"/cast Auto Shot", "!isshooting & inRange(Aimed Shot).spell & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target"},
	{"Marked Shot", "inRange(Aimed Shot).spell & canAttack & alive & infront & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target"},
	{"Multi-Shot", "inRange(Arcane Shot).spell & canAttack & alive & infront & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "target"},

}

local PreCombat = {

    {"Misdirection", "inRange.spell & indungeon & target.combat & UI(misdir_key) & target.health.actual >= player.health.max", "tank"},
    {"Misdirection", "inRange.spell & pet.exists & !indungeon & target.combat & UI(misdir_key)", "pet"},	
	
    {"Cobra Shot", "inRange.spell & player.level < 20", "target"},
	{"Aimed Shot", "inRange.spell & player.level < 20", "target"},
	{"Arcane Shot", "inRange.spell & player.level < 20", "target"},

    {"Windburst", "target.inRange(Aimed Shot).spell & !player.moving & {!indungeon || target.combat} & debuff(Vulnerable).duration < spell(Aimed Shot).casttime + 0.5", "target"},
	{"Aimed Shot", "inRange.spell & {!player.moving || spell(Aimed Shot).casttime == 0} & {!indungeon || target.combat}", "target"},
	{"Multi-Shot", "toggle(AoE) & inRange.spell & & target.combat", "target"},
	{"Arcane Shot", "inRange.spell & target.combat", "target"},

}

local Survival ={

	{"Bursting Shot", "UI(bs_key) & canAttack & player & !enemy_totem & distance <= 7.5 & infront & !immune_all & !immune_stun & !state(root) & !state(stun) & !state(fear) & !state(disorient) & !state(incapacitate) & !state(charm)", "enemies"},

	{"#neck", "{equipped(Eternal Will of the Martyr) || equipped(Eternal Woven Ivy Necklace)} & health <= 40", "player"},
	{"Aspect of the Turtle", "UI(aott_key_check) & health <= UI(aott_key_spin) & incdmg(5) >= health.max*0.01", "player"},
	{"Exhilaration", "health <= UI(exhil_spin) & UI(exhil_check)", "player"},
	{"#5512", "item(5512).count >= 1 & health <= UI(hs_spin) & UI(hs_check) & incdmg(5) >= health.max*0.01", "player"}, --Health Stone
	{"!Feign Death", "UI(FD_key_check) & health <= UI(FD_key_spin) & !player.moving & incdmg(5) >= health.max*0.01", "player"},

}

local Interrupts = {

	{"!Counter Shot", "interruptAt(60) & inRange.spell & infront & !player.casting(Barrage)", "target"},
	{"!Arcane Torrent",	"interruptAt(60) & distance <= 7.5 & !player.casting(Barrage)", "target"},

	{"!Counter Shot", "interruptAt(1) & UI(int_key) & inRange.spell & infront & !player.casting(Barrage)", "target"},
	{"!Arcane Torrent",	"interruptAt(1) & UI(int_key) & distance <= 7.5 & !player.casting(Barrage)", "target"},

}

local Cooldowns = {

    {"Trueshot", "target.inRange(Aimed Shot).spell & UI(trueshot_key) & !moving & focus >= 50 & player.spell(Windburst).cooldown > 2 & {target.health.actual >= player.health.max * 3 || target.isdummy || target.player}", "player"},
    {"Arcane Torrent", "target.inRange(Aimed Shot).spell & focus < 50 & target.debuff(Vulnerable).duration > spell(Aimed Shot).casttime + 0.5 & {target.health.actual >= player.health.max * 3 || target.isdummy || target.player}", "player"},
	
	{"#trinket1", "UI(trk1) & target.inRange(Aimed Shot).spell"},
	{"#trinket2", "UI(trk2) & target.inRange(Aimed Shot).spell"},

}

local Combat = {

    {"/cast Auto Shot", "!isshooting & inRange(Aimed Shot).spell & !player.lastcast(Barrage) & !keybind(alt) & !keybind(shift) & !keybind(control)", "target"},

    {"Cobra Shot", "inRange.spell & player.level < 20", "target"},
	{"Aimed Shot", "inRange.spell & player.level < 20 & !player.moving", "target"},
	{"Arcane Shot", "inRange.spell & player.level < 20", "target"},

    {"Misdirection", "inRange.spell & indungeon & UI(misdir_key) & target.health.actual >= player.health.max", "tank"},
    {"Misdirection", "inRange.spell & pet.exists & !indungeon & UI(misdir_key)", "pet"},	

    {"A Murder of Crows", "target.inRange(A Murder of Crows).spell & toggle(cooldowns) & {target.health.actual >= player.health.max * 0.6 || target.isdummy || target.player}", "target"},
    --{"Windburst", "target.inRange(Aimed Shot).spell & !player.moving & !debuff(Vulnerable)", "target"},
	{"Aimed Shot", "inRange.spell & {!player.moving || spell(Aimed Shot).casttime == 0} & {target.debuff(Vulnerable).duration > spell(Aimed Shot).casttime + 0.5 || player.focus >= 95 & spell(Windburst).cooldown > 1 & !target.debuff(Hunter's Mark) || player.buff(Look and Load) & player.buff(Look and Load).duration <= 4}", "target"},
	{"Marked Shot", "inRange(Aimed Shot).spell & debuff(Hunter's Mark) & debuff(Vulnerable).duration < spell(Aimed Shot).casttime + 0.5 & player.focus >= 60", "target"},
    {"Windburst", "target.inRange(Aimed Shot).spell & !player.moving & debuff(Vulnerable).duration < spell(Aimed Shot).casttime + 0.5", "target"},
	{"Marked Shot", "inRange(Aimed Shot).spell & debuff(Hunter's Mark) & player.moving", "target"},

	{"Multi-Shot", "toggle(AoE) & inRange.spell & !lastcast(Trueshot).succeed", "target"},
	{"Arcane Shot", "inRange.spell & !lastcast(Trueshot).succeed", "target"},

}

local inCombat = {

	{"Volley", "toggle(AoE) & !player.buff(Volley) || player.buff(Volley) & !toggle(AoE)", "player"},
    {Keybinds},
    {pvp},
    {Interrupts, "toggle(interrupts) & target.canAttack"},
	{Survival},
	{"!/stopattack", "lastcast(Feign Death).succeed || player.buff(Camouflage)", "player"},
	{"!/stopattack", "target.distance <= 20 & target.canAttack & target.player & {target.state(fear) || target.state(disorient) || target.state(incapacitate) || target.state(charm)} || player.state(stun)", "player"},
	{Cooldowns, "toggle(cooldowns) & target.canAttack & target.infront"},
	{Combat, "target.canAttack & target.infront & {!indungeon || target.combat}"},

}

local outCombat = {

    --Single Target Auto change Talents
    {(function() _G.RemoveTalent(22287) end), "talent(6,3) & {target.boss || target.isdummy} & target.alive & toggle(auto_talents)", "player"},
	{(function() _G.LearnTalent(19357) end), "!talent(6,1) & !talent(6,3) & {target.boss || target.isdummy} & target.alive & toggle(auto_talents)", "player"},
	--Multi Target Auto change Talents
    {(function() _G.RemoveTalent(19357) end), "talent(6,1) & !target.boss & !target.isdummy & spell(A Murder of Crows).cooldown == 0 & toggle(auto_talents)", "player"},
	{(function() _G.LearnTalent(22287) end), "!talent(6,3) & !talent(6,1) & !target.boss & !target.isdummy & toggle(auto_talents)", "player"},
	
	{"Volley", "toggle(AoE) & !player.buff(Volley) || player.buff(Volley) & !toggle(AoE)", "player"},
    {pvp},
    {Keybinds},
	{"Exhilaration", "player.health <= UI(exhil_spin) & UI(exhil_check)", "player"},
	{"!/stopattack", "player.buff(Feign Death) || player.buff(Camouflage)", "player"},
	{PreCombat, "target.canAttack & target.infront & !target.isdummy"},

}

NeP.CR:Add(254, {
	name = "["..ColorClass.."Kleei|r]"..ColorClass.." HUNTER - Marksmanship",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.2.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})
