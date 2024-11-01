fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Jay60'
version '1.0.0'

server_script "@oxmysql/lib/MySQL.lua"

shared_script {
    "config.lua",
    "shared/init.lua",
}

client_scripts {
    "modules/**/shared.lua",
    "modules/**/client.lua",
    "bridge/modules/**/shared.lua",
    "bridge/modules/**/client.lua",
    "shared/finish.lua",
}

server_scripts {
    "modules/**/shared.lua",
    "modules/**/server.lua",
    "bridge/modules/**/shared.lua",
    "bridge/modules/**/server.lua",
    "shared/finish.lua",
}

files {
    "init.lua",
    "lookupTables/*.json",
}