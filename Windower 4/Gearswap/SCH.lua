---------------------------------------------------------------------------------------------------
--	Gearswap LUA - Scholar
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
	
end

---------------------------------------------------------------------------------------------------
--	Function: User_Setup()
---------------------------------------------------------------------------------------------------
function user_setup()
	send_command('clearbinds')
end

---------------------------------------------------------------------------------------------------
--	Function: File_Unload()
---------------------------------------------------------------------------------------------------
function file_unload()

end

---------------------------------------------------------------------------------------------------
--	Function: Init_Gear_Setup()
---------------------------------------------------------------------------------------------------
function init_gear_sets()

	-----------------------------------------------------------------------------------------------
	--	Job Ability Specific Gear
	-----------------------------------------------------------------------------------------------
    --sets.buff['Rapture']= 		{head="Arbatel Bonnet +1"}
    --sets.buff['Perpetuance']= 	{hands="Arbatel Bracers +1"}
    --sets.buff['Immanence']= 	{hands="Arbatel Bracers +1"}
    --sets.buff['Penury']= 		{legs="Arbatel Pants +1"}
    --sets.buff['Parsimony']= 	{legs="Arbatel Pants +1"}
    --sets.buff['Celerity']= 		{feet="Peda. Loafers +3"}
    --sets.buff['Alacrity']= 		{feet="Peda. Loafers +3"}

	-----------------------------------------------------------------------------------------------
	--	Fast Cast Set
	--	Fast Cast Value : 43%
	-----------------------------------------------------------------------------------------------
	sets.precast.FC = {
	    main=		{ name="Musa", augments={'Path: C',}},
	    sub=		"Enki Strap",
	    ammo=		"Incantor Stone",
	    head=		{ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	    body=		"Vrikodara Jupon",
	    hands=		"Acad. Bracers +3",
	    legs=		"Jhakri Slops +2",
	    feet=		{ name="Peda. Loafers +3", augments={'Enhances "Stormsurge" effect',}},
	    neck=		{ name="Argute Stole +2", augments={'Path: A',}},
	    waist=		"Channeler's Stone",
	    left_ear=	"Loquac. Earring",
	    right_ear=	"Regal Earring",
	    left_ring=	"Jhakri Ring",
	    right_ring=	"Kishar Ring",
	    back=		{ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
		}

	-----------------------------------------------------------------------------------------------
	--	Healing Midcast Set 
	--	Priority : Skill > MND > VIT
	--	Healing Magic Skill : 104
	--	MND : 192
	--	VIT : 127
	-----------------------------------------------------------------------------------------------
	sets.midcast.Healing = {
		main=		"Musa",
		sub=		"Enki Strap",
	    ranged=		"",
	    ammo=		"",
	    head=		{ name="Kaykaus Mitra +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
	    body=		{ name="Peda. Gown +3", augments={'Enhances "Enlightenment" effect',}},
	    hands=		{ name="Peda. Bracers +3", augments={'Enh. "Tranquility" and "Equanimity"',}},
	    legs=		"Acad. Pants +2",
	    feet=		{ name="Peda. Loafers +3", augments={'Enhances "Stormsurge" effect',}},
	    neck=		"",
	    waist=		"",
	    left_ear=	"",
	    right_ear=	"",
	    left_ring=	"",
	    right_ring=	"Stikini Ring +1",
	    back=		"",
	}

	-----------------------------------------------------------------------------------------------
	--	Curing Midcast Set
	--	Priority : Potency > Skill > MND > VIT
	--	Cure Potency : 52%
	--	Cure Potency II : 4%
	--	Healing Magic Skill :
	--  MND :
	--  VIT :
	-----------------------------------------------------------------------------------------------
	sets.midcast.Cure = set_combine(sets.midcast.Healing,{
		main=		"Musa",
		sub=		"Enki Strap",
		ranged=		"",
		ammo=		"Hydrocera",
		head=		{name='Kaykaus mitra +1',augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6'}},
		neck=		"",
		earring1=	"",
		earring2=	"",
		body=		"Vrikodara jupon",
		hands=		{name='Kaykaus cuffs +1',augments={'MP+80','"Conserve MP"+7','"Fast Cast"+4%'}},
		ring1=		"",
		ring2=		"",
		back=		"Solemnity Cape",
		waist=		"",
		legs=		"Acad. Pants +2",
		feet=		"Acad. Loafers +2"
	})

	-----------------------------------------------------------------------------------------------
	--	Enhancing Midcast Set 
	--	Priority: Duration > Skill
	--	Enhancing Magic Duration : +32%
	--	Enhancing Magic Skill : 19+14+
	-----------------------------------------------------------------------------------------------
	sets.midcast.Enhancing = {
		main=		"Musa",
		sub=		"Enki Strap",
		ranged=		"",
		ammo=		"",
		head=		"Arbatel Bonnet +1",
		neck=		"",
		earring1=	"",
		earring2=	"",
		body=		"Peda. Gown +3",
		hands=		"Arbatel Bracers +1",
		ring1=		"",
		ring2=		"",
		back=		{ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
		waist=		"Embla Sash",
		legs=		"Acad. Pants +2",
		feet=		"Acad. Loafers +2"
	}

	-----------------------------------------------------------------------------------------------
	--	Regen Midcast Set 
	--	Priority: Potency > Duration > Skill
	--	Regen Potency :
	--	Enhancing Magic Duration :
	--	Enhancing Magic Skill : 
	-----------------------------------------------------------------------------------------------
	sets.midcast.Regen = {
		main=		"Musa",
		sub=		"Enki Strap",
		ranged=		"",
		ammo=		"",
		head=		"Arbatel Bonnet +1",
		neck=		"",
		earring1=	"",
		earring2=	"",
		body=		"Peda. Gown +3",
		hands=		"Arbatel Bracers +1",
		ring1=		"",
		ring2=		"",
		back=		{ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
		waist=		"Embla Sash",
		legs=		"Acad. Pants +2",
		feet=		"Acad. Loafers +2"
	}

	-----------------------------------------------------------------------------------------------
	--	Enfeebling Midcast Set
	--	Priority : Skill > M.Acc > MND (Light)
	--	Enfeebling Magic Skill : 
	--	Magic Accuracy :
	--	MND :
	-----------------------------------------------------------------------------------------------
	sets.midcast.Enfeebling = {
	    main={ name="Musa", augments={'Path: C',}},
	    sub="Enki Strap",
	    ammo="Hydrocera",
	    head="Acad. Mortar. +3",
	    body="Acad. Gown +3",
	    hands={ name="Peda. Bracers +3", augments={'Enh. "Tranquility" and "Equanimity"',}},
	    legs="Arbatel Pants +1",
	    feet="Acad. Loafers +3",
	    neck={ name="Argute Stole +2", augments={'Path: A',}},
	    waist="Eschan Stone",
	    left_ear="Odnowa Earring",
	    right_ear="Regal Earring",
	    left_ring="Kishar Ring",
	    right_ring="Stikini Ring +1",
	    back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}

	-----------------------------------------------------------------------------------------------
	--	Elemental Nuke Midcast Set
	--	Priority : M.Acc > M.Atk > INT
	--	Magic Accuracy :
	--	Magic Attack :
	--	INT :
	-----------------------------------------------------------------------------------------------
	sets.midcast.ElementalNuke = {
		main=		"Musa",
		sub=		"Enki Strap",
	    ammo=		"Hydrocera",
	    head=		{ name="Peda. M.Board +3", augments={'Enh. "Altruism" and "Focalization"',}},
	    body=		"Acad. Gown +3",
	    hands=		{ name="Amalric Gages +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	    legs=		{ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	    feet=		{ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	    neck=		{ name="Argute Stole +2", augments={'Path: A',}},
	    waist=		"Eschan Stone",
	    left_ear=	"Barkaro. Earring",
	    right_ear=	"Regal Earring",
	    left_ring=	"Shiva Ring +1",
	    right_ring=	"Mujin Band",
	    back=		{ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	}

	-----------------------------------------------------------------------------------------------
	--	Elemental MB Midcast Set
	--	Priority : M.Acc > M.Atk > INT
	--	Magic Accuracy :
	--	Magic Attack :
	--	INT :
	-----------------------------------------------------------------------------------------------
	sets.midcast.ElementalMB = {
		main=		"Musa",
		sub=		"Enki Strap",
	    ammo=		"Hydrocera",
	    head=		{ name="Peda. M.Board +3", augments={'Enh. "Altruism" and "Focalization"',}},
	    body=		"Acad. Gown +3",
	    hands=		{ name="Amalric Gages +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	    legs=		{ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	    feet=		{ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	    neck=		{ name="Argute Stole +2", augments={'Path: A',}},
	    waist=		"Eschan Stone",
	    left_ear=	"Barkaro. Earring",
	    right_ear=	"Regal Earring",
	    left_ring=	"Shiva Ring +1",
	    right_ring=	"Mujin Band",
	    back=		{ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	}

	-----------------------------------------------------------------------------------------------
	--	Helix Midcast Set
	--	Priority : M.Acc > M.Atk > INT
	--	Magic Accuracy :
	--	Magic Attack :
	--	INT :
	-----------------------------------------------------------------------------------------------
	sets.midcast.Helix = {
		main=		"Musa",
		sub=		"Enki Strap",
	    ammo=		"Hydrocera",
	    head=		{ name="Peda. M.Board +3", augments={'Enh. "Altruism" and "Focalization"',}},
	    body=		"Acad. Gown +3",
	    hands=		{ name="Amalric Gages +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	    legs=		{ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	    feet=		{ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	    neck=		{ name="Argute Stole +2", augments={'Path: A',}},
	    waist=		"Eschan Stone",
	    left_ear=	"Barkaro. Earring",
	    right_ear=	"Regal Earring",
	    left_ring=	"Shiva Ring +1",
	    right_ring=	"Mujin Band",
	    back=		{ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	}

	-----------------------------------------------------------------------------------------------
	--	Dark Midcast Set
	--	Priority : Absorb > Skill > M.Acc > INT
	-----------------------------------------------------------------------------------------------
	sets.midcast.Dark = set_combine(sets.midcast.ElementalMB,{
		main=		"",
		sub=		"",
		ranged=		"",
		ammo=		"",
		head=		"",
		neck=		"Erra Pendant",
		earring1=	"Abyssal Earring",
		earring2=	"",
		body=		"Acad. Gown +2",
		hands=		"",
		ring1=		"",
		ring2=		"",
		back=		"",
		waist=		"",
		legs=		"",
		feet=		""
	})

	-----------------------------------------------------------------------------------------------
	--	Damage Mitigation Set
	--	Damage Taken : -23%
	-----------------------------------------------------------------------------------------------
	sets.DT = {
		main=		"",
		sub=		"",
		ranged=		"",
		ammo=		"Staunch Tathlum +1",
		head=		"",
		neck=		"Loricate Torque +1",
		earring1=	"",
		earring2=	"",
		body=		"",
		hands=		"",
		ring1=		"Defending Ring",
		ring2=		"",
		back=		"Solemnity Cape",
		waist=		"",
		legs=		"",
		feet=		""
	}

	-----------------------------------------------------------------------------------------------
	--	General Idle Set
	--
	-----------------------------------------------------------------------------------------------
	sets.idle = {
	    main=		"",
	    sub=		"",
	    ammo=		"Staunch Tathlum +1",
	    head=		{ name="Peda. M.Board +3", augments={'Enh. "Altruism" and "Focalization"',}},
	    body=		{ name="Peda. Gown +3", augments={'Enhances "Enlightenment" effect',}},
	    hands=		"Acad. Bracers +3",
	    legs=		{ name="Peda. Pants +3", augments={'Enhances "Tabula Rasa" effect',}},
	    feet=		{ name="Peda. Loafers +3", augments={'Enhances "Stormsurge" effect',}},
	    neck=		"Loricate Torque +1",
	    waist=		"Eschan Stone",
	    left_ear=	"Odnowa Earring",
	    right_ear=	"Regal Earring",
	    left_ring=	"Defending Ring",
	    right_ring=	"Stikini Ring +1",
	    back=		"Solemnity Cape",	
	}



	-----------------------------------------------------------------------------------------------
	--	No Sublimation Light Arts Idle Set
	--	Maximize Passive Refresh
	-----------------------------------------------------------------------------------------------
	-- sets.Idle_NoSublimationLightArts = {
	-- 	main=		"",
	-- 	sub=		"",
	-- 	ranged=		"",
	-- 	ammo=		"",
	-- 	head=		"",
	-- 	neck=		"",
	-- 	earring1=	"",
	-- 	earring2=	"",
	-- 	body=		"",
	-- 	hands=		"",
	-- 	ring1=		"",
	-- 	ring2=		"",
	-- 	back=		"",
	-- 	waist=		"",
	-- 	legs=		"",
	-- 	feet=		""		
	-- }

	-----------------------------------------------------------------------------------------------
	--	No Sublimation Dark Arts Idle Set
	--	Maximize Passive Refresh
	-----------------------------------------------------------------------------------------------
	-- sets.Idle_NoSublimationDarkArts = {
	-- 	main=		"",
	-- 	sub=		"",
	-- 	ranged=		"",
	-- 	ammo=		"",
	-- 	head=		"",
	-- 	neck=		"",
	-- 	earring1=	"",
	-- 	earring2=	"",
	-- 	body=		"",
	-- 	hands=		"",
	-- 	ring1=		"",
	-- 	ring2=		"",
	-- 	back=		"",
	-- 	waist=		"",
	-- 	legs=		"",
	-- 	feet=		""		
	-- }
	-----------------------------------------------------------------------------------------------
	--	Sublimation Idle Set
	--	Maximize Passive Refresh
	-----------------------------------------------------------------------------------------------
	-- sets.Idle_Sublimation = {
	-- 	main=		"",
	-- 	sub=		"",
	-- 	ranged=		"",
	-- 	ammo=		"",
	-- 	head=		"",
	-- 	neck=		"",
	-- 	earring1=	"",
	-- 	earring2=	"",
	-- 	body=		"",
	-- 	hands=		"",
	-- 	ring1=		"",
	-- 	ring2=		"",
	-- 	back=		"",
	-- 	waist=		"",
	-- 	legs=		"",
	-- 	feet=		""		
	-- }

end

---------------------------------------------------------------------------------------------------
--	Function: Job_PreCast()
---------------------------------------------------------------------------------------------------
function job_precast(spell, action, spellMap, eventArgs)
	-----------------------------------------------------------------------------------------------
	-- NOT IMPLEMENTED
	-----------------------------------------------------------------------------------------------

end

---------------------------------------------------------------------------------------------------
--	Function: Job_Post_PreCast()
---------------------------------------------------------------------------------------------------
function job_post_precast(spell, action, spellMap, eventArgs)
	-----------------------------------------------------------------------------------------------
	-- NOT IMPLEMENTED
	-----------------------------------------------------------------------------------------------

end

---------------------------------------------------------------------------------------------------
--	Function: Job_MidCast()
---------------------------------------------------------------------------------------------------
function job_midcast(spell, action, spellMap, eventArgs)
	if spell.skill == 'Enhancing Magic' then
		if spellMap == 'Regen' then
			equip(sets.midcast.Regen)
		else
			equip(sets.midcast.Enhancing)
		end
	elseif spell.skill == 'Healing Magic' then
		if spellMap == 'Cure' then
			equip(sets.midcast.Cure)
		else
			equip(sets.midcast.Healing)
		end
	elseif spell.skill == 'Elemental Magic' then
		if spellMap == 'Helix' then
			equip(sets.midcast.Helix)
		else
			equip(sets.midcast.ElementalMB)
			-- if state.MagicBurst.value then
			-- 	add_to_chat(150,"Elemental MB Set")
			-- 	equip(sets.midcast.ElementalMB)	
			-- else
			-- 	add_to_chat(150,"Elemental Nuke Set")
			-- 	equip(sets.midcast.ElementalNuke)
			-- end
		end
	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.Dark)
	elseif spell.skill == 'Enfeebling Magic' then
		if spell.type == 'WhiteMagic' then
			equip(sets.midcast.EnfeeblingLight)
		else
			equip(sets.midcast.EnfeeblingDark)
		end
	end
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
	equip(sets.DT, sets.precast.FC)

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