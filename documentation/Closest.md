# Closest
---
<details><summary markdown="span">
Closest.Player</summary>

---

#### Get the closest player

##### `Client`
##### Lib.Closest.Player(coords, maxDistance?, includePlayer?)

#### Parameters
- **coords**: vector3 - The coords to compare
- **maxDistance?**: number - The max distance
- **includePlayer?**: boolean - Include the current player
#### Return
- **return**: number, number, number, vector3 - The source, the player id, the player ped, the player coords
#### Example
```lua
local source, id, ped, coords = Client.Closest.Player(vector3(567.89, 456.78, 345.67), 10, false)

```

---
</details>

