# Inventory
---
### Inventory.GetAllItems
#### Get all the players items

##### `Client`
##### Lib.Inventory.GetAllItems()

#### Parameters
#### Return
- **return**: table[] - The items


---
### Inventory.GetCount
#### Get the count of an item
Has a cooldown check to prevent spamming the server, if you need to check the value multiple times in a very short time, cache it.

##### `Client`
##### Lib.Inventory.GetCount(item, metadata)

#### Parameters
- **item**: string - The item name
- **metadata**: table? - The metadata
#### Return
- **return**: number - The count


---
### Inventory.HasItem
#### Check if the player has an item
Has a cooldown check to prevent spamming the server, if you need to check the value multiple times in a very short time, cache it.

##### `Client`
##### Lib.Inventory.HasItem(item, amount, metadata)

#### Parameters
- **item**: string - The item name
- **amount**: number? - The amount
- **metadata**: table? - The metadata
#### Return
- **return**: boolean - The result


---
### Inventory.GetLabel
#### Get the items label from its name

##### `Client`
##### Lib.Inventory.GetLabel(itemName)

#### Parameters
- **itemName**: string - The item name
#### Return
- **return**: string - The item label


---
### Inventory.ConvertToMenu
#### Convert all items in a format that can be used in a menu

##### `Client`
##### Lib.Inventory.ConvertToMenu(items, defaultMenuOptions?)

#### Parameters
- **items**: table[] - The items
- **defaultMenuOptions?**: table - The default menu options
#### Return
- **return**: table - A table with all menu options to use in Lib.Menu


---
### Inventory.GetAllItemsForMenu
#### Get all the players items in a format that can be used in a menu

##### `Client`
##### Lib.Inventory.GetAllItemsForMenu(defaultMenuOptions)

#### Parameters
- **defaultMenuOptions**: table - The default menu options
#### Return
- **return**: table - A table with all menu options to use in Lib.Menu


---
### Inventory.GetAllItems
#### Call a function when an item is used. Please note this uses framework functions.
`Server`
Get all items in a players inventory

##### `Server`
##### Lib.Inventory.GetAllItems(itemName, cb, id)

#### Parameters
- **itemName**: string - The item to make useable
- **cb**: fun(source: number, itemName: string, itemData: table) - The callback
- **id**: number - The player id
#### Return
- **return**: table[] - The items


---
### Inventory.GetMaxWeightForPlayer
#### Get the maximum weight a player can carry

##### `Server`
##### Lib.Inventory.GetMaxWeightForPlayer(id?)

#### Parameters
- **id?**: number - The player id
#### Return
- **return**: number - The maximum weight


---
### Inventory.GetMaxSlots
#### Get the maximum slots a player can have

##### `Server`
##### Lib.Inventory.GetMaxSlots()

#### Parameters
#### Return
- **return**: number - The maximum slots


---
### Inventory.GetItemWeight
#### Get the weight of an item

##### `Server`
##### Lib.Inventory.GetItemWeight(itemName)

#### Parameters
- **itemName**: string - The item name
#### Return
- **return**: number - The weight of the item


---
### Inventory.GetLabel
#### Get the label of an item

##### `Server`
##### Lib.Inventory.GetLabel(itemName)

#### Parameters
- **itemName**: string - The item name
#### Return
- **return**: string - The label of the item


---
### Inventory.AddItem
#### Add an item to a players inventory

##### `Server`
##### Lib.Inventory.AddItem(id, item, amount?, metadata?, slot?)

#### Parameters
- **id**: number - The player id
- **item**: string - The item name
- **amount?**: number - The amount
- **metadata?**: table - The metadata
- **slot?**: number - The slot
#### Return
- **return**: boolean - The result


---
### Inventory.RemoveItem
#### Remove an item from a players inventory

##### `Server`
##### Lib.Inventory.RemoveItem(id, item, amount?, metadata?, slot?)

#### Parameters
- **id**: number - The player id
- **item**: string - The item name
- **amount?**: number - The amount
- **metadata?**: table - The metadata, if you are wanting to remove specifically by mentadata value
- **slot?**: number - The slot
#### Return
- **return**: boolean - The result


---
### Inventory.GetWeight
#### Get the weight of item/s

##### `Server`
##### Lib.Inventory.GetWeight(item, count?, metadata?, slot?)

#### Parameters
- **item**: string | table - The item name
- **count?**: number - The amount of the item
- **metadata?**: table - The metadata
- **slot?**: number - The slot
#### Return
- **return**: number - The weight of the inventory


---
### Inventory.CanCarry
#### Check if a player can carry the weight of the items

##### `Server`
##### Lib.Inventory.CanCarry(id, item, count?, metadata?, slot?)

#### Parameters
- **id**: number - The player id
- **item**: string | table - The item name
- **count?**: number - The amount of the item
- **metadata?**: table - The metadata
- **slot?**: number - The slot
#### Return
- **return**: boolean - The result


---
### Inventory.HasItem
#### Check if a player has an item

##### `Server`
##### Lib.Inventory.HasItem(id, item, amount?, metadata?)

#### Parameters
- **id**: number - The player id
- **item**: string - The item name
- **amount?**: number - The amount
- **metadata?**: table<string, any> - The metadata


---
### Inventory.GetCount
#### Get the count of an item

##### `Server`
##### Lib.Inventory.GetCount(id, item, metadata?)

#### Parameters
- **id**: number - The player id
- **item**: string - The item name
- **metadata?**: table<string, any> - The metadata
#### Return
- **return**: number - The count


---
### Inventory.Transaction
#### Exchange with player

##### `Server`
##### Lib.Inventory.Transaction(id, temp_take, temp_give)

#### Parameters
- **id**: number - The player id
- **temp_take**: table[] - The items to take
- **temp_give**: table[] - The items to give
#### Return
- **return**: boolean, string? - The result


---
