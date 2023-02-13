fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

author 'SirLamaGott'
description 'Lama - Ring'
version '1.0.0-custom'

client_scripts {
	'client/main.lua',
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/en.lua',
} 

server_scripts {
	'server/main.lua',
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/en.lua',
} 

shared_script 'config.lua'

dependency 'xsound'
