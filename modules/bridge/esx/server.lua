--[[------------------------------------------------------
----       For Support - discord.gg/threeamigos       ----
---- Do not edit if you do not know what you're doing ----
--]]------------------------------------------------------

local bridge = {}
local ESX = exports["es_extended"]:getSharedObject()

---@param groups string|table
---@return boolean|table
function bridge.getGroups(groups)
    if not groups then return false end

    if type(groups) == "table" then
        restricted = {}
        for _, group in pairs(groups) do
            if xPlayer.getGroup() ~= group then return false end
            
            table.insert(restricted, group)
        end
    
        return restricted
    end
    
    if xPlayer.getGroup() ~= groups then return false end

    return xPlayer.getGroup()
end

---@param source integer
---@param description string
---@param type string
---@param duration integer
function bridge.notify(source, description, type, duration)
    TriggerClientEvent('esx:showNotification', source, description)
end

return bridge