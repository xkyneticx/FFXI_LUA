-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function checkbuffs(buff, gain)
    if buff:lower() == 'petrification' then
        if gain then
            send_command('@input /p Petrified : ON ')
        else
        	send_command('@input /p Petrified : OFF ')
    	end
    end
    if buff:lower() == 'doom' then
        if gain then
            send_command('@input /p Doom : ON ')
        else
        	send_command('@input /p Doom : OFF ')
    	end
    end
    if buff:lower() == 'curse' then
        if gain then
            send_command('@input /p Curse : ON ')
        else
        	send_command('@input /p Curse : OFF ')
        end
    end
    if buff:lower() == 'paralysis' then
        if gain then
            send_command('@input /p Paralyzed : ON')
        else
        	send_command('@input /p Paralyzed : OFF')
        end
    end
    if buff:lower() == 'slow' then
        if gain then
            send_command('@input /p Slowed : ON ')
        else
        	send_command('@input /p Slowed : OFF ')
    	end
    end
    if buff:lower() == 'plague' then
        if gain then
            send_command('@input /p Virus : ON ')
        else
        	send_command('@input /p Virus : OFF ')
    	end
    end
    if buff:lower() == 'charm' then
        if gain then
            send_command('@input /p Charmed : ON ')
        else
        	send_command('@input /p Charmed : OFF ')
        end
    end
    if buff:lower() == 'blindness' then
        if gain then
            send_command('@input /p Blind : ON ')
        else
        	send_command('@input /p Blind : OFF ')
        end
    end
    if buff:lower() == 'sleep' then
        if gain then
            send_command('@input /p Sleep : ON ')
        else
        	send_command('@input /p Sleep : OFF ')
        end
    end
end