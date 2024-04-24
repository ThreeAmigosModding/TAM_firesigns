--[[------------------------------------------------------
----       For Support - discord.gg/threeamigos       ----
---- Do not edit if you do not know what you're doing ----
--]]------------------------------------------------------

local bridge = {}

---Check if a player has specified job
---@param source integer
---@param groups string|boolean|string[]
---@return boolean
function bridge.isAllowed(source, groups)
    if not source or not groups then return false end
    local player = NDCore.getPlayer()
    local jobName = player.job

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
function bridge.notify(description, type, duration)
    lib.notify({description = description, type = type, duration = duration or 5000})
end

return bridge