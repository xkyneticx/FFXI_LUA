---------------------------------------------------------------------------------------------------
--	Gearswap LUA - Dark Knight
--
--	Author - xKyneticx
---------------------------------------------------------------------------------------------------

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
	--	Fast Cast Value : 46%
	-----------------------------------------------------------------------------------------------
	sets.precast.FC = {
	    ammo		=	"",
		head		=	{name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
	    body		=	{name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
	    hands		=	"",
    	legs 		=	{name="Odyssean Cuisses", augments={'"Fast Cast"+5','MND+9','Mag. Acc.+9','"Mag.Atk.Bns."+6',}},
    	feet 		=	{name="Odyssean Greaves", augments={'"Drain" and "Aspir" potency +4','STR+8','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
	    neck		=	"",
	    waist		=	"",
	    left_ear	=	"Loquac. Earring",
	    right_ear	=	"",
	    left_ring	=	"Kishar Ring",
	    right_ring	=	"",
		back		=	{name="Ankou's Mantle", augments={'HP+30','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}

	-----------------------------------------------------------------------------------------------
	--	Weapon Skill General
	--	
	-----------------------------------------------------------------------------------------------
    sets.precast.WS = {    
	    ammo="Knobkierrie",
	    head="Hjarrandi Helm",
	    body="Ignominy Cuirass +2",
	    hands="Sulev. Gauntlets +2",
	    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
	    feet="Sulev. Leggings +2",
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Thrud Earring",
	    right_ear="Ishvara Earring",
	    left_ring="Defending Ring",
	    right_ring="Niqmaddu Ring",
	    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
	}

	-----------------------------------------------------------------------------------------------
	--	Weapons Skill Torcleaver
	--	WS Attributes
	--	VIT
	--	WS Dmg
	-----------------------------------------------------------------------------------------------
    sets.precast.WS['Torcleaver'] = {    
	    ammo="Knobkierrie",
	    head="Odyssean Helm",
	    body="Ignominy Cuirass +2",
	    hands="Odyssean Gauntlets",
	    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
	    feet="Sulev. Leggings +2",
	    neck={ name="Abyssal Beads +2", augments={'Path: A',}},
	    waist="Fotia Belt",
	    left_ear="Thrud Earring",
	    right_ear="Ishvara Earring",
	    left_ring="Regal Ring",
	    right_ring="Niqmaddu Ring",
	    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
	}

	-----------------------------------------------------------------------------------------------
	--	Weapon Skill Entropy
	--	WS Attributes
	--	85% INT MOD
	--	Set Details
	--
	--
	-----------------------------------------------------------------------------------------------
    sets.precast.WS['Entropy'] = {      
	    ammo="Knobkierrie",
	    --head="Ratri Sallet +1",
	    body="Ignominy Cuirass +3",
	    --hands="Rat. Gadlings +1",
	    --legs="Ratri Cuisses +1",
	    --feet="Rat. Sollerets +1",
	    neck="Fotia Gorget",
	    waist="Fotia Belt",
	    left_ear="Brutal Earring",
	    right_ear="Telos Earring",
	    --left_ring="Epaminondas's Ring",
	    right_ring="Niqmaddu Ring",
	    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}  

	-- Engaged sets    
	sets.engaged = {   
	    ammo		=	"Ginsen",
	    head		=	"Hjarrandi Helm",
	    body		=	"Hjarrandi Breastplate",
	    hands		=	"Sulev. Gauntlets +2",
	    legs 		=	"Sulev. Cuisses +2",
	    feet		=	"Flam. Gambieras +2",
	    neck		=	"Abyssal Beads +2",
	    waist		=	"Ioskeha Belt +1",
	    left_ear	=	"Cessance Earring",
	    right_ear	=	"Brutal Earring",
	    left_ring	=	"Flamma Ring",
	    right_ring	=	"Niqmaddu Ring",
		back		=	{ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	sets.idle = {    
	    ammo		=	"Staunch Tathlum +1",
	    head		=	"Hjarrandi Helm",
	    body		=	"Hjarrandi Breastplate",
	    hands		=	"Sulev. Gauntlets +2",
	    legs 		=	"Carmine Cuisses +1",
	    feet		=	"Flam. Gambieras +2",
	    neck		=	"Coatl gorget +1",
	    waist		=	"Ioskeha Belt +1",
	    left_ear	=	"Cessance Earring",
	    right_ear	=	"Brutal Earring",
	    left_ring	=	"Defending Ring",
	    right_ring	=	"Stikini Ring +1",
		back		=	{ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
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
    if player.equipment.main == "empty" or player.equipment.sub == "empty" then
        equip({main="Caladbolg",
        sub="Utu Grip"})
    end

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


