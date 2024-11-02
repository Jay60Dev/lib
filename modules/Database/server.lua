local objectToArray = function(object)
    local formatting = {}
    local array = {}

    for key, value in pairs(object) do
        array[#array + 1] = {
            key = key,
            value = value
        }
        formatting.keys = ("%s%s%s"):format(formatting.keys or "", formatting.keys and ", " or "", key)
        formatting.values = formatting.values or {}
        formatting.values[#formatting.values + 1] = value
        local literalValue = type(value) == "number" and value or ("'%s'"):format(tostring(value))
        formatting.set = ("%s%s%s = %s"):format(formatting.set or "", formatting.set and ", " or "", key, literalValue)
        formatting.where = ("%s%s%s = %s"):format(formatting.where or "", formatting.where and " AND " or "", key, literalValue)
    end

    local placeholders = string.rep("?, ", #array, "")
    formatting.placeholders = placeholders:sub(1, #placeholders - 2)
    
    return formatting, array
end

Lib.Database = {
    Insert = function(databaseTable, columnValues)
        local formatting = objectToArray(columnValues)
        local query = ("INSERT INTO `%s` (%s) VALUES (%s)"):format(databaseTable, formatting.keys, formatting.placeholders)
        local result, error = MySQL.insert.await(query, formatting.values)
        if not result then
            print("Error inserting into database: " .. error)
        end
        return result
    end,
    Update = function(databaseTable, columnValues, where)
        local formatting = objectToArray(columnValues)
        local whereFormatting = objectToArray(where)

        local query = ("UPDATE `%s` SET %s WHERE %s"):format(databaseTable, formatting.set, whereFormatting.where)
        local result, error = MySQL.query.await(query, formatting.values)
        if not result then
            print("Error updating database: " .. error)
        end
        return result
    end,
}

-- Lib.Database.Insert("jay_lib_test", {
--     shop_id = 5,
--     shop_name = "testfirst",
--     owner = "testlast",
--     account = "test",
--     location = "on",
--     item_limitations = "test",
-- })

-- Lib.Database.Update("jay_lib_test", {
--     shop_name = "testfirstUPDATED",
--     owner = "testlastUPDATED",
-- }, {
--     shop_id = 2,
-- })

