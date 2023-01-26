fx_version 'cerulean'
game 'gta5'
author '<Discord : Errorism#0009>'
description 'This resource is created by Errorism\'s Scripts'
lua54 'yes'

files {
	'html/index.html',
	'html/**/*',
}

ui_page 'html/index.html'


client_scripts {
	'config/ui.config.lua',
	'config/cl.config.lua',
	'client/**/*',
}

dependencies {
    '/server:6129',                -- requires at least server build 6129
    '/onesync',                    -- requires onesync to be enabled
}