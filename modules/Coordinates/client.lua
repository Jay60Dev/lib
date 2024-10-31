Lib.GetEntityCoords = function(entity)
    local entityType = type(entity)
    if entityType == "vector3" or entityType == "vector4" then
        return vector4(entity.x, entity.y, entity.z, entity.w or 0)
    end
    if not DoesEntityExist(entity) then return vector4(0, 0, 0, 0) end
    local coords = GetEntityCoords(entity)
    return vector4(coords.x, coords.y, coords.z, GetEntityHeading(entity))
end

Lib.GetOffset = function(coords, offset)
    local base = Lib.GetEntityCoords(coords)

    local heading = base.w

    local radians = math.rad(heading)

    local offsetX = offset.x * math.cos(radians) - offset.y * math.sin(radians)
    local offsetY = offset.x * math.sin(radians) + offset.y * math.cos(radians)

    local x = base.x + offsetX
    local y = base.y + offsetY
    local z = base.z
    local w = base.w

    return vector4(x, y, z, w)
end
