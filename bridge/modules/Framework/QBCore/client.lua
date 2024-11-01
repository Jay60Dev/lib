if not (IsStarted("Framework", "qb-core") or IsStarted("Framework", "qbx_core")) then return end

Core = exports["qb-core"]:GetCoreObject()

local getPlayerData = function()
    return Core.Functions.GetPlayerData()
end

Lib.Player = {
    Id = function()
        return getPlayerData().citizenid
    end,
    Identifier = function(idType)
        print("Identifiers are only available on the server.")
        return
    end,
    License = function()
        return Lib.Player.Identifier("license")
    end,

    -- METADATA
    Metadata = function(key)
        return getPlayerData().metadata[key]
    end,

    -- JOB
    Job = function()
        return getPlayerData().job.name
    end,
    JobLabel = function()
        return getPlayerData().job.label
    end,
    JobLevel = function()
        return getPlayerData().job.grade
    end,
    JobType = function()
        return getPlayerData().job.type
    end,
    Duty = function()
        return getPlayerData().job.onduty
    end,

    -- Gang
    Gang = function()
        return getPlayerData().gang.name
    end,
    GangLabel = function()
        return getPlayerData().gang.label
    end,
    GangLevel = function()
        return getPlayerData().gang.rank
    end,

    -- Money
    Money = function(moneyType)
        if not moneyType then print("Money type not provided") return end
        return getPlayerData().money[moneyType]
    end,

    -- Cash
    Cash = function()
        return Lib.Player.Money("cash")
    end,
    HasCash = function(amount)
        return Lib.Player.Cash() >= amount
    end,
    AddCash = function(amount)
        print("Adding cash is only available on the server.")
    end,
    RemoveCash = function(amount)
        print("Removing cash is only available on the server.")
    end,
    
    -- Bank
    Bank = function()
        return Lib.Player.Money("bank")
    end,
    HasBank = function(amount)
        return Lib.Player.Bank() >= amount
    end,
    AddBank = function(amount)
        print("Adding bank is only available on the server.")
    end,
    RemoveBank = function(amount)
        print("Removing bank is only available on the server.")
    end,
}