# Blip
---
### AddBlip
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


---
### DeleteBlip
#### Deletes a blip from the map.

##### `Client`
##### Lib.DeleteBlip(blip)

#### Parameters
- **blip**: number - The blip handle


---
