# Zones
---
<details><summary markdown="span">
Zones.Poly</summary>

---

#### Add a polyzone

##### `Client`
##### Lib.Zones.Poly(data)

#### Parameters
- **data**: table - The data in the format of ox_lib
    - **points**: vector3[]
    - **thickness?**: number
    - **onEnter?**: fun(self: table)
    - **onExit?**: fun(self: table)
    - **inside?**: fun(self: table)
    - **debug?**: boolean
#### Example
```lua
Lib.Zones.Poly({
  points = {
      vector3(-876.0, -1241.0, 15.0),
      vector3(-876.0, -1245.0, 15.0),
      vector3(-875.0, -1241.0, 15.0),
      vector3(-875.0, -1245.0, 15.0),
    },
  thickness = 1.0,
  onEnter = function()
    print("Entered")
  end,
  onExit = function()
    print("Exited")
  end,
})

```

---
</details>

<details><summary markdown="span">
Zones.Circle</summary>

---

#### Add a circle zone

##### `Client`
##### Lib.Zones.Circle(data)

#### Parameters
- **data**: table - The data in the format of ox_lib
    - **coords**: vector3
    - **radius?**: number
    - **onEnter?**: fun(self: table)
    - **onExit?**: fun(self: table)
    - **inside?**: fun(self: table)
    - **debug?**: boolean
#### Example
```lua
Lib.Zones.Circle({
  coords = vector3(0.0, 0.0, 15.0),
  radius = 2.0,
  onEnter = function()
    print("Entered")
  end,
  onExit = function()
    print("Exited")
  end,
})

```

---
</details>

<details><summary markdown="span">
Zones.Box</summary>

---

#### Add a box zone

##### `Client`
##### Lib.Zones.Box(data)

#### Parameters
- **data**: table - The data in the format of ox_lib
    - **coords**: vector3
    - **size?**: vector3
    - **rotation?**: number
    - **onEnter?**: fun(self: table)
    - **onExit?**: fun(self: table)
    - **inside?**: fun(self: table)
    - **debug?**: boolean
#### Example
```lua
Lib.Zones.Box({
  coords = vector3(0.0, 0.0, 15.0),
  size = vector3(2.0, 2.0, 4.0),
  rotation = 90,
  onEnter = function()
    print("Entered")
  end,
  onExit = function()
    print("Exited")
  end,
})

```

---
</details>

