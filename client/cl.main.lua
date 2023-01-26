
local shown = false
local cooldown = false

function PlayFxSound()
    if cooldown then return end
    if not shown then return end
    cooldown = true
    TriggerNuiEvent('PLAYSOUND',{})
    Citizen.SetTimeout(Client.cooldown,function ()
        cooldown = false
    end)
end

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(300)
        TriggerEvent('esx_status:getStatus', 'hunger', function(status)
            if status.getPercent() <= Client.lowPercent then
                if not shown then
                    shown = true
                    TriggerNuiEvent('SHOW',shown)
                end
                PlayFxSound()
            else
                if shown then
                    shown = false
                    TriggerNuiEvent('SHOW',shown)
                end
            end
        end)
    end
end)





