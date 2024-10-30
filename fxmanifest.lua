fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Jay60'
version '1.0.0'

shared_script "shared/init.lua"

client_scripts {
    "client/init.lua",
    "client/cache.lua",
    "modules/**/client.lua",
    "client/finish.lua",
}

server_scripts {
    "server/init.lua",
    "modules/**/server.lua",
    "server/finish.lua",
}

files {
    "init.lua",
}