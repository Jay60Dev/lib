# Health
---
<details><summary markdown="span">
GetHealth</summary>

---

#### Get the health from an entity

##### `Client`
##### Lib.GetHealth(entity)

#### Parameters
- **entity**: number - The entity to get the health from
#### Return
- **return**: number | false, string? - The health of the entity

---
</details>

<details><summary markdown="span">
GetMaxHealth</summary>

---

#### Get the maximum health for an entity

##### `Client`
##### Lib.GetMaxHealth(entity)

#### Parameters
- **entity**: number - The entity to get the health from
#### Return
- **return**: number | false, string? - The health of the entity

---
</details>

<details><summary markdown="span">
GetHealthPercentage</summary>

---

#### Get the maximum health for an entity

##### `Client`
##### Lib.GetHealthPercentage(entity)

#### Parameters
- **entity**: number - The entity to get the health from
#### Return
- **return**: number | false, string? - The health of the entity as a percentage

---
</details>

<details><summary markdown="span">
GetArmour</summary>

---

#### Get the armour from an entity

##### `Client`
##### Lib.GetArmour(entity)

#### Parameters
- **entity**: number - The entity to get the health from
#### Return
- **return**: number | false, string? - The armour of the entity

---
</details>

<details><summary markdown="span">
RemoveHealth</summary>

---

#### Remove health from an entity

##### `Client`
##### Lib.RemoveHealth(entity, amount)

#### Parameters
- **entity**: number - The entity to remove the health from
- **amount**: number - The amount of health to remove
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
AddHealth</summary>

---

#### Add health to an entity

##### `Client`
##### Lib.AddHealth(entity, amount)

#### Parameters
- **entity**: number - The entity to add the health to
- **amount**: number - The amount of health to add
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
SetHealth</summary>

---

#### Set health to an entity

##### `Client`
##### Lib.SetHealth(entity, amount)

#### Parameters
- **entity**: number - The entity to set the health to
- **amount**: number - The amount of health to set
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
SetHealthPercentage</summary>

---

#### Set health to an entity as a percentage

##### `Client`
##### Lib.SetHealthPercentage(entity, percentage)

#### Parameters
- **entity**: number - The entity to set the health to
- **percentage**: number - The percentage of health to set
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
AddArmour</summary>

---

#### Remove armour from an entity

##### `Client`
##### Lib.AddArmour(entity, amount)

#### Parameters
- **entity**: number - The entity to remove the armour from
- **amount**: number - The amount of armour to remove
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
RemoveArmour</summary>

---

#### Remove armour from an entity

##### `Client`
##### Lib.RemoveArmour(entity, amount)

#### Parameters
- **entity**: number - The entity to remove the armour from
- **amount**: number - The amount of armour to remove
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
SetArmour</summary>

---

#### Set entities armour

##### `Client`
##### Lib.SetArmour(entity, amount)

#### Parameters
- **entity**: number - The entity to set the armour to
- **amount**: number - The amount of armour to set
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
GetHealth</summary>

---

#### Add get a players by their server id

##### `Server`
##### Lib.GetHealth(id)

#### Parameters
- **id**: number - The player server id
#### Return
- **return**: number - The health

---
</details>

<details><summary markdown="span">
GetHealthPercentage</summary>

---

#### Get the health percentage of a player by their server id

##### `Server`
##### Lib.GetHealthPercentage(id)

#### Parameters
- **id**: number - The player server id
#### Return
- **return**: number - The health percentage

---
</details>

<details><summary markdown="span">
GetMaxHealth</summary>

---

#### Get the maximum health of a player by their server id

##### `Server`
##### Lib.GetMaxHealth(id)

#### Parameters
- **id**: number - The player server id
#### Return
- **return**: number - The max health

---
</details>

<details><summary markdown="span">
AddHealth</summary>

---

#### Add health to a player by their server id

##### `Server`
##### Lib.AddHealth(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of health to add
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
RemoveHealth</summary>

---

#### Remove health from a player by their server id

##### `Server`
##### Lib.RemoveHealth(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of health to remove
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
SetHealth</summary>

---

#### Set health to a player by their server id

##### `Server`
##### Lib.SetHealth(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of health to set
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
SetHealthPercentage</summary>

---

#### Set health percentage to a player by their server id

##### `Server`
##### Lib.SetHealthPercentage(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of health to set
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
AddArmour</summary>

---

#### Add armour to a player by their server id

##### `Server`
##### Lib.AddArmour(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of armour to add
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
RemoveArmour</summary>

---

#### Remove armour from a player by their server id

##### `Server`
##### Lib.RemoveArmour(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of armour to remove
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
SetArmour</summary>

---

#### Set armour to a player by their server id

##### `Server`
##### Lib.SetArmour(id, amount)

#### Parameters
- **id**: number - The player server id
- **amount**: number - The amount of armour to set
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

