# Inventory
---
<details><summary markdown="span">
Inventory.GetAllItems</summary>

---

#### Get all the players items

##### `Client`
##### Lib.Inventory.GetAllItems()

#### Parameters
#### Return
- **return**: table[] - The items

---
</details>

<details><summary markdown="span">
Inventory.GetCount</summary>

---

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
</details>

<details><summary markdown="span">
Inventory.HasItem</summary>

---

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
</details>

<details><summary markdown="span">
Inventory.GetLabel</summary>

---

#### Get the items label from its name

##### `Client`
##### Lib.Inventory.GetLabel(itemName)

#### Parameters
- **itemName**: string - The item name
#### Return
- **return**: string - The item label

---
</details>

<details><summary markdown="span">
Inventory.ConvertToMenu</summary>

---

#### Convert all items in a format that can be used in a menu

##### `Client`
##### Lib.Inventory.ConvertToMenu(items, defaultMenuOptions?)

#### Parameters
- **items**: table[] - The items
- **defaultMenuOptions?**: table - The default menu options
#### Return
- **return**: table - A table with all menu options to use in Lib.Menu

---
</details>

<details><summary markdown="span">
Inventory.GetAllItemsForMenu</summary>

---

#### Get all the players items in a format that can be used in a menu

##### `Client`
##### Lib.Inventory.GetAllItemsForMenu(defaultMenuOptions)

#### Parameters
- **defaultMenuOptions**: table - The default menu options
#### Return
- **return**: table - A table with all menu options to use in Lib.Menu

---
</details>

<details><summary markdown="span">
Inventory.GetAllItems</summary>

---

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
</details>

<details><summary markdown="span">
Inventory.GetMaxWeightForPlayer</summary>

---

#### Get the maximum weight a player can carry

##### `Server`
##### Lib.Inventory.GetMaxWeightForPlayer(id?)

#### Parameters
- **id?**: number - The player id
#### Return
- **return**: number - The maximum weight

---
</details>

<details><summary markdown="span">
Inventory.GetMaxSlots</summary>

---

#### Get the maximum slots a player can have

##### `Server`
##### Lib.Inventory.GetMaxSlots()

#### Parameters
#### Return
- **return**: number - The maximum slots

---
</details>

<details><summary markdown="span">
Inventory.GetItemWeight</summary>

---

#### Get the weight of an item

##### `Server`
##### Lib.Inventory.GetItemWeight(itemName)

#### Parameters
- **itemName**: string - The item name
#### Return
- **return**: number - The weight of the item

---
</details>

<details><summary markdown="span">
Inventory.GetLabel</summary>

---

#### Get the label of an item

##### `Server`
##### Lib.Inventory.GetLabel(itemName)

#### Parameters
- **itemName**: string - The item name
#### Return
- **return**: string - The label of the item

---
</details>

<details><summary markdown="span">
Inventory.AddItem</summary>

---

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
</details>

<details><summary markdown="span">
Inventory.RemoveItem</summary>

---

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
</details>

<details><summary markdown="span">
Inventory.GetWeight</summary>

---

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
</details>

<details><summary markdown="span">
Inventory.CanCarry</summary>

---

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
</details>

<details><summary markdown="span">
Inventory.HasItem</summary>

---

#### Check if a player has an item

##### `Server`
##### Lib.Inventory.HasItem(id, item, amount?, metadata?)

#### Parameters
- **id**: number - The player id
- **item**: string - The item name
- **amount?**: number - The amount
- **metadata?**: table<string, any> - The metadata

---
</details>

<details><summary markdown="span">
Inventory.GetCount</summary>

---

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
</details>

<details><summary markdown="span">
Inventory.Transaction</summary>

---

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
</details>

