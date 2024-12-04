# Zones
---
### Zones.Poly
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


---
### Zones.Circle
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


---
### Zones.Box
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


---
