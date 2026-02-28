local unpack = _G.unpack

local keybind_list_1 = {

	{key = '1', text = 'Shift Keybind'},
	{key = '2', text = 'Control Keybind'},
	{key = '3', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},

}

local keybind_list_2 = {

	{key = '4', text = 'Shift Keybind'},
	{key = '5', text = 'Control Keybind'},
	{key = '6', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},

}

local keybind_list_3 = {

	{key = '7', text = 'Shift Keybind'},
	{key = '8', text = 'Control Keybind'},
	{key = '9', text = 'Alt Keybind'},
	{key = 'none', text = 'Disable'},

}

local Logo_GUI = {

	{type = "texture", texture = "Interface\\AddOns\\Nerdpack-Subzrk\\media\\resto.blp", width = 160, height = 160, offset = 100, y = -50, align = "center"},

}

local GUI = {

	unpack(Logo_GUI),
	{type = "spacer"},	{type = "spacer"},	{type = "spacer"},
	{type = "header", size = 16, text = "Healing Settings", align = "center"},
	{type = "spacer"},
	{type = "spinner", 	text = "Rejuvenation", key = "rejuv",  default = 85, step = 5, width = 100},
	{type = "spinner", 	text = "Germination", key = "germin", default = 80, step = 5, width = 100},
	{type = "spinner", 	text = "Regrowth", key = "regr",  default = 75, step = 5, width = 100},
	{type = "spinner", 	text = "Swiftmend", key = "smheal",   default = 60, step = 5, width = 100},
	{type = "spinner", 	text = "Healing Touch:|c0000FA9A if talent 1,3", key = "htheal",   default = 75, step = 5, width = 100},
	{type = "spinner", 	text = "Cenarion Ward - tank", key = "cenarionward", default = 90, step = 5, width = 100},
	{type = "spacer"},{type = "ruler"},{type = "spacer"},
	{type = "spinner", 	text = "|c0000FA9A Healing Touch if Abundance buff count", key = "abun_key",	 default = 4, step = 1, max = 10, width = 100},
	{type = "spacer"},{type = "ruler"},{type = "spacer"},

	{type = "header", size = 16, text = "Keybinds", align = "center"},
	{type = "text", text = "|c0000FA9A Just hold the Key|r", align = "center"},
	{type = "checkbox", text = "Use Keybinds Out of Combat", key = "K_OOC", default = false},
	{type = "text", text = "|c0087CEFA Choose Keybind:", align = "center"},
	{type = "combo", default = "1",  key = "list1",  list = keybind_list_1, 	width = 100},
	{type = "text", text = "Use Efflorescence:|c0000FA9A on cursor ground"},
	{type = "combo",	default = "5",  key = "list2", 	list = keybind_list_2, 	width = 100},
	{type = "text", text = "Innervate:|c0000FA9A  in Combat only"},
	{type = "combo",	default = "9",  key = "list3", 	list = keybind_list_3, 	width = 100},
	{type = "text", text = "Tranquility:|c0000FA9A"},
	{type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16,  text = "PVP", align = "center"},
	{type = "checkbox",	text = "Unroot: |c0000FA9A Auto unroot Shapeshifting.|r", align = "left", key = "unroot", default = true},
	{type = "checkbox",	text = "Gladiator's Medallion:|c0000FA9A Remove stun/fear/disorient/charm.|r", align = "left", key = "medal", default = true},
	{type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "Survival", align = "center"},
	{type = "checkspin", text = "Use Renewal:", key = "ren", check = true, spin = 40, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "Use Health Stone:", key = "hs", check = true, spin = 60, width = 100, step = 5, max = 95, min = 1},
	{type = "checkspin", text = "DPS:|c0000FA9A if lowest HP > |r", key = "dps_key", check = true, spin = 75, width = 100, step = 5, max = 100, min = 1},
	{type = "checkbox",	text = "Root:|c0000FA9A Auto Root [Entangling Roots] or [Mass Entanglement].|r", align = "left", key = "root", default = false},
	{type = "spacer"}, {type = "ruler"},

	{type = "header", size = 16, text = "Trinkets", align = "center"},
	{type = "text", text = "|c0000FA9A Use Trinkets if Cooldown Toggle is enable|r", align = "center"},
	{type = "checkbox", text = "Trinket #1", 	key = "trk1",	default = false},
	{type = "checkbox", text = "Trinket #2", 	key = "trk2",   default = false},
	{type = "text", text = "|c0000FA9A Enable only trinkets that are usable, otherwise it will loop the rotation !|r"},
	{type = "ruler"},

	{type = "text", text = "In combat:|c0000FA9A if your target is friend and dead will use Rebirth to ress|r"},
	{type = "text", text = "Out of combat:|c0000FA9A if your target is friend and dead will use Revive to ress|r"},

	{type = "spinner", text = "Range", key = "XXX", spin = 40, width = 100, step = 5, max = 45, min = 5},
	{type = "spinner", text = "HP", key = "YYY", spin = 90, width = 100, step = 5, max = 100, min = 5},
	{type = "spinner", text = "Units", key = "ZZZ", spin = 3, width = 100, step = 1, max = 30, min = 1},

}

local exeOnLoad = function()

	print('|c0000FA9A --- |r|c00FF7F00 DRUID - Restoration |r')
	print('|c0000FA9A ------------------------PVE-------------------------------------------|r')
	print('|c0000FA9A --- |rRecommended Talents: 1/2 - 2/1 - 3/x - 4/X - 5/3 - 6/3 - 7/2')
	print('|c0000FA9A ----------------------------------------------------------------------|r')
	print("|c0000FA9A Please Setup Rotation Settings first before using it|r")

    NeP.Interface:AddToggle({key = "dispelall", icon = "Interface\\Icons\\ability_shaman_cleansespirit.png", name = "Dispell", text = "ON/OFF Auto Dispell All"})
    NeP.Interface:AddToggle({key = "DPS", icon = "Interface\\Icons\\ability_mage_firestarter.png", name = "DPS", text = "ON/OFF DMG when > xx% on LOWEST Health"})
    NeP.Interface:AddToggle({key = "travelform", icon = "Interface\\Icons\\ability_druid_travelform", name = "Auto Travel Form", text = "ON/OFF Auto Travel Form"})

end

local Shapeshift = {
	--{"/cancelform", "combat & buff(Bear Form) & !toggle(xAffinities) || !toggle(travelform) & !player.swimming & player.buff(Travel Form) || combat & buff(Cat Form) & !player.buff(Dash) & !toggle(xAffinities) || !toggle(xAffinities) & {buff(Bear Form)||buff(Cat Form)||buff(Moonkin Form)}", "player"},
	{"Bear Form", "!buff(Bear Form) & !buff(Prowl) & state(root) & UI(unroot)", "player"},

	{"Travel Form", "toggle(travelform) & !indoors & !buff(Prowl) & !buff(Travel Form) & !target.canAttack & swimming & {!health <= 85 || health <= 85 & spell(Regrowth).casttime==0 || player.moving}", "player"},
	--{"/cancelform", "toggle(travelform) & !indoors & !buff(Dash) & !buff(Prowl) & !buff(Travel Form) & !area(15).enemies >= 1 & {!target.enemy || target.enemy & !target.alive || !target.exists} & {player.buff(Cat Form) || player.buff(Bear Form) || player.buff(Moonkin Form)}", "player"},
	{"Travel Form", "toggle(travelform) & !indoors & !buff(Dash) & !buff(Prowl) & !buff(Travel Form) & !target.canAttack & {!health <= 85 || health <= 85 & spell(Regrowth).casttime==0 || player.moving}", "player"}, -- & !area(15).enemies >= 1
}

local Keybinds = {
	{"!/cast Berserking\n/cast Tranquility", "toggle(cooldowns) & !player.casting(Tranquility) & !spell(Tranquility).cooldown > 1.5 & {keybind(alt) & UI(list3)==9 || keybind(shift) & UI(list3)==7 || keybind(control) & UI(list3)==8}", "player"},
	{"Innervate", "combat & {keybind(alt) & UI(list2)==6 || keybind(shift) & UI(list2)==4 || keybind(control) & UI(list2)==5}", "player"},
	{"Efflorescence", "keybind(alt) & UI(list1)==3 || keybind(shift) & UI(list1)==1 || keybind(control) & UI(list1)==2", "cursor.ground"},
}

local Survival = {
	{"Gladiator's Medallion", "UI(medal) & target.pvp & player.pvp & {player.state(stun) || player.state(fear) || player.state(disorient) || player.state(charm)}", "player"},
	{"Renewal", "player.health <= UI(ren_spin) & UI(ren_check) & area(40).enemies >= 1", "player"},
	{"Mass Entanglement", "talent(4,2) & range <= 7 & player.area(7).enemies >= 2 & UI(root) & !debuff(Mass Entanglement) & !debuff(Entangling Roots)", "enemies"},
	{"Entangling Roots", "range <= 7 & UI(root) & !debuff(Mass Entanglement) & !debuff(Entangling Roots) & !player.lastcast(Mass Entanglement) & !player.lastcast(Entangling Roots)", "enemies"},
	{"#5512", "item(5512).count >= 1 & player.health <= UI(hs_spin) & UI(hs_check) & player.combat", "player"}, --Health Stone
}

local Interrupts = {
	{"Typhoon", "interruptAt(60) & dungeon.interrupts & talent(4,3) & range <= 10", "enemies"},
	{"Mighty Bash", "interruptAt(60) & dungeon.interrupts & talent(4,1) & inRange.spell", "enemies"},
}

local Cooldowns = {
	{"#trinket1", "UI(trk1) & target.range <= 40"},
	{"#trinket2", "UI(trk2) & target.range <= 40"},
}

local Bear = {
	{"Bear Form", "!player.buff"},
	{"Ironfur", "player.Raged & {buff.duration <= 2 || buff.count < 2}", "player"},
	{"Frenzied Regeneration", "!player.buff & player.incdmg(5) > player.health.max * 0.10 & player.health < 80 & !lastcast", "player"},
	{"Moonfire", "inRange.spell & debuff.duration <= 4.8", "target"},
	{"Thrash", "{!talent(3,1) & player.area(8).enemies >= 1} || {talent(3,1) & player.area(13).enemies >= 1}"},
	{"Mangle", "inRange.spell", "target"},
	{"Moonfire", "inRange.spell", "target"},
}

local Cat = {

	{"Cat Form", "!player.buff"},
	{"Prowl", "!state(dot) & !IsStealthed", "player"},
	{"Rake", "inRange.spell & IsStealthed", "target"},
	{"Rip", "inRange.spell & combopoints.deficit == 0 & debuff.duration <= 7.2 & health.actual >= player.health.max*0.5", "target"},
	{"Ferocious Bite", "inRange.spell & combopoints.deficit == 0", "target"},
	{"Swipe", "player.area(8).enemies >= 3", "player"},
	{"Rip", "inRange.spell & player.area(8).enemies >= 3 & player.combopoints >= 3 & !debuff & health.actual >= player.health.max*0.5", "enemies"},
	{"Rake", "inRange.spell & debuff.duration <= 4.5", "target"},
	{"Rake", "inRange.spell & player.area(8).enemies >= 3 & !debuff & health.actual >= player.health.max*0.5", "enemies"},
	{"Shred", "inRange.spell", "target"},
	{"Moonfire", "inRange(Rip).spell & !IsStealthed", "target"},

}

local Moonkin = {
	{"Moonkin Form", "!player.buff"},
	{"Sunfire", "inRange.spell & debuff.duration <= 2 & enemy & alive", "target"},
	{"Moonfire", "inRange.spell & debuff.duration <= 2 & enemy & alive", "target"},
	{"Sunfire", "toggle(aoe) & !debuff & combat & inRange.spell & enemy & alive", "enemies"},
	{"Moonfire", "toggle(aoe) & !debuff & combat & inRange.spell & enemy & alive", "enemies"},
	{"Starsurge", "inRange.spell & !player.moving", "target"},
	{"Lunar Strike", "inRange.spell & player.area(20).enemies >= 4 & !player.moving", "target"},
	{"Solar Wrath", "inRange.spell & !player.moving", "target"},
}

local DPS = {

	--{Bear, "talent(3,3)"},
	{Cat, "talent(3,2)"},
	{Moonkin, "talent(3,1)"},
	{"Sunfire", "inRange.spell & debuff.duration <= 2 & enemy & alive", "target"},
	{"Moonfire", "inRange.spell & debuff(Moonfire).duration <= 2 & enemy & alive", "target"},
	{"Solar Wrath", "inRange.spell & enemy & alive & !player.moving", "target"},

}

local Mitigations = {
    -- Raids --
    -- NightHold
    -- Chronomatic Anomaly
    {"Wild Growth", "inRange.spell & count.friendly(Time Release).debuffs >= 6 & debuff(Time Release).any", "lowest"},
    {"Rejuvenation", "inRange.spell & debuff(Time Release).any & !buff(Rejuvenation)", "lowest"},
    -- Spellblade Aluriel
    {"Rejuvenation", "inRange.spell & debuff(Mark of Frost).any & !buff(Rejuvenation)", "lowest"},
    {"Rejuvenation", "inRange.spell & debuff(Searing Brand).any & !buff(Rejuvenation)", "lowest"},
    -- Krosus
    {"Rejuvenation", "inRange.spell & debuff(Orb of Destruction).any & !buff(Rejuvenation)", "lowest"},

    -- Dungeons --
    {"Rejuvenation", "!immune_heal & !buff(Rejuvenation) & debuff(Grievous Tear).any", "lowest"}, -- Grievous Tear ( Archdruid Glaidalis @ DHT )
    {"Rejuvenation", "!immune_heal & talent(6,3) & !buff(Rejuvenation (Germination)) & debuff(Grievous Tear).any", "lowest"}, -- Grievous Tear ( Archdruid Glaidalis @ DHT )
	
	{"Rejuvenation", "!immune_heal & !buff(Rejuvenation) & debuff(Crushing Grip).any", "lowest"}, -- Crushing Grip ( Oakheart @ DHT )
    {"Rejuvenation", "!immune_heal & talent(6,3) & !buff(Rejuvenation (Germination)) & debuff(Crushing Grip).any", "lowest"}, -- Crushing Grip ( Oakheart @ DHT )
	
	{"Rejuvenation", "!immune_heal & !buff(Rejuvenation) & debuff(Impaling Spear).any", "lowest"}, -- Impaling Spear ( Warlord Parjesh @ EOA )
    {"Rejuvenation", "!immune_heal & talent(6,3) & !buff(Rejuvenation (Germination)) & debuff(Impaling Spear).any", "lowest"}, -- Impaling Spear ( Warlord Parjesh @ EOA )
	
	{"Rejuvenation", "!immune_heal & !buff(Rejuvenation) & debuff(Toxic Wound).any", "lowest"}, -- Toxic Wound ( Serpentrix @ EOA )
    {"Rejuvenation", "!immune_heal & talent(6,3) & !buff(Rejuvenation (Germination)) & debuff(Toxic Wound).any", "lowest"}, -- Toxic Wound ( Serpentrix @ EOA )
	
	{"Rejuvenation", "!immune_heal & !buff(Rejuvenation) & debuff(Fragment).any", "lowest"}, -- Fragment ( Harbaron @ MOS )
    {"Rejuvenation", "!immune_heal & talent(6,3) & !buff(Rejuvenation (Germination)) & debuff(Fragment).any", "lowest"}, -- Fragment ( Harbaron @ MOS )
	
	{"Rejuvenation", "!immune_heal & !buff(Rejuvenation) & debuff(Scent of Blood).any", "lowest"}, -- Scent of Blood ( Fenryr @ HOV )
    {"Rejuvenation", "!immune_heal & talent(6,3) & !buff(Rejuvenation (Germination)) & debuff(Scent of Blood).any", "lowest"}, -- Scent of Blood ( Fenryr @ HOV )
	
	{"Rejuvenation", "!immune_heal & !buff(Rejuvenation) & debuff(Spiked Tongue).any", "lowest"}, -- Spiked Tongue ( Naraxas @ NL )
    {"Rejuvenation", "!immune_heal & talent(6,3) & !buff(Rejuvenation (Germination)) & debuff(Spiked Tongue).any", "lowest"}, -- Spiked Tongue ( Naraxas @ NL )
	
	{"Rejuvenation", "!immune_heal & !buff(Rejuvenation) & debuff(Quarantine).any", "lowest"}, -- Spiked Tongue ( Naraxas @ NL )
    {"Rejuvenation", "!immune_heal & talent(6,3) & !buff(Rejuvenation (Germination)) & debuff(Quarantine).any", "lowest"}, -- Spiked Tongue ( Naraxas @ NL )

}

local oocHealing = {

	--MASS Ress
	{"Revitalize", "!player.moving & !lastcast.succeed", "deadmember"},
	--Clearcasting
	{"Regrowth", "inRange.spell & player.buff(Clearcasting) & health <= 85", "lowest"},
	--Healing Touch
	{"Healing Touch", "inRange.spell & !player.moving & health <= UI(htheal) & talent(1,3) & player.buff(Abundance).count >= UI(abun_key)", "lowest"},
	--Rejuvenation
	{"Rejuvenation", "inRange.spell & health <= UI(rejuv) & !buff",  {"lowestpredicted(TANK)", "lowestpredicted2(TANK)", "lowestpredicted(HEALER)", "lowestpredicted2(HEALER)", "lowestpredicted3(HEALER)", "lowestpredicted4(HEALER)", "lowestpredicted5(HEALER)", "lowestpredicted6(HEALER)", "lowestpredicted(DAMAGER)", "lowestpredicted2(DAMAGER)", "lowestpredicted3(DAMAGER)", "lowestpredicted4(DAMAGER)", "lowestpredicted5(DAMAGER)", "lowestpredicted6(DAMAGER)", "lowestpredicted7(DAMAGER)", "lowestpredicted8(DAMAGER)", "lowestpredicted9(DAMAGER)", "lowestpredicted10(DAMAGER)", "lowest"}},
	--Germination
	{"Rejuvenation", "inRange.spell & talent(6,3) & health <= UI(germin) & !buff(Rejuvenation (Germination))",  {"lowestpredicted(TANK)", "lowestpredicted2(TANK)", "lowestpredicted(HEALER)", "lowestpredicted2(HEALER)", "lowestpredicted3(HEALER)", "lowestpredicted4(HEALER)", "lowestpredicted5(HEALER)", "lowestpredicted6(HEALER)", "lowestpredicted(DAMAGER)", "lowestpredicted2(DAMAGER)", "lowestpredicted3(DAMAGER)", "lowestpredicted4(DAMAGER)", "lowestpredicted5(DAMAGER)", "lowestpredicted6(DAMAGER)", "lowestpredicted7(DAMAGER)", "lowestpredicted8(DAMAGER)", "lowestpredicted9(DAMAGER)", "lowestpredicted10(DAMAGER)", "lowest"}},
	--Regrowth
	{"Regrowth", "inRange.spell & !player.moving & health <= UI(regr)", "lowest"},

}

local Healing = {
	--Revive
	{"Rebirth", "inRange.spell & player.area(40).enemies >= 1", "deadmember(TANK)"},
	--Ironbark
	{"Ironbark", "inRange.spell & combat & incdmg(6) >= health.max * 0.3 & faction.positive", {"tank", "tank2", "lowest"}},
	{"Ironbark", "inRange.spell & combat & incdmg(6) >= health.max * 0.3 & faction.negative & !pvp & !player.pvp", {"tank", "tank2", "lowest"}},
	{"Ironbark", "inRange.spell & combat & incdmg(6) >= health.max * 0.3 & faction.negative & pvp & player.pvp", {"tank", "tank2", "lowest"}},
	{"Barkskin", "incdmg(6) >= health.max*0.4", "player"},
	
	--AOE heals
	{"Flourish", "lastcast(Wild Growth)", "player"},
    {"Essence of G'Hanir", "lastcast(Flourish)", "player"},
    {"Essence of G'Hanir", "!talent(7,3) & lastcast(Wild Growth).succeed & area(40,65).health >= 3", "player"},
    {"Essence of G'Hanir", "!talent(7,3) & lastcast(Wild Growth).succeed & area(40,50).health >= 2", "player"},
	
	--{"Essence of G'Hanir", "area(40,60).heal >= 3 & area(45).enemies > 0 & {count(Wild Growth).friendly.buffs >= 5 || {count(Rejuvenation).friendly.buffs >= 5 & count(Rejuvenation(Germination)).friendly.buffs >= 5}}", "player"},
	{"Flourish", "talent(7,3) & player.area(45).enemies > 0 & player.area(40,80).heal >= 3 & {count(Wild Growth).friendly.buffs >= 5 || {count(Rejuvenation).friendly.buffs >= 5 & count(Rejuvenation(Germination)).friendly.buffs >= 5}}", "player"},
	{"Wild Growth", "toggle(aoe) & !player.moving & area(30,90).heal >= 3", "lowest"},
	--Swiftmend
	{"Swiftmend", "inRange.spell & !immune_heal & health <= UI(smheal) & combat & !player.buff(Soul of the Forest) & !lastcast(Swiftmend).succeed", "lowest"},
	--Lifebloom
	{"Lifebloom", "inRange.spell & buff.duration <= 4.5 & !tank2.buff & aggro", "tank"},
	{"Lifebloom", "inRange.spell & group.members > 5 & !tank1.buff & buff.duration <= 4.5 & aggro", "tank2"},
	
	--Cenarion Ward
	{"Cenarion Ward", "inRange.spell & talent(1,2) & health <= UI(cenarionward)", {"lowest", "tank"}},
	
	--Healing Touch----------------------------------------------------
	{"Healing Touch", "inRange.spell & !immune_heal & !player.moving & health <= 80 & player.buff(Abundance).count >= 7", "lowest"},
	-- oh shit Regrowth
	{"Regrowth", "inRange.spell & !immune_heal & !player.moving & health <= 40", "lowest"},
	--Healing Touch----------------------------------------------------
	{"Healing Touch", "inRange.spell & !immune_heal & !player.moving & health <= 80 & player.buff(Abundance).count >= 6", "lowest"},
	
	
	--Regrowth (Clearcasting)
	{"Regrowth", "inRange.spell & !immune_heal & !player.moving & player.buff(Clearcasting) & health < 90", "lowest"},
	
	--Germination------------------------------------------------------
	{"Rejuvenation", "inRange.spell & !immune_heal & talent(6,3) & health <= UI(germin) & !buff(Rejuvenation (Germination))",  {"lowestpredicted(TANK)", "lowestpredicted2(TANK)", "lowestpredicted(HEALER)", "lowestpredicted2(HEALER)", "lowestpredicted3(HEALER)", "lowestpredicted4(HEALER)", "lowestpredicted5(HEALER)", "lowestpredicted6(HEALER)", "lowestpredicted(DAMAGER)", "lowestpredicted2(DAMAGER)", "lowestpredicted3(DAMAGER)", "lowestpredicted4(DAMAGER)", "lowestpredicted5(DAMAGER)", "lowestpredicted6(DAMAGER)", "lowestpredicted7(DAMAGER)", "lowestpredicted8(DAMAGER)", "lowestpredicted9(DAMAGER)", "lowestpredicted10(DAMAGER)", "lowest"}},

	--Rejuvenation-----------------------------------------------------
	{"Rejuvenation", "inRange.spell & health <= UI(rejuv) & !buff",  {"lowestpredicted(TANK)", "lowestpredicted2(TANK)", "lowestpredicted(HEALER)", "lowestpredicted2(HEALER)", "lowestpredicted3(HEALER)", "lowestpredicted4(HEALER)", "lowestpredicted5(HEALER)", "lowestpredicted6(HEALER)", "lowestpredicted(DAMAGER)", "lowestpredicted2(DAMAGER)", "lowestpredicted3(DAMAGER)", "lowestpredicted4(DAMAGER)", "lowestpredicted5(DAMAGER)", "lowestpredicted6(DAMAGER)", "lowestpredicted7(DAMAGER)", "lowestpredicted8(DAMAGER)", "lowestpredicted9(DAMAGER)", "lowestpredicted10(DAMAGER)", "lowest"}},

	--Healing Touch----------------------------------------------------
	{"Healing Touch", "inRange.spell & !immune_heal & !player.moving & health <= UI(htheal) & talent(1,3) & player.buff(Abundance).count >= 4", "lowest"},
	
	--Regrowth---------------------------------------------------------
	{"Regrowth", "inRange.spell & !immune_heal & !player.moving & health <= UI(regr)", "lowest"},
	
	--Innervate phase
	{"Rejuvenation", "inRange.spell & !immune_heal & player.buff(Innervate) & !buff(Rejuvenation)",  {"lowestpredicted(TANK)", "lowestpredicted2(TANK)", "lowestpredicted(HEALER)", "lowestpredicted2(HEALER)", "lowestpredicted3(HEALER)", "lowestpredicted4(HEALER)", "lowestpredicted5(HEALER)", "lowestpredicted6(HEALER)", "lowestpredicted(DAMAGER)", "lowestpredicted2(DAMAGER)", "lowestpredicted3(DAMAGER)", "lowestpredicted4(DAMAGER)", "lowestpredicted5(DAMAGER)", "lowestpredicted6(DAMAGER)", "lowestpredicted7(DAMAGER)", "lowestpredicted8(DAMAGER)", "lowestpredicted9(DAMAGER)", "lowestpredicted10(DAMAGER)"}},
	{"Rejuvenation", "inRange.spell & !immune_heal & player.buff(Innervate) & talent(6,3) & !buff(Rejuvenation (Germination))",  {"lowestpredicted(TANK)", "lowestpredicted2(TANK)", "lowestpredicted(HEALER)", "lowestpredicted2(HEALER)", "lowestpredicted3(HEALER)", "lowestpredicted4(HEALER)", "lowestpredicted5(HEALER)", "lowestpredicted6(HEALER)", "lowestpredicted(DAMAGER)", "lowestpredicted2(DAMAGER)", "lowestpredicted3(DAMAGER)", "lowestpredicted4(DAMAGER)", "lowestpredicted5(DAMAGER)", "lowestpredicted6(DAMAGER)", "lowestpredicted7(DAMAGER)", "lowestpredicted8(DAMAGER)", "lowestpredicted9(DAMAGER)", "lowestpredicted10(DAMAGER)"}},

}

local inCombat = {

	{Keybinds},
	{Survival, "player.health < 100 & !form == 1"},
	{"%dispelall", "toggle(dispelall)"},
	{Interrupts, "toggle(interrupts)"},
	{Cooldowns, "toggle(cooldowns)"},
	{Mitigations, "form == 0 || player.buff(Treant Form)"},
	{Healing, "form == 0 || player.buff(Treant Form)"},
	{DPS, "toggle(DPS) & UI(dps_key_check) & target.canAttack & !flying"},
	--{Shapeshift, "toggle(travelform) & flying"},
	
}

local outCombat = {

	{Keybinds},
	{"%dispelall", "toggle(dispelall)"},
	{oocHealing, "form == 0 || player.buff(Treant Form)"},
	{DPS, "toggle(DPS) & UI(dps_key_check) & target.canAttack & !flying"},
	{Shapeshift, "toggle(travelform) & !IsStealthed & player.moving & {!target.canAttack || flying}"},
	
}

local blacklist = {
	-- enemies
	debuff = {name = "Aegis of Aggramar"}, -- God King Skovald Shield in HoV
	debuff = {name = "Creeping Doom"}, -- Cordana's Shield in VotW
}

NeP.CR:Add(105, {
    name = "["..ColorClass.."Kleei|r]"..ColorClass.." DRUID - Restoration",
	ic = {{inCombat, "!player.buff(Food & Drink).any & !player.buff(Drink).any & !player.buff(Food).any & !player.casting(Tranquility)"}},
	ooc = {{outCombat, "!player.buff(Food & Drink).any & !player.buff(Drink).any & !player.buff(Food).any & !player.casting(Tranquility)"}},
	gui = GUI,
	gui_st = {title="Kleei Combat Routine Settings", width="315", height="785", color="87CEFA"},	
	wow_ver = "7.2.5",
 	nep_ver = "1.11",
	blacklist = blacklist,
	load = exeOnLoad
})
