---------------------------------------------------------------------------------------------------
--	Gearswap LUA - Dark Knight
--
--	Author - xKyneticx
---------------------------------------------------------------------------------------------------

require('vectors')

---------------------------------------------------------------------------------------------------
--	Function: Get_Sets()
---------------------------------------------------------------------------------------------------
function get_sets()

    mote_include_version = 2
	include('Mote-Include.lua')

end

---------------------------------------------------------------------------------------------------
--	Function: Job_Setup()
---------------------------------------------------------------------------------------------------
function job_setup()

    -- TODO: Setup Main/Sub/Ranged Lock to save TP losses
    WeaponLock = M(false, 'Lock Weapons')
	
end

---------------------------------------------------------------------------------------------------
--	Function: User_Setup()
---------------------------------------------------------------------------------------------------
function user_setup()

	send_command('bind ^f1 gs c toggle WeaponLock')
	
end

---------------------------------------------------------------------------------------------------
--	Function: File_Unload()
---------------------------------------------------------------------------------------------------
function file_unload()

	send_command('unbind ^f1')
end

---------------------------------------------------------------------------------------------------
--	Function: Init_Gear_Setup()
---------------------------------------------------------------------------------------------------
function init_gear_sets()
	-----------------------------------------------------------------------------------------------
	--	Fast Cast Set
	--	Fast Cast Value : 37%
	-----------------------------------------------------------------------------------------------
	-- sets.precast.FC = {
	--     ammo		=	"",
	-- 	head		=	"",
	--     body		=	"",
	--     hands		=	"",
	--     legs 		=	"",
	--     feet		=	"Odyssean Greaves",
	--     neck		=	"",
	--     waist		=	"",
	--     left_ear	=	"Loquac. Earring",
	--     right_ear	=	"",
	--     left_ring	=	"Kishar Ring",
	--     right_ring	=	"",
	-- 	back		=	{ name="Ankou's Mantle", augments={'HP+30','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','"Fast Cast"+10','Spell interruption rate down-10%',}},

	-- }

    sets.precast.WS = {    
	    ammo		=	"Knobkierrie",
		head		=	"Pteroslaver Armet +3",
	    body		=	"Vishap Mail +3",
	    hands		=	"Pteroslaver Finger Gauntlets +3",
	    legs 		=	"Vishap Brais +3",
	    feet		=	"Sulev. Leggings +2",
	    neck		=	"Abyssal Beads +2",
	    waist		=	"Fotia Belt",
	    left_ear	=	"Sherida Earring",
	    right_ear	=	"Telos Earring",
	    left_ring	=	"Regal Ring",
	    right_ring	=	"Niqmaddu Ring",
		back		=	{ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
	}

    sets.precast.WS['Stardiver'] = {    
	    ammo		=	"Knobkierrie",
		head		=	"Pteroslaver Armet +3",
	    body		=	"Vishap Mail +3",
	    hands		=	"Pteroslaver Finger Gauntlets +3",
	    legs 		=	"Vishap Brais +3",
	    feet		=	"Sulev. Leggings +2",
	    neck		=	"Abyssal Beads +2",
	    waist		=	"Fotia Belt",
	    left_ear	=	"Sherida Earring",
	    right_ear	=	"Telos Earring",
	    left_ring	=	"Regal Ring",
	    right_ring	=	"Niqmaddu Ring",
		back		=	{ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
	}

	-- Engaged sets    
	sets.engaged = {   
	    ammo		=	"Ginsen",
	    head		=	"Hjarrandi Helm",
	    body		=	"Vishap Mail +3",
	    hands		=	"Sulev. Gauntlets +2",
	    legs 		=	"Sulev. Cuisses +2",
	    feet		=	"Flam. Gambieras +2",
	    neck		=	"Dragoon's Collar +2",
	    waist		=	"Ioskeha Belt +1",
	    left_ear	=	"Sherida Earring",
	    right_ear	=	"Telos Earring",
	    left_ring	=	"Flamma Ring",
	    right_ring	=	"Niqmaddu Ring",
		back		=	{ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
	}

	sets.idle = {   
	    ammo		=	"Ginsen",
	    head		=	"Hjarrandi Helm",
	    body		=	"Vishap Mail +3",
	    hands		=	"Sulev. Gauntlets +2",
	    legs 		=	"Sulev. Cuisses +2",
	    feet		=	"Flam. Gambieras +2",
	    neck		=	"Dragoon's Collar +2",
	    waist		=	"Ioskeha Belt +1",
	    left_ear	=	"Sherida Earring",
	    right_ear	=	"Telos Earring",
	    left_ring	=	"Flamma Ring",
	    right_ring	=	"Niqmaddu Ring",
		back		=	{ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
	}

	sets.buff.sleep = {
	    ammo		=	"",
	    head		=	"Frenzy Sallet",
	    body		=	"",
	    hands		=	"",
	    legs 		=	"",
	    feet		=	"",
	    neck		=	"",
	    waist		=	"",
	    left_ear	=	"",
	    right_ear	=	"",
	    left_ring	=	"",
	    right_ring	=	"",
		back		=	"",
	}

end

---------------------------------------------------------------------------------------------------
--	Function: Job_PreCast()
---------------------------------------------------------------------------------------------------
function job_precast(spell, action, spellMap, eventArgs)
	--equips favorite weapon if disarmed
    -- if player.equipment.main == "empty" or player.equipment.sub == "empty" then
    --     equip({main="Caladbolg",
    --     sub="Utu Grip"})
    -- end

end

---------------------------------------------------------------------------------------------------
--	Function: Job_Post_PreCast()
---------------------------------------------------------------------------------------------------
function job_post_precast(spell, action, spellMap, eventArgs)

end

---------------------------------------------------------------------------------------------------
--	Function: Job_MidCast()
---------------------------------------------------------------------------------------------------
function job_midcast(spell, action, spellMap, eventArgs)

end

---------------------------------------------------------------------------------------------------
--	Function: Job_Post_MidCast()
---------------------------------------------------------------------------------------------------
function job_post_midcast(spell, action, spellMap, eventArgs)
	-----------------------------------------------------------------------------------------------
	-- NOT IMPLEMENTED
	-----------------------------------------------------------------------------------------------

end

---------------------------------------------------------------------------------------------------
--	Function: Job_AfterCast()
---------------------------------------------------------------------------------------------------
function job_aftercast(spell, action, spellMap, eventArgs)
	-----------------------------------------------------------------------------------------------
	-- Determine Proper Idle Set
	-----------------------------------------------------------------------------------------------
	--	equip(sets.DT, sets.precast.FC)

end

---------------------------------------------------------------------------------------------------
--	Function: Job_Buff_Change()
---------------------------------------------------------------------------------------------------
function job_buff_change(buff,gain, eventArgs)

	-----------------------------------------------------------------------------------------------
	--	Requires Debuffz LUA 
	-----------------------------------------------------------------------------------------------
	require('Debuffz.lua')
	checkbuffs(buff, gain)

	if buff:lower()=='hasso' then
		if not gain then
			add_to_chat(158,'Hasso Used')
			send_command('input /ja hasso <me>')
		end
	end

	-----------------------------------------------------------------------------------------------
	--	Action Inhibiting Conditions
	-----------------------------------------------------------------------------------------------
	--	Condition: Slept	
	if buff:lower()=='sleep' then
	    if gain and player.hp > 100 then
	        equip(sets.buff.sleep)		
			if buffactive.stoneskin then          
	            send_command('cancel Stoneskin')			
			end             		
		end
	end
	-- Condition: Terrorized	
	if buff:lower()=='terror' then   
	    if gain then    
	        equip(sets.defense.DT) 	
		end
	end
	--	Condition: Petrified	
	if buff:lower()=='petrification' then    
	    if gain then 
	        equip(sets.defense.DT)
		end
	end
	--	Condition: Stunned	
	if buff:lower()=='stun'  then    
	    if gain then     
	        equip(sets.defense.DT)  	
		end	
	end
	if buff:lower() == 'charm' then
		if gain then
			equip(sets.defense.DT)
		end
	end

end

---------------------------------------------------------------------------------------------------
--	Function: Determine_Idle()
---------------------------------------------------------------------------------------------------
function determine_idle()

end

---------------------------------------------------------------------------------------------------
--	Function: Job_Self_Command()
---------------------------------------------------------------------------------------------------
function job_self_command(cmdParams, eventArgs)

    
end


