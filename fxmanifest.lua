fx_version 'cerulean'

game 'gta5'
lua54 "yes"

author 'ButterChilly'
description 'Advance DrugtableScript For QBCore'
version '1.0.0'

client_scripts{
    'client/*.lua',
}

shared_scripts{
    '@ox_lib/init.lua',
    'config.lua',
}

server_scripts{
    'server/*.lua',
}

escrow_ignore{
    'config.lua',
}
