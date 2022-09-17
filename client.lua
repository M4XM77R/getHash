local ped = PlayerPedId()
local vehicle = GetVehiclePedIsIn(ped, false)

RegisterCommand('hash', function()
	if vehicle ~= 0 and GetPedInVehicleSeat(vehicle, -1) == ped then
        vehHash = GetHashKey(vehicle)
		ShowNotification(vehHash)
	end
end, false)

--Add Notifications
function ShowNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false) 
end