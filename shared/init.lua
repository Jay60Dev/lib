Lib = {}
STORE = {}
local Handlers = {}


local ResourceStop = function(resource)
    if resource == GetCurrentResourceName() or STORE[resource] then
        for key, resourceData in pairs(STORE) do
            local cb = Handlers[key]
            for resourceName, dataList in pairs(resourceData) do
                if resourceName == resource or resource == GetCurrentResourceName() then
                    for _, params in ipairs(dataList) do
                        cb(params)
                    end
                end
                if STORE[key][resource] and resource == resourceName then
                    STORE[key][resource] = nil
                end
            end
        end
    end
end


-- local ResourceStop = function(resource)

--     if resource == GetCurrentResourceName() then
--         for key in pairs(STORE) do
--             local cb = Handlers[key]
--             for resourceName in pairs(STORE[key]) do
--                 for i=1, #STORE[key][resourceName] do
--                     local params = STORE[key][resourceName][i]
--                     cb(params)
--                 end
--             end
--         end
--     end

--     for key in pairs(STORE) do
--         local resourceData = STORE[key][resource]
--         if resourceData then
--             local cb = Handlers[key]
--             for i=1, #resourceData do
--                 local params = resourceData[i]
--                 cb(params)
--             end
--             STORE[key][resource] = nil
--         end
--     end

-- end

RegisterNetEvent('onResourceStop', ResourceStop)

AddStore = function(key, cb)
    STORE[key] = {}
    Handlers[key] = cb
end

AddToStore = function(store, resource, data)
    if not STORE[store] then return print(("STORE %s does not exist"):format(store)) end
    STORE[store][resource] = STORE[store][resource] or {}
    STORE[store][resource][#STORE[store][resource]+1] = data
end