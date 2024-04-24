--[[------------------------------------------------------
----       For Support - discord.gg/threeamigos       ----
---- Do not edit if you do not know what you"re doing ----
--]]------------------------------------------------------

lua54 "yes"
game "gta5"
fx_version "cerulean"
use_experimental_fxv2_oal "yes"

name "TAM_FireSigns"
author "ThreeAmigosModding"
description "Fire Sign Resource"
version "1.0.0"

client_debug_mode "false"
server_debug_mode "false"
experimental_features_enabled "0"

files {
    "data/*",
    "modules/**/client.lua",
    "locales/*.json",
    "stream/*.ytyp"
}

data_file "DLC_ITYP_REQUEST" "stream/tam_firesigns.ytyp"

shared_scripts {
   "@ox_lib/init.lua",
   "shared/main.lua"
}

client_scripts {
    "client/main.lua"
}

server_scripts {
    "server/main.lua"
}

escrow_ignore {
    "data/*.lua",
    "locales/*",
    "modules/bridge/**/*.lua"
}