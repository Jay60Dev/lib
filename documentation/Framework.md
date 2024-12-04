# Framework
---
### Player.CharacterId
#### Get the player's character id. Citizenid for qb/qbx and identifier for esx

##### `Client`
##### Lib.Player.CharacterId()

#### Parameters
#### Return
- **return**: number - The character id


---
### Player.License
#### Get the player's rockstar license

##### `Client`
##### Lib.Player.License()

#### Parameters
#### Return
- **return**: string - The license


---
### Player.Metadata
#### Get the player's metadata

##### `Client`
##### Lib.Player.Metadata(key)

#### Parameters
- **key**: string? - The metadata key
#### Return
- **return**: table<string, any> - The metadata


---
### Player.Job
#### Get the player's job name

##### `Client`
##### Lib.Player.Job()

#### Parameters
#### Return
- **return**: string - The job name


---
### Player.JobLabel
#### Get the player's job label

##### `Client`
##### Lib.Player.JobLabel()

#### Parameters
#### Return
- **return**: string - The job label


---
### Player.JobLevel
#### Get the player's job level

##### `Client`
##### Lib.Player.JobLevel()

#### Parameters
#### Return
- **return**: number - The job level


---
### Player.Duty
#### Get the player's job grade

##### `Client`
##### Lib.Player.Duty()

#### Parameters
#### Return
- **return**: number - The job grade


---
### Player.Gang
#### Get the player's gang name

##### `Client`
##### Lib.Player.Gang()

#### Parameters
#### Return
- **return**: string - The gang name


---
### Player.GangLabel
#### Get the player's gang label

##### `Client`
##### Lib.Player.GangLabel()

#### Parameters
#### Return
- **return**: string - The gang label


---
### Player.GangLevel
#### Get the player's gang level

##### `Client`
##### Lib.Player.GangLevel()

#### Parameters
#### Return
- **return**: number - The gang level


---
### Player.Money
#### Get the players money amount

##### `Client`
##### Lib.Player.Money(moneyType)

#### Parameters
- **moneyType**: string - The money type
#### Return
- **return**: number - The money amount


---
### Player.HasMoney
#### Check if the player has enough money

##### `Client`
##### Lib.Player.HasMoney(moneyType, amount)

#### Parameters
- **moneyType**: string - The money type
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.Cash
#### Get the player's cash

##### `Client`
##### Lib.Player.Cash()

#### Parameters
#### Return
- **return**: number - The cash amount


---
### Player.HasCash
#### Check if the player has enough cash

##### `Client`
##### Lib.Player.HasCash(amount)

#### Parameters
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.Bank
#### Get the player's bank

##### `Client`
##### Lib.Player.Bank()

#### Parameters
#### Return
- **return**: number - The bank amount


---
### Player.HasBank
#### Check if the player has enough bank

##### `Client`
##### Lib.Player.HasBank(amount)

#### Parameters
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.Identifier
#### Get the player's identifier by type

##### `Server`
##### Lib.Player.Identifier(source, idType)

#### Parameters
- **source**: number - The player's server id
- **idType**: string - The identifier type
#### Return
- **return**: string - The identifier


---
### Player.License
#### Get the player's rockstar license

##### `Server`
##### Lib.Player.License(source)

#### Parameters
- **source**: number - The player's server id
#### Return
- **return**: string - The license


---
### Player.AddItem
#### Add Item to a player, via the inventory

##### `Server`
##### Lib.Player.AddItem(source, item, amount?, metadata?)

#### Parameters
- **source**: number - The player's server id
- **item**: string - The item name
- **amount?**: number - The amount of the item
- **metadata?**: table<string, any> - The metadata of the item


---
### Player.RemoveItem
#### Remove Item from a player, via the inventory

##### `Server`
##### Lib.Player.RemoveItem(source, item, amount?, metadata?)

#### Parameters
- **source**: number - The player's server id
- **item**: string - The item name
- **amount?**: number - The amount of the item
- **metadata?**: table<string, any> - The metadata of the item
#### Return
- **return**: boolean - true if the item was removed, false if not


---
### Player.HasItem
#### Check if a player has an item, via the inventory

##### `Server`
##### Lib.Player.HasItem(source, item, amount?, metadata?)

#### Parameters
- **source**: number - The player's server id
- **item**: string - The item name
- **amount?**: number - The amount of the item
- **metadata?**: table<string, any> - The metadata of the item
#### Return
- **return**: boolean - true if the player has the item, false if not


---
### Player.CharacterId
#### Get the player's character id

##### `Server`
##### Lib.Player.CharacterId(source)

#### Parameters
- **source**: number - The player's server id
#### Return
- **return**: number - The character id


---
### Player.Metadata
#### Get the player's metadata

##### `Server`
##### Lib.Player.Metadata(source, key, set)

#### Parameters
- **source**: number - The player's server id
- **key**: string? - The metadata key
- **set**: any? - The metadata value to set. If not passed, function is a getter, otherwise its a setter
#### Return
- **return**: table<string, any> - The metadata


---
### Player.Job
#### Get the player's job name

##### `Server`
##### Lib.Player.Job(source, set, grade)

#### Parameters
- **source**: number - The player's server id
- **set**: string? - The job name to set example If not passed, function is a getter, otherwise its a setter
- **grade**: number? - The job grade to set


---
### Player.JobLabel
#### Get the player's job label

##### `Server`
##### Lib.Player.JobLabel(source)

#### Parameters
- **source**: number - The player's server id
#### Return
- **return**: string - The job label


---
### Player.JobLevel
#### Get the player's job level

##### `Server`
##### Lib.Player.JobLevel(source)

#### Parameters
- **source**: number - The player's server id
#### Return
- **return**: number - The job level


---
### Player.Duty
#### Get the player's job duty

##### `Server`
##### Lib.Player.Duty(source, set)

#### Parameters
- **source**: number - The player's server id
- **set**: boolean? - The job grade to. If not passed, function is a getter, otherwise its a setter
#### Return
- **return**: boolean - The job duty


---
### Player.Gang
#### Get the player's gang name

##### `Server`
##### Lib.Player.Gang(source, set, grade)

#### Parameters
- **source**: number - The player's server id
- **set**: string? - The gang name to set example If not passed, function is a getter, otherwise its a setter
- **grade**: number? - The gang grade to set
#### Return
- **return**: string - The gang name


---
### Player.GangLabel
#### Get the player's gang label

##### `Server`
##### Lib.Player.GangLabel(source)

#### Parameters
- **source**: number - The player's server id
#### Return
- **return**: string - The gang label


---
### Player.GangLevel
#### Get the player's gang level

##### `Server`
##### Lib.Player.GangLevel(source)

#### Parameters
- **source**: number - The player's server id
#### Return
- **return**: number - The gang level


---
### Player.Money
#### Get the player's money by type

##### `Server`
##### Lib.Player.Money(source, moneyType, set)

#### Parameters
- **source**: number - The player's server id
- **moneyType**: string - The money type
- **set**: number? - The money amount to set. If not passed, function is a getter, otherwise its a setter
#### Return
- **return**: number - The money amount


---
### Player.HasMoney
#### Check if the player has enough money

##### `Server`
##### Lib.Player.HasMoney(source, moneyType, amount)

#### Parameters
- **source**: number - The player's server id
- **moneyType**: string - The money type
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.AddMoney
#### Add money to the player

##### `Server`
##### Lib.Player.AddMoney(source, moneyType, amount)

#### Parameters
- **source**: number - The player's server id
- **moneyType**: string - The money type
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.RemoveMoney
#### Remove money from the player

##### `Server`
##### Lib.Player.RemoveMoney(source, moneyType, amount)

#### Parameters
- **source**: number - The player's server id
- **moneyType**: string - The money type
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.Cash
#### Get the player's cash

##### `Server`
##### Lib.Player.Cash(source)

#### Parameters
- **source**: number - The player's server id
#### Return
- **return**: number - The cash amount


---
### Player.HasCash
#### Check if the player has enough cash

##### `Server`
##### Lib.Player.HasCash(source, amount)

#### Parameters
- **source**: number - The player's server id
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.AddCash
#### Add cash to the player

##### `Server`
##### Lib.Player.AddCash(source, amount)

#### Parameters
- **source**: number - The player's server id
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.RemoveCash
#### Remove cash from the player

##### `Server`
##### Lib.Player.RemoveCash(source, amount)

#### Parameters
- **source**: number - The player's server id
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.Bank
#### Get the player's bank

##### `Server`
##### Lib.Player.Bank(source)

#### Parameters
- **source**: number - The player's server id
#### Return
- **return**: number - The bank amount


---
### Player.HasBank
#### Check if the player has enough bank

##### `Server`
##### Lib.Player.HasBank(source, amount)

#### Parameters
- **source**: number - The player's server id
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.AddBank
#### Add bank to the player

##### `Server`
##### Lib.Player.AddBank(source, amount)

#### Parameters
- **source**: number - The player's server id
- **amount**: number The amount
#### Return
- **return**: boolean - The result


---
### Player.RemoveBank
#### Remove bank from the player

##### `Server`
##### Lib.Player.RemoveBank(source, amount)

#### Parameters
- **source**: number - The player's server id
- **amount**: number - The amount
#### Return
- **return**: boolean - The result


---
### Player.IsVehicleOwned
#### Get if a vehicle is owned

##### `Server`
##### Lib.Player.IsVehicleOwned(vehicle)

#### Parameters
- **vehicle**: number - The vehicle handle
#### Return
- **return**: boolean - The result


---
