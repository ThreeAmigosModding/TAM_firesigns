--[[------------------------------------------------------
----       For Support - discord.gg/threeamigos       ----
---- Do not edit if you do not know what you're doing ----
--]]------------------------------------------------------

local bridge = {}

---Get a players groups
---@param groups string|table
---@return boolean|table
function bridge.getGroups(groups)
    if not groups then return true end

    if type(groups) == "table" then
        restricted = {}
        for _, group in pairs(groups) do
            table.insert(restricted, group)
        end

        return restricted
    end

    return groups
end

---Check if a player has specified ace perm
---@param source integer
---@param groups string|boolean|string[]
---@return boolean
function bridge.isAllowed(source, groups)
    if not source then return end
    
    if groups == false then return true end

    if type(groups) == "table" then
        for _, group in pairs(groups) do
            if IsPlayerAceAllowed(source, group) then
                return true
            end
        end
    end

    return IsPlayerAceAllowed(source, groups)
end

---Notify a player
---@param source integer
---@param description string
---@param type string
---@param duration integer
function bridge.notify(source, description, type, duration)
    TriggerClientEvent("ox_lib:notify", source, {description = description, type = type, duration = duration or 1000})
end

return bridge