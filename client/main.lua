-- made it use the export if possible if not the event instead of old way
if (GetResourceState("es_extended") == "started") then
    if (exports["es_extended"] and exports["es_extended"].getSharedObject) then
        ESX = exports["es_extended"]:getSharedObject()
    else
        TriggerEvent("esx:getSharedObject", function(obj)
            ESX = obj
        end)
    end
end


CreateThread(function()
	while true do
	        local sleep = 500  
		local playerPed = PlayerPedId()
		local playerCoords = GetEntityCoords(playerPed)		
		
		for k, v in pairs(Config.BellPoints) do	
			if #(playerCoords - vector3(v.Pos.x, v.Pos.y, v.Pos.z)) < Config.DrawDistance then
				sleep = 0
				DrawMarker(v.Marker, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
				if #(playerCoords - vector3(v.Pos.x, v.Pos.y, v.Pos.z)) < Config.InteractDistance then
					ESX.ShowHelpNotification(_U('trigger'))
					if IsControlJustReleased(0, 38) then
						ESX.ShowNotification(_U('used'))
						TriggerServerEvent('lama_ring:triggerBell', v.Job, v.Image, v.Title, v.SubTitle, v.Text)					
						if Config.UseInteractSound then
							TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 1.5, Config.SoundName, 1.0)
						end

					end	
				end
			end
			
		end
		Wait(sleep)
	end			
end)

