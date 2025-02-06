# Lib
## Install

The lib is a drag and drop resource. Simply add the lib folder to your resources folder.
You may need to force the auto detection to your script name for a particular module.
This can be done in the config.lua file.

Add lib to your server.cfg file. Ensure this is loaded before any resources that require it, and **after** your framework (<example>qb-core) and after ox_lib if it is installed.</example>
For some frameworks, the `bridge` needs to import the core object. This is why it must be after the framework. 

## Usage
To utilise the lib, please add the following to your resources fxmanifest.lua (Ideally at the top):
```lua
shared_script "@lib/init.lua"
```
This will import the init file, giving you access to two new global variables.
- **Lib**  - provides all the lib functions.
- **Cache** - provides quick access to cached values.

Please note: Importing the lib this way, due to the code structure, adds **minimal** memory usage to your resource.
Lib has been designed to be performant and optimised to the best of my knowledge.

Lib is an empty table, with a metatable to handle indexing and provide functionality.
Cache is a small object, with a small amount of data. Although regularly updated.

lib resource itself will typically run around 0.01ms. This is due to the cache loop.
This **minor** CPU usage, provides alot of benefit to overall performance, by utilising Cache.

## Docs
Documentation is provided in markdown in the documentation folder.
Using github with allow easy viewing of the markdown files.

## Supported Bridge Resources
**DrawText**: `jg-textui` `ox_lib` `qb-core`

**Framework**: `es_extended` `qb-core` `qbx_core`

**Fuel**: `cdn-fuel` `LegacyFuel` `ox_fuel` `ps-fuel` `Renewed-Fuel` `ti_fuel` `x-fuel`

**Input**: `ox_lib` `qb-input`

**Inventory**: `ox_inventory` `qb-inventory`

**Keys**: `MrNewbVehicleKeys` `qb-vehiclekeys` `qbx_vehiclekeys` `Renewed-VehicleKeys` `wasabi_carlock`

**Menu**: `ox_lib` `qb-menu`

**Notify**: `FL-Notify` `k5_notify` `okokNotify` `ox_lib` `ps-ui` `qb-core` `qbx_core` `swe-notify` `vms_notify` `zr-notify`

**Progress**: `ox_lib` `progressbar`

**Revive**: `ars_ambulancejob` `esx_ambulancejob` `qb-ambulancejob` `qbx_medical` `wasabi_ambulance`

**SkillCheck**: `ox_lib` `ps-ui` `qb-lockpick`

**Target**: `ox_target` `qb-target`

**Zones**: `ox_lib` `PolyZone`


