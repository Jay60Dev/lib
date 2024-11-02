if not (IsStarted("Framework", "qb-core") or IsStarted("Framework", "qbx_core")) then return end

Core = exports["qb-core"]:GetCoreObject()

local getPlayer = function(source)
    local player = Core.Functions.GetPlayer(source)
    return player or print("Player not found for id", source)
end

local getPlayerData = function(source)
    local player = getPlayer(source)
    return player.PlayerData
end

local playerFunctions = function(source)
    local player = getPlayer(source)
    return player.Functions
end

local getPlate = function(vehicle)
    if not DoesEntityExist(vehicle) then
        vehicle = NetworkGetEntityFromNetworkId(vehicle)
    end

    if not DoesEntityExist(vehicle) then return nil end

    local plateText = GetVehicleNumberPlateText(vehicle)
    return plateText:gsub('^%s*(.-)%s*$', '%1')
end

local modelsByHash = {}

for k, v in pairs(Core.Shared.Vehicles) do
    modelsByHash[tostring(v.hash)] = v.model
end
local getVehicleFromHash = function(hash)
    return modelsByHash[tostring(hash)]
end

Lib.Player = {
    CharacterId = function(source)
        return getPlayerData(source).citizenid
    end,
    Identifier = function(source, idType)
        return GetPlayerIdentifierByType(source, idType)
    end,
    License = function(source)
        return Lib.Player.Identifier(source, "license")
    end,

    -- METADATA
    Metadata = function(source, key, set)
        if set then
            playerFunctions(source).SetMetaData(key, set)
        end
        return getPlayerData(source).metadata[key]
    end,

    -- JOB
    Job = function(source, set, grade)
        if set then
            playerFunctions(source).SetJob(set, grade)
        end
        return getPlayerData(source).job.name
    end,
    JobLabel = function(source)
        return getPlayerData(source).job.label
    end,
    JobLevel = function(source)
        return getPlayerData(source).job.grade
    end,
    JobType = function(source)
        return getPlayerData(source).job.type
    end,
    Duty = function(source, set)
        if set then
            playerFunctions(source).SetDuty(set)
        end
        return getPlayerData(source).job.onduty
    end,

    -- Gang
    Gang = function(source, set, grade)
        if set then
            playerFunctions(source).SetGang(set, grade)
        end
        return getPlayerData(source).gang.name
    end,
    GangLabel = function(source)
        return getPlayerData(source).gang.label
    end,
    GangLevel = function(source)
        return getPlayerData(source).gang.rank
    end,

    -- Money
    Money = function(source, moneyType, set)
        if not moneyType then print("Money type not provided") return end
        if set then
            playerFunctions(source).SetMoney(moneyType, set)
        end
        return getPlayerData(source).money[moneyType]
    end,

    -- Cash
    Cash = function(source)
        return Lib.Player.Money(source, "cash")
    end,
    HasCash = function(source, amount)
        return Lib.Player.Cash(source) >= amount
    end,
    AddCash = function(source, amount)
        playerFunctions(source).AddMoney("cash", amount)
    end,
    RemoveCash = function(source, amount)
        playerFunctions(source).RemoveMoney("cash", amount)
    end,
    
    -- Bank
    Bank = function(source)
        return Lib.Player.Money(source, "bank")
    end,
    HasBank = function(source, amount)
        return Lib.Player.Bank(source) >= amount
    end,
    AddBank = function(source, amount)
        playerFunctions(source).AddMoney("bank", amount)
    end,
    RemoveBank = function(source, amount)
        playerFunctions(source).RemoveMoney("bank", amount)
    end,

    -- Inventory
    -- These should probably be the same for all frameworks.
    AddItem = function(source, item, amount, metadata, slot)
        return Lib.Inventory.AddItem(source, item, amount, metadata, slot)
    end,
    RemoveItem = function(source, item, amount, metadata)
        return Lib.Inventory.RemoveItem(source, item, amount, metadata)
    end,
    HasItem = function(source, item, amount, metadata)
        return Lib.Inventory.HasItem(source, item, amount, metadata)
    end,

    -- Vehicle
    IsVehicleOwned = function(vehicle)
        local plate = getPlate(vehicle)
        return MySQL.scalar.await('SELECT id FROM player_vehicles WHERE plate = ?', {
            tostring(plate)
        })
    end,
    GiveVehicleOwnership = function(source, vehicle)
        if not vehicle then
            vehicle = GetVehiclePedIsIn(GetPlayerPed(source), false)
        end

        if not vehicle or vehicle == 0 then return print("Couldnt find vehicle.") end
        -- if owned, we need to update the owner, otherwise we need to insert a new record.
        local identifier = Lib.Player.CharacterId(source)
        local plate = getPlate(vehicle)
        local hash = GetEntityModel(vehicle)

        Lib.Keys.Give(source, vehicle)

        if Lib.Player.IsVehicleOwned(vehicle) then
            return Lib.Database.Update('player_vehicles', { citizenid = identifier }, { plate = plate })
        end

        Lib.Database.Insert('player_vehicles', {
            citizenid = identifier,
            license = Lib.Player.License(source),
            vehicle = getVehicleFromHash(hash),
            hash = hash,
            mods = json.encode(props or {}),
            plate = plate,
            state = 0,
        })
    end
}

CreateThread(function()
    Wait(2000)
    Lib.Player.GiveVehicleOwnership(3)
end)