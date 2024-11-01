Config = Config or {}
Lib = {}
STORE = {}
Resources = {}
local Handlers = {}

local ResourceStop = function(resource)

    if resource == GetCurrentResourceName() then
        for key in pairs(STORE) do
            local cb = Handlers[key]
            for resourceName in pairs(STORE[key]) do
                for i=1, #STORE[key][resourceName] do
                    local params = STORE[key][resourceName][i]
                    cb(params)
                end
            end
        end
    end

    for key in pairs(STORE) do
        local resourceData = STORE[key][resource]
        if resourceData then
            local cb = Handlers[key]
            for i=1, #resourceData do
                local params = resourceData[i]
                cb(params)
            end
            STORE[key][resource] = nil
        end
    end

end

RegisterNetEvent('onResourceStop', ResourceStop)

AddStore = function(key, cb)
    STORE[key] = {}
    Handlers[key] = cb
end

AddToStore = function(store, resource, data)
    if not store then print("STORE is required, got nil") return end
    if not resource then print("RESOURCE is required, got nil") return end
    if not STORE[store] then return print(("STORE %s does not exist"):format(store)) end
    STORE[store][resource] = STORE[store][resource] or {}
    STORE[store][resource][#STORE[store][resource]+1] = data
end

Lib.LookupTable = function(resourceName, jsonFilePath, value)
    local jsonFile = LoadResourceFile(resourceName, jsonFilePath)
    local jsonTable = json.decode(jsonFile)
    value = value:lower()

    local result = jsonTable[value]

    collectgarbage("collect")

    return result
end

Config.ForceResource = Config.ForceResource or {}
Config.RenamedResources = Config.RenamedResources or {}
IsStarted = function(resourceType, resource)
    -- If the resource is renamed, use the renamed resource name
    local resourceName = Config.RenamedResources[resource] or resource

    -- If the resource is forced to be a specific resource, use that resource name
    if Config.ForceResource[resourceType] then
        local isThisResource = Config.ForceResource[resourceType] == resourceName
        Resources[resourceType] = isThisResource and resourceName or Resources[resourceType]
        return isThisResource
    end

    local isStarted = GetResourceState(resourceName) == "started"

    Resources[resourceType] = isStarted and resourceName or Resources[resourceType]
    return isStarted
end