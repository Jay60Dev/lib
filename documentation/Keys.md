# Keys
---
### Keys.Give
#### Give keys to a vehicle

##### `Client`
##### Lib.Keys.Give(vehicle)

#### Parameters
- **vehicle**: number - The vehicle handle
#### Return
- **return**: boolean - If the keys were given


---
### Keys.Remove
#### Remove keys from a vehicle

##### `Client`
##### Lib.Keys.Remove(vehicle)

#### Parameters
- **vehicle**: number - The vehicle handle
#### Return
- **return**: boolean - If the keys were removed


---
### Keys.Has
#### Check if the player has keys to a vehicle

##### `Client`
##### Lib.Keys.Has(vehicle)

#### Parameters
- **vehicle**: number - The vehicle handle
#### Return
- **return**: boolean - If the player has keys


---
### Keys.Give
#### Give keys to a vehicle

##### `Server`
##### Lib.Keys.Give(id, vehicle)

#### Parameters
- **id**: number - The player id
- **vehicle**: number - The vehicle handle
#### Return
- **return**: boolean - If the keys were given


---
### Keys.Remove
#### Remove keys from a vehicle

##### `Server`
##### Lib.Keys.Remove(id, vehicle)

#### Parameters
- **id**: number - The player id
- **vehicle**: number - The vehicle handle
#### Return
- **return**: boolean - If the keys were removed


---
### Keys.Has
#### Check if the player has keys to a vehicle

##### `Server`
##### Lib.Keys.Has(id, vehicle)

#### Parameters
- **id**: number - The player id
- **vehicle**: number - The vehicle handle
#### Return
- **return**: boolean - If the player has keys


---
