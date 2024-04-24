--[[------------------------------------------------------
----       For Support - discord.gg/threeamigos       ----
----       Docs - https://docs.threeamigos.shop       ----
--]]------------------------------------------------------

local config = {}

config.debug = true -- Debug, probably shouldn't touch.

-- locales are located in `locales` directory.
-- Fire Sign spawn locations are in `data/spawns.lua`

config.commands = {
    enabled = true, -- Should commands be enabled?
    changeSignCommand = "changedangerlevel", -- change the closest fire signs danger level.
    groups = "command.firesigns", -- The ace permission(s) (or job(s) if using ND Framework) that have access to the commands. Set to false to allow everyone. Accepts table or string.
    addSignCommand = "addsign", -- debug command, create a sign infront of the player.
    delSignCommand = "delsign", -- debug command, delete closest fire sign.
    delAllSignsCommand = "delallsigns", -- debug command, delete all fire signs
    copyPedPosCommand = "copypedpos", -- debug command, copy your ped position & heading
    copySignPosCommand = "copysignpos", -- debug command, copy closest sign position & heading
    commandDistance = 5 -- Distance to check for closest sign.
}

config.target = {
    enabled = true,
    resource = "ox_target", -- ox_target or custom. Set custom below.
    icon = "fas fa-fire", -- ignore if using custom, ox_target icon
    distance = 3, -- ignore if using custom, ox_target distance
    customTarget = function()
        -- put your custom target info below.

        -- included is an example for ox_target. You"ll need to change this to your own function.

        -- exports.ox_target:addModel("tam_firesign_a", {
        --     {                
        --         label = locale("targetChangeDangerLabel"),
        --         icon = config.target.icon,
        --         distance = config.target.distance,
        --         canInteract = function(entity, distance, coords, name, bone)
        --             return true
        --         end,
        --         onSelect = function(data)
        --             local input = lib.inputDialog(locale("targetChangeDangerLabel"), {
        --                 {type = "select", label = locale("level"), description = locale("targetLevel"), options = {{value = "low"}, {value = "moderate"}, {value = "high"}, {value = "veryhigh"}, {value = "extreme"}}, required = true, searchable = true, default = "low"}
        --             })
                    
        --             if not input then return end
    
        --             print(input, json.encode(input), input[1])
        --             print(data, json.encode(data))
        --             local cb = lib.callback.await("tam_fireSigns:changeDangerLevel", false, input[1])

        --             if cb then Bridge.notify(source, (locale("changedDangerLevel")):format(args.level), "success") else Bridge.notify(source, locale("failedToChangeDangerLevel"), "error") end
        --         end
        --     }
        -- })
    end,
}

return config