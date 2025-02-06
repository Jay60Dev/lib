# Blip
---
<details><summary markdown="span">
AddBlip</summary>

---

#### Adds a blip to the map with the specified data.

##### `Client`
##### Lib.AddBlip(data)

#### Parameters
- **data**: table - Options for the blip
    - **coords**: vector3
    - **sprite?**: number
    - **display?**: number
    - **scale?**: number
    - **color?**: number
    - **shortRange?**: boolean
    - **label?**: string
#### Return
- **return**: number? - Returns the blip handle if successful.
#### Example
```lua
local blip = Lib.AddBlip({
    coords = vector3(0.0, 0.0, 0.0),
    sprite = 1,
    display = 4,
    scale = 0.8,
    color = 0,
    shortRange = true,
    label = "Blip"
})

```

---
</details>

<details><summary markdown="span">
DeleteBlip</summary>

---

#### Deletes a blip from the map.

##### `Client`
##### Lib.DeleteBlip(blip)

#### Parameters
- **blip**: number - The blip handle
#### Example
```lua
Lib.DeleteBlip(blip)

```

---
</details>

