# Library Documentation

## Importing the Library
To use this library, add the following line at the top of your resource’s `fxmanifest.lua`:

```lua
shared_script "@lib/init.lua"
```

## Global Variables
Upon importing, you gain access to two global objects: **Lib** and **Cache**.

- **Lib**: Contains various utility functions.
- **Cache**: Provides quick access to frequently used player-related data.

## Lib
<details>
<summary>
Audio Functions
</summary>
The `Lib.Audio` functions handle .ogg file playback. These are **client-side only**.

- **Play**: Plays an audio file with optional configurations.

  ```lua
  Lib.Audio.Play(file: string, options?: table)
  ```
  - `file`: Name of the .ogg file to play.
  - `options` (optional): Settings for audio playback.
    - `volume?: number` - Volume level (1 to 100, default: 100).
    - `onEnd?: table` - Optional configuration to play another audio file after the current one ends.
      - `file: string` - Required if using `onEnd`.
      - `volume?: number` - Volume level for the subsequent file.

- **Pause**: Pauses playback of the specified audio file.
  ```lua
  Lib.Audio.Pause(file: string)
  ```

- **Stop**: Stops playback of the specified audio file.
  ```lua
  Lib.Audio.Stop(file: string)
  ```

- **StopAll**: Stops playback of all audio files.
  ```lua
  Lib.Audio.StopAll()
  ```
</details>

<details>
<summary>
Blip Functions
</summary>

The `Lib.Blip` functions manage map blips and are **client-side only**.

- **AddBlip**: Creates a new blip on the map.
  ```lua
  Lib.AddBlip(data: table)
  ```
  - `data`: Configuration options for the blip.
    - `coords: vector3` - Coordinates for the blip.
    - `label?: string` - Label displayed on the map (default: "").
    - `sprite?: number` - Blip style (default: 1).
    - `scale?: number` - Size of the blip (default: 0.8).
    - `color?: number` - Color of the blip (default: 0).
    - `shortRange?: boolean` - Display only when nearby (default: true).

- **DeleteBlip**: Removes an existing blip.
  ```lua
  Lib.DeleteBlip(blip: number)
  ```
</details>
<details>
<summary>
Cache
</summary>

The `Cache` object provides frequently accessed data for the player. These values are **client-side only**.

- **Cache.ped**: `number` - The player's ped ID.
- **Cache.weapon**: `number` - The currently equipped weapon.
- **Cache.vehicle**: `number` - The current vehicle ID, if in a vehicle.
- **Cache.seat**: `number` - The seat position within the vehicle.
- **Cache.coords**: `vector3` - The player’s coordinates.
- **Cache.source**: `number` - The player's source ID.

You can add change handlers to monitor changes to any of these values:

```lua
Lib.CacheChange("weapon", function(weapon: number, oldWeapon: number)
    print(("Weapon changed from: %s to %s"):format(oldWeapon, weapon))
end)
```
</details>
<details>
<summary>
Callbacks
</summary>

`Lib` provides both client and server callbacks.

#### Client Callbacks
- **RegisterCallback**: Registers a callback for server-to-client communication.
  ```lua
  Lib.RegisterCallback(name: string, function(parameter1: any, ...): any)
  ```

- **Callback**: Triggers a callback to get data from the server.
  ```lua
  local result = Lib.Callback(name: string, ...)
  ```

#### Server Callbacks
- **RegisterCallback**: Registers a callback for client-to-server communication.
  ```lua
  Lib.RegisterCallback(name: string, function(source: number, parameter1: any, ...): any)
  ```

- **Callback**: Triggers a callback to get data from the client.
  ```lua
  local result = Lib.Callback(name: string, id: number, ...)
  ```
</details>
<details>
<summary>
Commands
</summary>

Commands can be registered on both the client and server.

```lua
Lib.Command(commandName: string, function(source: number, args: table), config?: table, adminOnly?: boolean, hideSuggestions?: boolean)
```

- `commandName`: The name of the command (e.g., `/commandName`).
- `config?`: Optional configuration with the following properties:
  - `help?: string` - Help text for the command.
  - `params?: table` - Additional parameters.
- `adminOnly?`: Set to `true` to restrict to admin users.
- `hideSuggestions?`: Set to `true` to prevent suggestions in chat.

</details>
<details>
<summary>
Coordinates Functions
</summary>

#### GetEntityCoords
Retrieves the coordinates of an entity, either as a specified entity reference or as `vector3`/`vector4` coordinates.
```lua
Lib.GetEntityCoords(entity: vector3 | vector4 | entity): vector4
```

- `entity`: The entity whose coordinates are to be retrieved. Can be:
  - `vector3`: A vector representing 3D coordinates.
  - `vector4`: A vector representing 4D coordinates, including heading.
  - `entity`: An entity reference whose coordinates will be retrieved.

- **Returns**: A `vector4` containing the coordinates of the entity. If the entity does not exist, it returns `vector4(0, 0, 0, 0)`.

#### GetOffset
Calculates the offset coordinates from a given base position based on an offset vector.
```lua
Lib.GetOffset(coords: vector4, offset: vector3): vector4
```
- `coords`: The base coordinates from which to calculate the offset, specified as a `vector4`.
- `offset`: The offset to apply, specified as a `vector3`. This represents how far to move from the original position in the X and Y axes.

- **Returns**: A `vector4` containing the new coordinates after applying the offset.
### Database Functions (Server Only)

</details>
<details>
<summary>
Database
</summary>

The `Lib.Database` module provides helper functions for interacting with the database.

#### Insert
Inserts data into a specified database table.

```lua
Lib.Database.Insert(databaseTable: string, columnValues: table<string, any>): number | nil
```

- `databaseTable`: The name of the database table to insert data into.
- `columnValues`: A table of column names and values to insert.

- **Returns**: The result of the insert operation (number) or `nil` if there’s an error. If an error occurs, it will be printed to the console.

#### Update
Updates data in a specified database table based on conditions.

```lua
Lib.Database.Update(databaseTable: string, columnValues: table<string, any>, where: table<string, any>): number | nil
```

- `databaseTable`: The name of the database table to update.
- `columnValues`: A table of column names and new values to set.
- `where`: A table of column names and values to match for the `WHERE` clause.

- **Returns**: The result of the update operation (number) or `nil` if there’s an error. If an error occurs, it will be printed to the console.
</details>
<details>
<summary>
Health and Armour Functions
</summary>

The `Lib` module provides functions to manage health and armor values for entities. All functions return a boolean indicating success and may return an error message if conditions are not met. These functions can be used both on the client and server. On the server, use the player’s ID in place of the `entity`.

#### RemoveHealth
Removes a specified amount of health from an entity (or player ID on server).

```lua
Lib.RemoveHealth(entity: number, amount: number): boolean, string | nil
```

- `entity`: The ID of the entity or player ID from which to remove health.
- `amount`: The amount of health to remove.

- **Returns**: 
  - `true` if successful.
  - `false`, `"Entity must be a ped"` if the entity is not a ped.
  - `false`, `"Amount of health to remove, must be a number"` if `amount` is not a number.

#### AddHealth
Adds a specified amount of health to an entity (or player ID on server).

```lua
Lib.AddHealth(entity: number, amount: number): boolean, string | nil
```

- `entity`: The ID of the entity or player ID to which health will be added.
- `amount`: The amount of health to add.

- **Returns**:
  - `true` if successful.
  - `false`, `"Entity must be a ped"` if the entity is not a ped.
  - `false`, `"Amount of health to add, must be a number"` if `amount` is not a number.

#### SetHealth
Sets the health of an entity (or player ID on server) to a specified amount.

```lua
Lib.SetHealth(entity: number, amount: number): boolean, string | nil
```

- `entity`: The ID of the entity or player ID whose health will be set.
- `amount`: The health value to set.

- **Returns**:
  - `true` if successful.
  - `false`, `"Entity must be a ped"` if the entity is not a ped.
  - `false`, `"Amount of health to set, must be a number"` if `amount` is not a number.

#### AddArmour
Adds a specified amount of armor to an entity (or player ID on server).

```lua
Lib.AddArmour(entity: number, amount: number): boolean, string | nil
```

- `entity`: The ID of the entity or player ID to which armor will be added.
- `amount`: The amount of armor to add.

- **Returns**:
  - `true` if successful.
  - `false`, `"Entity must be a ped"` if the entity is not a ped.
  - `false`, `"Amount of armour to add, must be a number"` if `amount` is not a number.

#### RemoveArmour
Removes a specified amount of armor from an entity (or player ID on server).

```lua
Lib.RemoveArmour(entity: number, amount: number): boolean, string | nil
```

- `entity`: The ID of the entity or player ID from which to remove armor.
- `amount`: The amount of armor to remove.

- **Returns**:
  - `true` if successful.
  - `false`, `"Entity must be a ped"` if the entity is not a ped.
  - `false`, `"Amount of armour to remove, must be a number"` if `amount` is not a number.

#### SetArmour
Sets the armor of an entity (or player ID on server) to a specified amount.

```lua
Lib.SetArmour(entity: number, amount: number): boolean, string | nil
```

- `entity`: The ID of the entity or player ID whose armor will be set.
- `amount`: The armor value to set.

- **Returns**:
  - `true` if successful.
  - `false`, `"Entity must be a ped"` if the entity is not a ped.
  - `false`, `"Amount of armour to set, must be a number"` if `amount` is not a number.

</details>
<details>
<summary>
Loop
</summary>

`Lib.Loop` provides a way to repeatedly execute a callback function with optional timing and stopping conditions. This function can run either in a separate thread or in the current execution context.
Available on both client and server

```lua
Lib.Loop(cb: function, options?: table, ...: any): nil
```

- `cb`: The callback function to execute in the loop.
- `options` (optional): A table that can contain the following optional properties:
  - `timer`: *(number)* - Time (in milliseconds) to wait between each loop iteration. Defaults to `0`.
  - `timeout`: *(number)* - Maximum time (in milliseconds) after which the loop will terminate. Defaults to `0`, which means no timeout.
  - `condition`: *(function)* - A function returning a boolean. If this function returns `true`, the loop will stop.
  - `thread`: *(boolean)* - If `true`, the loop runs in a separate thread using `Citizen.CreateThread`; otherwise, it runs in the current context.

- **Additional Arguments (`...`)**: Arguments to be passed to the callback `cb`.

#### Example

```lua
local options = {
    timer = 500, -- Wait 500ms between each call
    timeout = 5000, -- Stop the loop after 5 seconds
    condition = function()
        return IsPedInVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId(), false))
    end,
    thread = true -- Run in a separate thread
}

Lib.Loop(function()
    print("Looping...")
end, options)
```

In this example:
- The loop prints `"Looping..."` every 500 milliseconds.
- It will stop if the player enters a vehicle or after 5 seconds, whichever comes first.
- The loop runs in a separate thread due to `thread = true`.

</details>
<details>
<summary>
Player Events
</summary>

The `Lib` library provides two key functions to handle player state events: `Lib.OnPlayerLoaded` and `Lib.OnPlayerUnloaded`. These allow developers to register callbacks that trigger when a player is loaded or unloaded, with a built-in cooldown to prevent multiple triggers within a short period.


#### Functions

```lua
Lib.OnPlayerLoaded(func: function): nil
Lib.OnPlayerUnloaded(func: function): nil
```

- `func`: The callback function to execute when the specified player state event occurs. The callback receives `id` (the player's ID) as a parameter.

#### Example

To perform actions when a player is loaded or unloaded, register the callbacks as follows:

```lua
-- Register a callback for when a player is loaded
Lib.OnPlayerLoaded(function(id)
    print("Player Loaded: " .. id)
end)

-- Register a callback for when a player is unloaded
Lib.OnPlayerUnloaded(function(id)
    print("Player Unloaded: " .. id)
end)
```

#### Notes
- **Cooldown**: There is a 5-second cooldown for each event type (`PLAYERLOADED` and `PLAYERUNLOADED`) to avoid rapid, duplicate triggers.
- **Server & Client**: These functions are available on both the client and server sides, depending on where they are registered.

With this setup, your code can now reliably respond to player load and unload events without worrying about excessive triggers.
</details>
<details>
<summary>
Power Buildup
</summary>

The `Lib.PowerBuildup` function allows the player to hold down a specified control key to build up a "power" value, calculated by how long the key is held. The function displays the current buildup and returns the final power when the key is released. This function can be used for actions like charging attacks or determining intensity based on hold duration.

```lua
Lib.PowerBuildup(key: number, min?: number, max?: number): number
```

- **key**: The control key (ID) to trigger the power buildup.
- **min** _(optional)_: Minimum value for the power buildup, in seconds. If specified, the returned power will be clamped to this minimum.
- **max** _(optional)_: Maximum value for the power buildup, in seconds. If specified, the returned power will be clamped to this maximum.

#### Example Usage

```lua
local key = 51 -- The 'E' key
local minPower = 1   -- Minimum 1 second
local maxPower = 5   -- Maximum 5 seconds

local powerDuration = Lib.PowerBuildup(key, minPower, maxPower)
print("Power buildup duration:", powerDuration)
```

#### Function Behavior

1. **Initialization**: 
   - Starts when the specified key is pressed.
   - If there’s an ongoing power buildup, it resolves and stops that buildup before starting a new one.

2. **Power Calculation**: 
   - While the key is held, the time since the initial press is displayed.
   - When the key is released, the buildup time in milliseconds is calculated.
   
3. **Clamping**: 
   - If `min` or `max` values are specified, the final power value is clamped within these limits.
   - The result is returned in milliseconds.

#### Notes
- **Text Display**: The `Lib.DrawText` function is used to display the buildup status.
</details>
<details>
<summary>
Print Function
</summary>

The `Lib.Print` function is designed to print variables, handling both standard values and tables gracefully. It converts functions within tables to a string representation for clearer logging and outputs the results in a structured format.

```lua
Lib.Print(...: any)
```

- **...**: A variable number of arguments of any type to be printed.

#### Example Usage

```lua
local exampleTable = {
    name = "Test",
    value = 42,
    callback = function() print("Hello!") end,
    nestedTable = {
        key = "Nested Value",
        action = function() print("Nested Function") end
    }
}

Lib.Print("Logging values:", exampleTable)
```

#### Function Behavior

1. **Function Conversion**: 
   - If a function is encountered within a table, it is converted to the string "**Function**".
   
2. **Table Handling**: 
   - When a table is passed, the function recursively converts any nested tables or functions to ensure a consistent output format.

3. **JSON Encoding**: 
   - For tables, it uses `json.encode` to convert them into a JSON string for better readability, with indentation and sorted keys for structure.

4. **Output**: 
   - Prints all processed values to the console, ensuring that each value is human-readable.

</details>
<details>
<summary>
Random Generation
</summary>

The `Lib.Random` module provides utility functions for generating random values, including numbers, letters, and strings based on specific patterns. This can be useful for various gameplay mechanics, such as random loot drops, name generation, and more.

#### Functions

```lua
Lib.Random.Number(min: number, max?: number): number
```

- **min**: The minimum value (inclusive) for the random number generation.
- **max** _(optional)_: The maximum value (inclusive) for the random number generation. If `max` is not provided, it generates a number from `1` to `min`.

#### Example Usage

```lua
local randomNumber = Lib.Random.Number(1, 100) -- Generates a random number between 1 and 100
print("Random Number:", randomNumber)
```

---

```lua
Lib.Random.Letter(): string
```

- **Returns**: A random uppercase letter (A-Z).

#### Example Usage

```lua
local randomLetter = Lib.Random.Letter()
print("Random Letter:", randomLetter)
```

---

```lua
Lib.Random.Chance(percent: number): boolean
```

- **percent**: The percentage chance (0-100) for the function to return `true`.

#### Example Usage

```lua
if Lib.Random.Chance(50) then
    print("Event occurred!")
else
    print("Event did not occur.")
end
```

---

```lua
Lib.Random.String(pattern: string, length?: number): string
```

- **pattern**: A string pattern to dictate the structure of the generated string. The following characters are used:
  - `0`: Generates a random digit (0-9).
  - `a`: Generates a random lowercase letter (a-z).
  - `A`: Generates a random uppercase letter (A-Z).
  - `.`: Generates a random alphanumeric character (either a letter or a digit).
- **length** _(optional)_: The desired length of the output string. If not specified, it is determined by the pattern.

#### Example Usage

```lua
local randomString = Lib.Random.String("A0a.0", 5)
print("Random String:", randomString)
```

#### Function Behavior

1. **Number Generation**: 
   - Generates a random number between the specified `min` and `max` values.
  
2. **Letter Generation**: 
   - Returns a random uppercase letter from A to Z.

3. **Chance Calculation**: 
   - Returns `true` or `false` based on the specified percentage chance.

4. **String Generation**: 
   - Constructs a string based on the given pattern and length, using the defined character types for generation.
   </details>
<details>
<summary>
Spawn Object
</summary>

The `Lib.SpawnObject` function allows developers to create and manage game objects within the environment. It provides the ability to specify model, coordinates, and various properties related to the spawned object.

#### Function Signature

```lua
Lib.SpawnObject(data: SpawnObjectProps): entity
```

#### Parameters

- **data**: An object of type `SpawnObjectProps` containing the following fields:
  - `model` (string): The model name of the object to spawn.
  - `coords` (vector3 | vector4): The coordinates where the object will be spawned. This can include a fourth component (w) for rotation.
  - `networked` _(optional)_: (boolean) If true, the object will be networked for multiplayer, allowing it to be seen by other players.
  - `freeze` _(optional)_: (boolean) If true, the spawned object will be frozen in place and not affected by physics.

#### Example Usage

```lua
local objectData = {
    model = "prop_barrel_01a", -- Example model name
    coords = vector3(100.0, 200.0, 300.0), -- Spawn coordinates
    networked = true, -- Networking option
    freeze = false -- Do not freeze the object
}

local spawnedObject = Lib.SpawnObject(objectData)
print("Spawned Object:", spawnedObject)
```

#### Function Behavior

1. **Validation**: 
   - The function first asserts the validity of the provided entity data using `Lib.assertEntityData`.

2. **Model Loading**: 
   - The specified model is loaded using `Lib.LoadModel`.

3. **Object Creation**: 
   - An object is created at the specified coordinates using the `CreateObject` function.

4. **Entity Management**: 
   - The spawned object is stored using `AddToStore` for future reference.

5. **Model Cleanup**: 
   - The model is marked as no longer needed to free up resources.

6. **Position Freezing**: 
   - If the `freeze` parameter is specified, the object's position is frozen using `FreezeEntityPosition`.

7. **Targeting**: 
   - If `data.targets` is provided and `Lib.Target.AddEntity` is available, it adds targeting capabilities to the spawned object.
</details>
