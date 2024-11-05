Config = {

    ShowResourcesAtStartup = false, -- Show the resources that are being used at startup in the server console.
    -- Below only works if ShowResourcesAtStartup is set to false.
    ShowMissingResourcesAtStartup = true, -- Show the resources that are missing at startup in the server console.

    -- Progress options may not work with all progress bars. Certainly works with ox_lib.
    Progress = {
        Circle = true, -- Use the circle progress bar instead of the default bar.
        ForcePosition = "bottom", -- false, "middle", "bottom"
    },

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
        Progress = false,
        Fuel = false,
    },

    -- Only use this if you have renamed any resources. Follow this format.
    -- KEY: Your resource name
    -- VALUE: The original resource name.
    RenamedResources = {
        ["my_target"] = "ox_target",
    },

}