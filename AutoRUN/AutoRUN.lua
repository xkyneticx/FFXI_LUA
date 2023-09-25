_addon.name = 'AutoRUN'
_addon.version = '0.0.1'
_addon.author = 'xkyneticx'
_addon.commands = {'AutoRUN','AR'}

res = require('resources')
config = require('config')
packets = require('packets')
setting = config.load('settings.json')
clock = os.clock()

----------------------------------------------------------------------------------------------
-- Function : inRunes
--
-- Checks if the entered value is a rune. Returns boolean.
----------------------------------------------------------------------------------------------
function inRunes(val)
    runeArr = {'ignis', 'gelus', 'flabra', 'tellus', 'sulpor', 'unda', 'lux', 'tenebrae'}

    for index, value in ipairs(runeArr) do
        if value == val then
            return true
        end
    end

    return false
end

----------------------------------------------------------------------------------------------
-- Function : setRunes
--
-- Set desired runes.
----------------------------------------------------------------------------------------------
function setRunes(arg1, arg2, arg3)
    
    if inRunes(arg1:lower()) then
        WantBuffs[arg1:lower()] = WantBuffs[arg1:lower()] + 1
    else
        windower.add_to_chat(2, arg1 ..' is not a valid rune.')
    end

    if inRunes(arg2:lower()) then 
        WantBuffs[arg2:lower()] = WantBuffs[arg2:lower()] + 1
    else
        windower.add_to_chat(2, arg2 ..' is not a valid rune.')
    end

    if inRunes(arg3:lower()) then
        WantBuffs[arg3:lower()] = WantBuffs[arg3:lower()] + 1
    else
        windower.add_to_chat(2, arg3 ..' is not a valid rune.')
    end

end
----------------------------------------------------------------------------------------------
-- Function : delay
--
-- Delays actions based on actions taken.
----------------------------------------------------------------------------------------------
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

----------------------------------------------------------------------------------------------
-- Function : main
--
-- Provides decision making for the bot.
----------------------------------------------------------------------------------------------
function main()

    if delay() then

        local play = windower.ffxi.get_player()
        --local mob = windower.ffxi.get_mob_by_target('t')
        local recast = windower.ffxi.get_ability_recasts()

        if play then

            onBuffChange()

            if not PreventAct then
    	        

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

----------------------------------------------------------------------------------------------
-- Function : onBuffChange
--
-- Handles actions when the player gains or looses a buff
----------------------------------------------------------------------------------------------
function compareBuffs()
    windower.add_to_chat(2, 'Comparing')
    buff_active()
    if HaveBuffs['Ignis'] ~= WantedBuffs['Ignis'] then
        if HaveBuffs['Ignis'] < WantedBuffs['Ignis'] then 
            windower.add_to_chat(2, 'Missing Ignis')
            autoJA('ignis','me')
        end 
    end
    if HaveBuffs['Gelus'] ~= WantedBuffs['Gelus'] then
        if HaveBuffs['Gelus'] < WantedBuffs['Gelus'] then 
            windower.add_to_chat(2, 'Missing Gelus')
            autoJA('gelus','me')
        end         
    end
    if HaveBuffs['Flabra'] ~= WantedBuffs['Flabra'] then
        if HaveBuffs['Flabra'] < WantedBuffs['Flabra'] then 
            windower.add_to_chat(2, 'Missing Flabra')
            autoJA('flabra','me')
        end         
    end
    if HaveBuffs['Unda'] ~= WantedBuffs['Unda'] then
        if HaveBuffs['Unda'] < WantedBuffs['Unda'] then 
            windower.add_to_chat(2, 'Missing Unda')
            autoJA('unda','me')
        end         
    end
    if HaveBuffs['Tellus'] ~= WantedBuffs['Tellus'] then
        if HaveBuffs['Tellus'] < WantedBuffs['Tellus'] then 
            windower.add_to_chat(2, 'Missing Tellus')
            autoJA('tellus','me')
        end         
    end
    if HaveBuffs['Sulpor'] ~= WantedBuffs['Sulpor'] then
        if HaveBuffs['Sulpor'] < WantedBuffs['Sulpor'] then 
            windower.add_to_chat(2, 'Missing Sulpor')
            autoJA('sulpor','me')
        end         
    end
    if HaveBuffs['Lux'] ~= WantedBuffs['Lux'] then
        if HaveBuffs['Lux'] < WantedBuffs['Lux'] then 
            windower.add_to_chat(2, 'Missing Lux')
            autoJA('lux','me')
        end         
    end
    if HaveBuffs['Tenebrae'] ~= WantedBuffs['Tenebrae'] then
        if HaveBuffs['Tenebrae'] < WantedBuffs['Tenebrae'] then 
            windower.add_to_chat(2, 'Missing Tenebrae')
            autoJA('tenebrae','me')
        end
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
-- Windower Events
----------------------------------------------------------------------------------------------
windower.register_event('prerender', main)

--windower.register_event('zone change', onZoneChange)
