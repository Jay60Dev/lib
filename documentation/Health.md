# Health
---
### GetHealth
#### Get the health from an entity

##### `Client`
##### Lib.GetHealth(entity)

#### Parameters
- **entity**: number - The entity to get the health from
#### Return
- **return**: number | false, string? - The health of the entity


---
### GetMaxHealth
#### Get the maximum health for an entity

##### `Client`
##### Lib.GetMaxHealth(entity)

#### Parameters
- **entity**: number - The entity to get the health from
#### Return
- **return**: number | false, string? - The health of the entity


---
### GetHealthPercentage
#### Get the maximum health for an entity

##### `Client`
##### Lib.GetHealthPercentage(entity)

#### Parameters
- **entity**: number - The entity to get the health from
#### Return
- **return**: number | false, string? - The health of the entity as a percentage


---
### GetArmour
#### Get the armour from an entity

##### `Client`
##### Lib.GetArmour(entity)

#### Parameters
- **entity**: number - The entity to get the health from
#### Return
- **return**: number | false, string? - The armour of the entity


---
### RemoveHealth
#### Remove health from an entity

##### `Client`
##### Lib.RemoveHealth(entity, amount)

#### Parameters
- **entity**: number - The entity to remove the health from
- **amount**: number - The amount of health to remove
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### AddHealth
#### Add health to an entity

##### `Client`
##### Lib.AddHealth(entity, amount)

#### Parameters
- **entity**: number - The entity to add the health to
- **amount**: number - The amount of health to add
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### SetHealth
#### Set health to an entity

##### `Client`
##### Lib.SetHealth(entity, amount)

#### Parameters
- **entity**: number - The entity to set the health to
- **amount**: number - The amount of health to set
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### AddArmour
#### Remove armour from an entity

##### `Client`
##### Lib.AddArmour(entity, amount)

#### Parameters
- **entity**: number - The entity to remove the armour from
- **amount**: number - The amount of armour to remove
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### RemoveArmour
#### Remove armour from an entity

##### `Client`
##### Lib.RemoveArmour(entity, amount)

#### Parameters
- **entity**: number - The entity to remove the armour from
- **amount**: number - The amount of armour to remove
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### SetArmour
#### Set entities armour

##### `Client`
##### Lib.SetArmour(entity, amount)

#### Parameters
- **entity**: number - The entity to set the armour to
- **amount**: number - The amount of armour to set
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### GetHealth
#### Add get a players by their server id

##### `Server`
##### Lib.GetHealth(id)

#### Parameters
- **id**: number - The player server id
#### Return
- **return**: number - The health


---
### GetHealthPercentage
#### Get the health percentage of a player by their server id

##### `Server`
##### Lib.GetHealthPercentage(id)

#### Parameters
- **id**: number - The player server id
#### Return
- **return**: number - The health percentage


---
### GetMaxHealth
#### Get the maximum health of a player by their server id

##### `Server`
##### Lib.GetMaxHealth(id)

#### Parameters
- **id**: number - The player server id
#### Return
- **return**: number - The max health


---
### AddHealth
#### Add health to a player by their server id

##### `Server`
##### Lib.AddHealth(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of health to add
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### RemoveHealth
#### Remove health from a player by their server id

##### `Server`
##### Lib.RemoveHealth(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of health to remove
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### SetHealth
#### Set health to a player by their server id

##### `Server`
##### Lib.SetHealth(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of health to set
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### AddArmour
#### Add armour to a player by their server id

##### `Server`
##### Lib.AddArmour(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of armour to add
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### RemoveArmour
#### Remove armour from a player by their server id

##### `Server`
##### Lib.RemoveArmour(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of armour to remove
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
### SetArmour
#### Set armour to a player by their server id

##### `Server`
##### Lib.SetArmour(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of armour to set
#### Return
- **return**: boolean, string? - true if successful, false and error message if not


---
