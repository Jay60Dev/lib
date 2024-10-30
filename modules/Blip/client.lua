AddStore("BLIPS", function(blip)
    if DoesBlipExist(blip) then
        RemoveBlip(blip)
    end
end)

Lib.AddBlip = function(data)

    local resource = GetInvokingResource()

    local blip = AddBlipForCoord(data.coords.x, data.coords.y, data.coords.z)

    SetBlipSprite(blip, data.sprite or 1)
    SetBlipDisplay(blip, data.display or 4)
    SetBlipScale(blip, data.scale or 0.8)
    SetBlipColour(blip, data.color or 0)
    SetBlipAsShortRange(blip, data.shortRange)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(data.label or "Blip")
    EndTextCommandSetBlipName(blip)

    AddToStore("BLIPS", resource, blip)
end

Lib.DeleteBlip = function(blip)
    if DoesBlipExist(blip) then
        RemoveBlip(blip)
    end
end