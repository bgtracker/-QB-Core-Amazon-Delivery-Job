fx_version 'cerulean'

game 'gta5'

author 'bgtracker'

description 'Amazon Delivery Service'

version '1.0'

client_scripts{
    'client.lua',
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua'
}

shared_scripts{
    'config.lua',
}

server_scripts{
    'server.lua',
}