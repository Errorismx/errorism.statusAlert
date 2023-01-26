TriggerNuiEvent = function(action, data)
    SendNUIMessage({
        action = action,
        data = data,
    })
end


Citizen.CreateThread(function()
    TriggerNuiEvent('SET_CONFIG',Ui or {})
end)
