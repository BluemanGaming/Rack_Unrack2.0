RegisterNetEvent('proxUnrack')
AddEventHandler('proxUnrack', function(id, name)
  local ID = PlayerId()
  local plyID = GetPlayerFromServerId(id)
    if plyID == ID then
      TriggerEvent('chatMessage', "^4OFFICER", {255, 255, 255}, " ^*".. name .. " UNRACKS ^8RIFLE ^7FROM CRUISER ! ")
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), 1000, false) -- Change weapon hash here <--
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(ID)), GetEntityCoords(GetPlayerPed(plyID)), true) < 49.999 then
      TriggerEvent('chatMessage', "^4OFFICER", {255, 255, 255}, " ^*".. name .. " UNRACKS ^8RIFLE ^7FROM CRUISER ! ")
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), 1000, false) -- Change weapon hash here <--)
    end
end)

RegisterNetEvent('proxRack')
AddEventHandler('proxRack', function(id, name)
  local ID = PlayerId()
  local plyID = GetPlayerFromServerId(id)
    if plyID == ID then
      TriggerEvent('chatMessage', "^4OFFICER", {255, 255, 255}, "^*".. name .. " RACKS ^8RIFLE ^7BACK INTO CRUISER ! ")
      RemoveAllPedWeapons(GetPlayerPed(-1))
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(ID)), GetEntityCoords(GetPlayerPed(plyID)), true) < 49.999 then
      TriggerEvent('chatMessage', "^4OFFICER", {255, 255, 255}, " ^*".. name .. " RACKS ^8RIFLE ^7BACK INTO CRUISER ! ")
      RemoveAllPedWeapons(GetPlayerPed(-1))
    end
end)