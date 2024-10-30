local CacheConfig = {
    ped = {
        func = PlayerPedId,
        interval = 250,
    },
    veh = {
        func = function() return GetVehiclePedIsIn(PlayerPedId(), false) end,
        interval = 500,
    },
    coords = {
        func = function()
           local ped = PlayerPedId()
           local coords = GetEntityCoords(ped)
           return vector4(coords.x, coords.y, coords.z, GetEntityHeading(ped))
        end,
        interval = 250,
    },
    seat = {
        func = function()
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if not vehicle or vehicle == 0 then return false end
            for i = -1, GetVehicleMaxNumberOfPassengers(vehicle) - 1 do
                if GetPedInVehicleSeat(vehicle, i) == PlayerPedId() then
                    return i
                end
            end
            return false
        end,
        interval = 500,
    },
    source = {
        func = function()
            return GetPlayerServerId(PlayerId())
        end,
        interval = 1000,
    },
    weapon = {
        func = function()
            local weap = GetSelectedPedWeapon(PlayerPedId())
            if weap == 0 or weap == nil or weap == -1569615261 then
                weap = false
            end
            return weap
        end,
        interval = 240,
    },
}

AddStore("CACHE", function() end)

Lib.Cache = function()
    local cache = {}
    for key, value in pairs(CacheConfig) do
        cache[key] = value.value
    end
    return cache
end
Lib.CacheChange = function(key, cb)
    local resource = GetInvokingResource()
    AddToStore("CACHE", resource, {key = key, cb = cb})
end

local UpdateCache = function(key, value, oldValue)
    TriggerEvent("lib:cache:update", key, value, oldValue)
    for _, data in pairs(STORE.CACHE) do
        for i = 1, #data do
            local params = data[i]
            if params.key == key then
                params.cb(value, oldValue)
            end
        end
    end
end

local WaitInterval = 50

-- Ensure the interval is a multiple of WaitInterval
for key, value in pairs(CacheConfig) do
    CacheConfig[key].interval = math.ceil(value.interval / WaitInterval) * WaitInterval
end

CreateThread(function()
    while true do
        for key, value in pairs(CacheConfig) do
            -- set a variable to countdown the interval
            if not value.next then CacheConfig[key].next = value.interval end
            
            -- subtract WaitInterval from the countdown ad
            CacheConfig[key].next = CacheConfig[key].next - WaitInterval
            
            -- if the countdown is less than or equal to 0, update the value and reset the countdown
            if CacheConfig[key].next <= 0 then
                CacheConfig[key].next = value.interval
                local currentValue = CacheConfig[key].value
                CacheConfig[key].value = value.func()

                -- if the value has changed, trigger an event
                if currentValue ~= CacheConfig[key].value then
                    UpdateCache(key, CacheConfig[key].value, currentValue)
                end
            end
        end
        Wait(WaitInterval)
    end
end)



-- CreateThread(function()
--     while true do
--         Wait(1000)
--         print("here")
--         for key, value in pairs(CacheConfig) do
--             print(key, value.value)
--         end
--     end
-- end)