ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('lama_ring:triggerBell')
AddEventHandler('lama_ring:triggerBell', function(job, image, title, subtitle, text)
	local _source = source
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		local xPlayerJob = xPlayer.job.name

			if xPlayerJob == job then
					TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], title, subtitle, text, image, 1)		
			end
	end
	Citizen.Wait(100)
end) 
