RegisterCommand('unrack', function(source, args, user)
    local name = GetPlayerName(source)
    TriggerClientEvent("proxUnrack", -1, source, name)
end, false)

RegisterCommand('rack', function(source, args, user)
    local name = GetPlayerName(source)
    TriggerClientEvent("proxRack", -1, source, name)
end, false)