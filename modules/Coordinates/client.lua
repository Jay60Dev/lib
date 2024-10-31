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

    -- Convert heading from degrees to radians
    local radians = math.rad(heading)

    -- Calculate final offset position using both x and y components of the offset vector
    local offsetX = offset.x * math.cos(radians) - offset.y * math.sin(radians)
    local offsetY = offset.x * math.sin(radians) + offset.y * math.cos(radians)

    -- Calculate final coordinates
    local x = base.x + offsetX
    local y = base.y + offsetY
    local z = base.z
    local w = base.w

    print(x, y, z, w)

    return vector4(x, y, z, w)
end
