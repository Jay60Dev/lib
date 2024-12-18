# Coordinates
---
<details><summary markdown="span">
GetEntityCoords</summary>

---

#### Get the coordinates from an entity as vector4, including heading.

##### `Client`
##### Lib.GetEntityCoords(entity)

#### Parameters
- **entity**: number - The entity to get the coordinates from
#### Return
- **return**: vector4 coordinates - The coordinates of the entity
#### Example
```lua
local coords = Client.GetEntityCoords(Cache.ped)

```

---
</details>

<details><summary markdown="span">
GetOffset</summary>

---

#### Get the offset from an entity

##### `Client`
##### Lib.GetOffset(coords, offset)

#### Parameters
- **coords**: vector4 | vector4 - The coordinates to get the offset from
- **offset**: vector3 - The offset to get from the coordinates
#### Return
- **return**: vector4 coordinates - The coordinates of the entity
#### Example
```lua
local coords = Client.GetOffset(Cache.ped, vector3(1.5, 2.5, 3.5))

```

---
</details>

<details><summary markdown="span">
GetCoordsFromIdEntityOrCoords</summary>

---

#### Get the vector 3 coords of player id or entity handle

##### `Server`
##### Lib.GetCoordsFromIdEntityOrCoords(idEntityOrCoords)

#### Parameters
- **idEntityOrCoords**: number | vector3 | vector4 - The player id or entity handle or coords
#### Return
- **return**: vector3 - The coords of the player id or entity handle

---
</details>

<details><summary markdown="span">
GetEntityCoords</summary>

---

#### Get the vector4 coords of entity handle

##### `Server`
##### Lib.GetEntityCoords(entity)

#### Parameters
- **entity**: number | vector3 | vector4 - The entity handle
#### Return
- **return**: vector3 - The coordinates of the entity

---
</details>

<details><summary markdown="span">
GetOffset</summary>

---

#### Get the offset from an entity

##### `Server`
##### Lib.GetOffset(coords, offset)

#### Parameters
- **coords**: vector3 | vector4 - The coordinates to get the offset from
- **offset**: vector3 - The offset to get from the coordinates
#### Return
- **return**: vector4 - The coordinates of the entity

---
</details>

<details><summary markdown="span">
Distance</summary>

---

#### Function to get the disctance between 2 coords. If a number is passed, we will assume this is an ID or an entity. We will then get the coords of the entity. ID only works on server.

##### `Shared`
##### Lib.Distance(coords1, coords2)

#### Parameters
- **coords1**: vector3 | vector4 | number - The first coords / entity / id
- **coords2**: vector3 | vector4 | number - The second coords / entity / id
#### Return
- **return**: number? distance - The distance between the 2 coords

---
</details>

