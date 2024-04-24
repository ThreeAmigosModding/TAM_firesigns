--[[------------------------------------------------------
----       For Support - discord.gg/threeamigos       ----
---- Do not edit if you do not know what you're doing ----
--]]------------------------------------------------------

local bridge = {}
local QBCore = exports["qb-core"]:GetCoreObject()

---@param groups string|table
---@return boolean|table
function bridge.getGroups(groups)
    if not groups then return false end

    local Player = QBCore.Functions.GetPlayer(source)

    if type(groups) == "table" then
        restricted = {}
        for _, group in pairs(groups) do
            if Player.PlayerData.Job ~= group then return false end
            
            table.insert(restricted, group)
        end
    
        return restricted
    end
    
    if Player.PlayerData.Job ~= groups then return false end

    return Player.PlayerData.Job
end

---@param source integer
---@param description string
---@param type string
---@param duration integer
function bridge.notify(source, description, type, duration)
    TriggerClientEvent('QBCore:Notify', source, description, type, duration or 5000)
end

return bridge