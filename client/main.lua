if Config.Framework == 'esx' then
	ESX = nil
	Citizen.CreateThread(function()
		while ESX == nil do
			TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
			Citizen.Wait(0)
		end
	end)
	
elseif Config.Framework == 'qbcore' then
	-- qb core start up
	-- COMING SOON
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)  
		local playerPed = PlayerPedId()
		local playerCoords = GetEntityCoords(playerPed)		
		
		for k, v in pairs(Config.BellPoints) do		
			if (GetDistanceBetweenCoords(playerCoords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.InteractDistance) then
				ESX.ShowHelpNotification(_U('trigger'))
				if IsControlJustReleased(0, 38) then
					ESX.ShowNotification(_U('used'))
					TriggerServerEvent('lama_ring:triggerBell', v.Job, v.Image)				
				end	
			end
			
			if (GetDistanceBetweenCoords(playerCoords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
                DrawMarker(v.Marker, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
			end
			
		end
	end			
end)

