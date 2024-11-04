Config = {

    Commands = {
        citizenid = { enabled = true},
        routingbucket = { enabled = true },
        resetbucket = { enabled = true, permission = "admin" },
        fixnui = { enabled = true},
    },

    --------------------------------------------------------------------------
    ---                   BRIDGE CONFIGURATION SETTINGS                    ---
    --------------------------------------------------------------------------

    -- If you want to override the auto check for a resource, add it here.
    -- This will ensure that the resource is always loaded for the specified resource type.
    -- set to false to use the auto check.
    ForceResource = {
        Framework = false,
        Inventory = false,
        Target = false,
        Notify = false,
        Menu = false,
        Input = false,
        Keys = false,
        Zones = false,
    },

    -- Only use this if you have renamed any resources. Follow this format.
    -- KEY: Your resource name
    -- VALUE: The original resource name.
    RenamedResources = {
        ["my_target"] = "ox_target",
    },

}