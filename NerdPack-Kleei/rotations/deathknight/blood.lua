local unpack = _G.unpack
local NeP = _G.NeP

local GUI = {
	{type = 'header', 	text = 'Keybinds', align = 'center'},
	{type = 'checkbox', text = 'Use Keybinds Out of Combat', key = 'K_OOC', default = false},
	{type = 'text', 		text = 'Shift : Death Grip'},
	{type = 'text', 		text = 'Control : Gorefiend\'s Grasp'},
	{type = 'text', 		text = 'Alt : Wraith Walk'},
	{type = 'header', 	text = 'Cooldowns', align = 'center'},
	{type = 'checkbox', text = 'Trinket 1', key = 'trk1', default = false},
	{type = 'checkbox', text = 'Trinket 2', key = 'trk2', default = false},
}

local exeOnLoad = function()

    print("|c0000FA9A ------------------------------------------------------------------------------|r")
    print("|c0000FA9A --- |r"..ColorClass.."DEATH KNIGHT - Blood|r")
    print("|c0000FA9A ------------------------PVE-------------------------------------------------|r")
    print("|cffADFF2F ---- |rRecommended [M+] Talents: 1/2 - 2/1 - 3/1 - 4/2 - 5/2 - 6/3 - 7/1")
    print("|c0000FA9A ------------------------------------------------------------------------------|r")
    print("|cffADFF2F ---- |rRecommended [Raid] Talents: 1/3 - 2/1 - 3/1 - 4/2 - 5/3 - 6/3 - 7/2")
	print("|c0000FA9A ------------------------------------------------------------------------------|r")
	print("|c0000FA9A")
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")
	print("|c0000FA9A Like my work ? buy me a beer or six|r|c00FF0000 https://www.paypal.me/thekleei|r")

	NeP.Interface:AddToggle({
  key = "xInt",
  icon = "Interface\\Icons\\spell_shadow_teleport",
  name = "Interrupts anyone",
  text = "Interrupts any enemies around you",
  })

	NeP.Interface:AddToggle({
  key = "xDef",
  icon = "Interface\\Icons\\spell_shadow_antimagicshell",
  name = "Use defensives",
  text = "Use the defensive spells automatically",
  })

end

local Keybinds = {
 
	{"Death and Decay", "keybind(control)", "player.ground"},
	{"Asphyxiate", "inRange.spell & canAttack & infront & keybind(alt)", {"mouseover", "target"}},
    --{"&Death Grip", "!inmelee & keybind(shift)", "target"},
    --{"Gorefiend's Grasp", "keybind(control)", "target"},
	
}

local Interrupts = {

    {"&Mind Freeze", "inRange.spell & interruptAt(50) & infront", "target"},
    {"Asphyxiate", "{{indungeon & dungeon.interrupts} || !indungeon} & interruptAt(75) & infront & inRange.spell & spell(Mind Freeze).cooldown > 1.5", "target"},
    {"&Arcane Torrent", "indungeon & dungeon.interrupts & interruptAt(90) & distance <= 8 & spell(Mind Freeze).cooldown > 1.5 & spell(Asphyxiate).cooldown > 1.5" , "target"},

}

local Interrupts_all = {

	{"&Mind Freeze", "{{indungeon & dungeon.interrupts} || !indungeon} & inRange.spell & interruptAt(65)", "enemies"},
	{"Asphyxiate", "{{indungeon & dungeon.interrupts} || !indungeon} & interruptAt(85) & inRange.spell & spell(Mind Freeze).cooldown > 1.5", "enemies"},
	{"&Arcane Torrent", "indungeon & dungeon.interrupts & interruptAt(95) & range <= 8 & spell(Mind Freeze).cooldown > 1.5 & spell(Asphyxiate).cooldown > 1.5" , "enemies"},

}

local Survival = {

	{"Blooddrinker", "player.health <= 75", "target"},
    {"Death Strike", "inRange.spell & infront & health <= 90", "enemies"},
	{"#5512", "item(5512).count >= 1 & health <= 60", "player"}, --Health Stone
	--{"&Icebound Fortitude", "toggle(xDef) & player.health <= 35 & player.area(40).enemies >= 1", "player"},
	{"&Icebound Fortitude", "health < 90 & incdmg(5) >= health.max * 0.3 & area(40).enemies >= 1", "player"},
	--{"&Vampiric Blood", "toggle(xDef) & player.health <= 50 & player.area(40).enemies >= 1", "player"},
	{"&Vampiric Blood", "toggle(xDef) & health < 90 & incdmg(5) > health.max * 0.3 & area(40).enemies >= 1", "player"},
	--{"&Anti-Magic Shell", "toggle(xDef) & player.health <= 60 & player.area(40).enemies >= 1", "player"},
	{"&Anti-Magic Shell", "toggle(xDef) & health < 90 & incdmg(5).magic >= health.max * 0.3 & area(40).enemies >= 1", "player"},
	{"#137338", "player.health <= 70 & equipped(137338) & !player.buff(Anti-Magic Shell)", "target"},

}

local Cooldowns = {

    {"&Dancing Rune Weapon", "target.area(8).enemies >= 7 || {target.health < 90 & player.area(8).enemies >= 5} || {target.health < 80 & target.area(8).enemies >= 3} || target.boss || toggle(Cooldowns)", "target"},
    {"#trinket1", "UI(trk1) & player.area(40).enemies >= 1", "target"},
    {"#trinket2", "UI(trk2) & player.area(40).enemies >= 1", "target"},
	
}

local Combat = {

    {"/startattack", "!isattacking & inRange(Marrowrend).spell & canAttack", "target"},
	
    {"Death and Decay", "toggle(aoe) & player.area(8).enemies >= 2 & player.lastmoved > 0.25 & player.buff(Death and Decay).duration < 5", "player.ground"},
    {"Death and Decay", "talent(2,1) & player.area(8).enemies == 1 & player.lastmoved > 0.25 & player.buff(Death and Decay).duration < 5", "player.ground"},

    {"Death's Caress","inRange.spell & canAttack & runes >= 3 & !debuff(Blood Plague)", "target"},
    {"Marrowrend", "inRange.spell & canAttack & player.buff(Bone Shield).duration < 4", "target"},
    {"Blood Boil", "distance <= 8 & canAttack & !debuff(Blood Plague)", "enemies"},

    {"Bonestorm", "!moving & runicpower >= 80 & health <= 80 & {player.area(8).enemies >= 3 || target.boss || toggle(Cooldowns)}", "player"},
    {"Death Strike", "inRange.spell & canAttack & {player.runicpower >= 80 || artifact(Souldrinker).enabled}", "target"},
    {"Blooddrinker", "talent(1,3) & canAttack", "target"},
    {"Marrowrend", "inRange.spell & canAttack & player.buff(Bone Shield).count <= 8", "target"},

	--{"Death and Decay","toggle(aoe) & player.area(8).enemies >= 3 & player.lastmoved > 0.25 & enemy & combat & alive & !advanced_unlock", "player.ground"},
	--{"Death and Decay","player.area(8).enemies == 1 & player.lastmoved > 0.25 & runes >= 3 & talent(2,1) & alive & !advanced_unlock", "player.ground"},

	--{"Death and Decay","target.area(8).enemies == 1 & player.lastmoved > 0.25 & player.buff(Crimson Scourge) & !talent(2,1) & alive & advanced_unlock", "target.ground"},
	--{"Death and Decay","player.area(8).enemies == 1 & player.lastmoved > 0.25 & player.buff(Crimson Scourge) & !talent(2,1) & alive & !advanced_unlock", "player.ground"},
	{"Consumption", " {target.infront & target.area(8).enemies >= 5 & player.health <= 90} || {target.infront & player.health <= 80 & {target.area(8).enemies.infront >= 3 || target.boss || toggle(Cooldowns)}}", "target"},
	{"Blood Boil", "area(8).enemies >= 1 & timeout(bloodboil, 2.2)", "player"},
	{"Heart Strike", "inRange.spell & canAttack & runes >= 2", "target"},

}

local inCombat = {


	{"&Dark Command", "inRange.spell & canAttack & threat < 100 & !target.player", "target", "enemies"},
	{"Raise Ally", "inRange.spell & !enemy & dead & player & player.area(40).enemies >= 1", "mouseover"},
	{Keybinds},
	{Interrupts, "toggle(Interrupts)"},
	{Interrupts_all, "toggle(Interrupts) & toggle(xInt)"},
	{Survival, "player.health < 100 & player.area(40).enemies >= 1"},
	{Cooldowns, "toggle(Cooldowns)"},
	{Combat},
}

local outCombat = {

	{Keybinds},
    {"/startattack", "!isattacking & inRange(Marrowrend).spell & canAttack", "target"},

}



NeP.CR:Add(250, {
	name = "["..ColorClass.."Kleei|r]"..ColorClass.." DEATH KNIGHT - Blood",
	ic = inCombat,
	ooc = outCombat,
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="770", color="87CEFA"},
	wow_ver = "7.2.5",
 	nep_ver = "1.11",
	load = exeOnLoad
})