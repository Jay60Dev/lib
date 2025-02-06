Config = {

    -- used for locales module.
    -- false for attempt to auto detect. Defaults to = "en"
    Lang = false,

    -- set to true to enable debugging where added. You can add: setr "lib:DevelopmentMode" "true" in your server.cfg to enable this also.
    DevelopmentMode = false,
    
    -- Show the resources that are being used at startup in the server console.
    ShowResourcesAtStartup = false,

    -- Show the resources that are missing at startup in the server console. Only works if ShowResourcesAtStartup is set to false.
    ShowMissingResourcesAtStartup = false,

    -- Progress options may not work with all progress bars. Certainly works with ox_lib.
    Progress = {
        Circle = true, -- Use the circle progress bar instead of the default bar.
        ForcePosition = "bottom", -- false, "middle", "bottom"
    },

    -- if players inventory is full, drop items on the ground.
    DropItemsWhenInventoryFull = {
        enabled = true, -- set to false to disable.
        model = "prop_paper_bag_01", -- model to use when dropping items.
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

    --[[ 
    example: 
    to override the Notify module, to make sure it uses ox_lib instead of qb-core, use:
    
        Notify = "ox_lib",

    ]]
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
        DrawText = false,
        SkillCheck = false,
    },

    -- Only use this if you have renamed any resources. Follow this format.
    -- KEY: Your resource name
    -- VALUE: The original resource name.
    RenamedResources = {
        ["my_target"] = "ox_target",
    },

}