_addon.name = 'AutoPlay'
_addon.version = '0.0.1'
_addon.author = 'xkyneticx'
_addon.commands = {'AutoPlay','AP'}

----------------------------------------------------------------------------------------------
-- Automated Player Template
----------------------------------------------------------------------------------------------

res = require('resources')
config = require('config')
packets = require('packets')
setting = config.load('settings.json')
clock = os.clock()

function delay()

	local now = os.clock
	local seconds = 0

	seconds += settings.actions.delay

	if JA_Delay then
		seconds += settings.actions.ja.delay
	end

	if WS_Delay then
		seconds += settings.actions.ws.delay
	end
	
	if clock + seconds <= now then
		clock = now

		if JA_Delay then
			JA_Delay = false
		end

		if WS_Delay then
			WS_Delay = false
		end

		return true
	else
		return false	
	end
end

function isEngaged()

	local player = windower.ffxi.get_player()
	local target = windower.ffxi.get_mob_by_target('t')

	if player.status == 1 and setting.actions.enabled and target and target.valid_target and target.is_npc then
		return true
	else
	    return false
	end

end

----------------------------------------------------------------------------------------------
-- Function : onTargetChange
--
-- Handles actions when the player changes targets
----------------------------------------------------------------------------------------------
function onTargetChange()
    local mob = windower.ffxi.get_mob_by_target('t')
    local targ = windower.ffxi.get_mob_by_target('st', 't')

end

----------------------------------------------------------------------------------------------
-- Function : main
--
-- Provides decision making for the bot.
----------------------------------------------------------------------------------------------
function main()

    if delay() then

        local play = windower.ffxi.get_player()
        local mob = windower.ffxi.get_mob_by_target('t')
        local recast = windower.ffxi.get_ability_recasts()

        if PreventAct or not play then
	        
	        if isEngaged() then
	 
	        end

    	end 

    end

end

----------------------------------------------------------------------------------------------
-- Function : onBuffChange
--
-- Handles actions when the player gains or looses a buff
----------------------------------------------------------------------------------------------
function onBuffChange()
    
    buffs = {}
    
    for i,v in ipairs(windower.ffxi.get_player().buffs) do
		if res.buffs[v] and res.buffs[v].english then
            buffs[res.buffs[v].english:lower()] = (buffs[res.buffs[v].english:lower()] or 0) + 1
        end
    end

    if buffs.sleep or buffs.petrification or buffs.stun or 
    	buffs.charm or buffs.amnesia or buffs.terror or 
    		buffs.lullaby or buffs.impairment then
        PreventAct = true
    else
        PreventAct = false
    end
end

function autoJA(str,ta)
    windower.send_command('input /ja "%s" %s':format(str,ta))
    JA_Delay = true
end

function autoWS(str)
    windower.send_command('input /ws "%s" <t>':format(str))
    WS_Delay = true
end

----------------------------------------------------------------------------------------------
-- Function : onLoad
--
-- Handles actions when the Addon is loaded.
----------------------------------------------------------------------------------------------
function onLoad()
    staggered = {}
    buff_active()
    windower.text.create('proc_box')
    windower.text.set_bg_color('proc_box',200,30,30,30)
    windower.text.set_color('proc_box',255,200,200,200)
    windower.text.set_location('proc_box',setting.posx,setting.posy)
    windower.text.set_bg_visibility('proc_box',1)
    windower.text.set_font('proc_box','Arial')
    windower.text.set_font_size('proc_box',10)
end

----------------------------------------------------------------------------------------------
-- Function : onUnload
--
-- Handles actions when the Addon is unloaded.
----------------------------------------------------------------------------------------------
function onUnload()
    windower.text.delete('proc_box')
end

----------------------------------------------------------------------------------------------
-- Function : onZoneChange
--
-- Handles actions when the player changes zones.
----------------------------------------------------------------------------------------------
function onZoneChange()
    staggered = {}
    buff_active()
end

function addon_message(...)
    windower.add_to_chat(0,'%s: %s':format(_addon.name,table.concat({...},', ')))
end

----------------------------------------------------------------------------------------------
-- Function : onCommand
--
-- Handles Addon Commands from the user.
----------------------------------------------------------------------------------------------
function onCommand(...)
    
    local commands = {...}
    
    if not commands[1] then return end

    ------------------------------------------------------------------------------------------
    -- AutoPlay >> Actions
    ------------------------------------------------------------------------------------------
    if commands[1]:lower() == 'actions' then 
	    --------------------------------------------------------------------------------------
	    -- AutoPlay >> Actions >> Enabled
	    --------------------------------------------------------------------------------------
	    if commands[2]:lower() == 'enabled' then
	    	----------------------------------------------------------------------------------
	    	-- AutoPlay >> Actions >> Enabled >> On
	    	----------------------------------------------------------------------------------
	    	if commands[3]:lower() == 'on' then
		    	if setting.actions.enabled then 
		    		addon_message('AutoPlay Error: Actions already enabled')
		    	else
		    		setting.actions = true
		        	addon_message('AutoPlay: Actions >> Enabled >> On')
		    	end
		    end 
		    ----------------------------------------------------------------------------------
		    -- AutoPlay >> Actions >> Enabled >> Off
		    ----------------------------------------------------------------------------------
		    if commands[3]:lower() == 'off' then
		    	if setting.actions.enabled then 
		    		addon_message('AutoPlay Error: Actions already disabled')
		    	else
		    		setting.actions = true
		        	addon_message('AutoPlay: Actions >> Enabled >> Off')
		    	end 
		    end		    
	    end
	    --------------------------------------------------------------------------------------
	    -- AutoPlay >> Actions >> JA
	    --------------------------------------------------------------------------------------
	    if commands[2]:lower() == 'ja' then
		    ----------------------------------------------------------------------------------
		    -- AutoPlay >> Actions >> JA >> Enabled
		    ----------------------------------------------------------------------------------
		    if commands[3]:lower() == 'enabled' then
		    	------------------------------------------------------------------------------
		    	-- AutoPlay >> Actions >> JA >> Enabled >> On
		    	------------------------------------------------------------------------------
		    	if commands[4]:lower() == 'on' then
			    	if setting.actions.enabled then 
			    		addon_message('AutoPlay Error: Job abilities already enabled')
			    	else
			    		setting.actions = true
			        	addon_message('AutoPlay: Actions >> JA >> Enabled >> On')
			    	end
			    end 
			    ------------------------------------------------------------------------------
			    -- AutoPlay >> Actions >> JA >> Enabled >> Off
			    ------------------------------------------------------------------------------
			    if commands[4]:lower() == 'off' then
			    	if setting.actions.enabled then 
			    		addon_message('AutoPlay Error: Job abilities already disabled')
			    	else
			    		setting.actions = true
			        	addon_message('AutoPlay: Actions >> JA >> Enabled >> Off')
			    	end 
			    end		    
		    end
	    end
	    --------------------------------------------------------------------------------------
	    -- AutoPlay >> Actions >> WS
	    --------------------------------------------------------------------------------------
	    if commands[2]:lower() == 'ja' then
		    ----------------------------------------------------------------------------------
		    -- AutoPlay >> Actions >> WS >> Enabled
		    ----------------------------------------------------------------------------------
		    if commands[3]:lower() == 'enabled' then
		    	------------------------------------------------------------------------------
		    	-- AutoPlay >> Actions >> WS >> Enabled >> On
		    	------------------------------------------------------------------------------
		    	if commands[4]:lower() == 'on' then
			    	if setting.actions.enabled then 
			    		addon_message('AutoPlay Error: Weaponskills already enabled')
			    	else
			    		setting.actions = true
			        	addon_message('AutoPlay: Actions >> WS >> Enabled >> On')
			    	end
			    end 
			    ------------------------------------------------------------------------------
			    -- AutoPlay >> Actions >> WS >> Enabled >> Off
			    ------------------------------------------------------------------------------
			    if commands[4]:lower() == 'off' then
			    	if setting.actions.enabled then 
			    		addon_message('AutoPlay Error: Weaponskills already disabled')
			    	else
			    		setting.actions = true
			        	addon_message('AutoPlay: Actions >> WS >> Enabled >> Off')
			    	end 
			    end		    
		    end
	    end
    end
end

----------------------------------------------------------------------------------------------
-- Windower Events
----------------------------------------------------------------------------------------------

windower.register_event('load', onLoad)

windower.register_event('unload', onUnload)

windower.register_event('target change', onTargetChange)

windower.register_event('prerender', main)

windower.register_event('addon command', onCommand)

windower.register_event('zone change', onZoneChange)

windower.register_event('gain buff', 'lose buff', onBuffChange)


