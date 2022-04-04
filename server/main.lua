if Config.Framework == 'esx' then
	ESX = nil
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	
elseif Config.Framework == 'qbcore' then
	local QBCore = exports['qb-core']:GetCoreObject()
	
end

RegisterServerEvent('lama_ring:triggerBell')
AddEventHandler('lama_ring:triggerBell', function(job, image)
	local _source = source
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		local xPlayerJob = xPlayer.job.name

			if xPlayerJob == job then
				if Config.JobAsTitle then
					TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], job, _U('ring'), _U('ringed'), image, 1)
				else
					TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], _U('title'), _U('ring'), _U('ringed'), image, 1)
				end
				
			end
	end
	Citizen.Wait(100)
end) 
