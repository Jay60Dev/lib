if not IsStarted("Inventory", "ox_inventory") then return end

local inventory = exports.ox_inventory

Lib.Inventory = {
    HasItem = function(id, item, amount, metadata)
        amount = amount or 1
        local count = inventory:GetItemCount(id, item, metadata)
        return count >= amount
    end,

    ItemCount = function(id, item, metadata)
        return inventory:GetItemCount(id, item, metadata)
    end,

    AddItem = function(id, item, amount, metadata, slot)
        amount = amount or 1
        inventory:AddItem(id, item, amount, metadata, slot)
    end,

    RemoveItem = function(id, item, amount, metadata)
        amount = amount or 1
        inventory:RemoveItem(id, item, amount, metadata)
    end,

    GetLabel = function(itemName)
        local item = inventory:Items(itemName)
        if item then return item.label end
        return itemName
    end,

    GetWeight = function(items)
        if type(items) == "string" then
            items = {items}
        end

        local weight = 0

        for i = 1, #items do
            local item = inventory:Items(items[i])
            if item then
                weight = weight + item.weight
            end
        end

        return weight
    end,

    GetInventoryWeight = function(id)
        local inv = inventory:GetInventoryItems(id) or {}
        local totalWeight = 0

        for i = 1, #inv do
            totalWeight = totalWeight + (Lib.Inventory.GetWeight(inv[i].name) * inv[i].count)
        end

        return totalWeight
    end,

    GetPlayerInventoryWeight = function(id) return Lib.Inventory.GetInventoryWeight(id) end

}