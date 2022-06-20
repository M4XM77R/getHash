local ped = PlayerPedId()
local vehicle = GetVehiclePedIsIn(ped, false)

RegisterCommand('hash', function()
	if vehicle ~= 0 and GetPedInVehicleSeat(vehicle, -1) == ped then
        TriggerEvent('notifications', 'cyan', 'HASH', GetHashKey(vehicle))
	end
end, false)