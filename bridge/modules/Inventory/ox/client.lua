if not IsStarted("Inventory", "ox_inventory") then return end

local inventory = exports.ox_inventory

Lib.Inventory = {
    HasItem = function(item, amount, metadata)
        amount = amount or 1
        local count = inventory:GetItemCount(item, metadata)
        return count >= amount
    end,

    ItemCount = function(item, metadata)
        return inventory:GetItemCount(item, metadata)
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

    GetPlayerInventoryWeight = function()
        local inv = inventory:GetPlayerItems() or {}
        local totalWeight = 0

        for i = 1, #inv do
            totalWeight = totalWeight + (Lib.Inventory.GetWeight(inv[i].name) * inv[i].count)
        end

        return totalWeight
    end

}