--[[------------------------------------------------------
----       For Support - discord.gg/threeamigos       ----
---- Do not edit if you do not know what you're doing ----
--]]------------------------------------------------------

local bridge = {}

---@param groups string|table
---@return boolean|table
function bridge.getGroups(groups)
    if not groups then return false end

    if type(groups) == "table" then
        local restricted = {}
        for _, group in pairs(groups) do
            table.insert(restricted, ("group.%s"):format(group))
        end
    
        return restricted
    end

    return groups
end

---@param source integer
---@param description string
---@param type string
---@param duration integer
function bridge.notify(source, description, type, duration)
    TriggerClientEvent("ox_lib:notify", source, {description = description, type = type, duration = duration or 1000})
end

return bridge