--[[------------------------------------------------------
----       For Support - discord.gg/threeamigos       ----
---- Do not edit if you do not know what you're doing ----
--]]------------------------------------------------------

local bridge = {}
local NDCore = exports["ND_Core"]

---Get a players groups
---@param groups string|table
---@return boolean|table
function bridge.getGroups(groups)
    if not groups then return false end

    if type(groups) == "table" then
        restricted = {}
        for _, group in pairs(groups) do
            table.insert(restricted, group)
        end

        return restricted
    end

    return groups
end

---Check if a player has specified job
---@param source integer
---@param groups string|boolean|string[]
---@return boolean
function bridge.isAllowed(source, groups)
    if not source or not groups then return false end
    local player = NDCore.getPlayer(source)
    local jobName = player.getJob()

    if type(groups) == "table" then
        for _, group in pairs(groups) do
            if jobName == group then
                return true
            end
        end
    end

    if jobName ~= groups then return false end

    return true
end

---@param source integer
---@param description string
---@param type string
---@param duration integer
function bridge.notify(source, description, type, duration)
    local player = NDCore:getPlayer(source)
    player.notify({description = description, type = type, duration = duration or 5000})
end

return bridge