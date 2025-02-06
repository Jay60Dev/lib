# Spawn
---
<details><summary markdown="span">
LoadModel</summary>

---

#### Load a model. Remember to Lib.RemoveModel after spawning in.

##### `Client`
##### Lib.LoadModel(model)

#### Parameters
- **model**: string | number - The model name or hash
#### Return
- **return**: string | number? - The model hash

---
</details>

<details><summary markdown="span">
RemoveModel</summary>

---

#### Remove a model from memory.

##### `Client`
##### Lib.RemoveModel(model)

#### Parameters
- **model**: string | number - The model name or hash

---
</details>

<details><summary markdown="span">
LoadAnim</summary>

---

#### Load an animation dictionary. Remember to Lib.RemoveAnim after spawning in.

##### `Client`
##### Lib.LoadAnim(animDict)

#### Parameters
- **animDict**: string | table - The animation dictionary name
#### Return
- **return**: string? - The animation dictionary name

---
</details>

<details><summary markdown="span">
RemoveAnim</summary>

---

#### Remove an animation dictionary from memory.

##### `Client`
##### Lib.RemoveAnim(animDict)

#### Parameters
- **animDict**: string | table - The animation dictionary name
#### Return
- **return**: string? - The animation dictionary name

---
</details>

<details><summary markdown="span">
LoadPtfx</summary>

---

#### Load a ptfx asset. Remember to Lib.RemovePtfx after spawning in.

##### `Client`
##### Lib.LoadPtfx(ptfx)

#### Parameters
- **ptfx**: string | table - The ptfx asset name
#### Return
- **return**: string? - The ptfx asset name

---
</details>

<details><summary markdown="span">
RemovePtfx</summary>

---

#### Remove a ptfx asset from memory.

##### `Client`
##### Lib.RemovePtfx(ptfx)

#### Parameters
- **ptfx**: string | table The ptfx asset name
#### Return
- **return**: string? - The ptfx asset name

---
</details>

<details><summary markdown="span">
DeleteEntity</summary>

---

#### Delete an entity. This ensures entity exists to delete, and removes it from the cached entities if it exists.

##### `Client`
##### Lib.DeleteEntity(entity)

#### Parameters
- **entity**: number - The entity handle

---
</details>

<details><summary markdown="span">
SpawnObject</summary>

---

#### Spawn an object

##### `Client`
##### Lib.SpawnObject(data)

#### Parameters
- **data**: table - The object data
    - **model**: string
    - **coords**: vector3 | vector4
    - **networked?**: boolean
    - **freeze?**: boolean
    - **invincible?**: boolean?
    - **targets?**: table[]
#### Return
- **return**: number - The object id

---
</details>

<details><summary markdown="span">
SpawnObject</summary>

---

#### Spawn an object

##### `Server`
##### Lib.SpawnObject(data)

#### Parameters
- **data**: table - The object data
    - **model**: string
    - **coords**: vector3 | vector4
    - **networked?**: boolean
    - **freeze?**: boolean
    - **invincible?**: boolean?
    - **targets?**: table[]
#### Return
- **return**: number, number - The object id, network ID

---
</details>

<details><summary markdown="span">
SpawnPed</summary>

---

#### Spawn a ped

##### `Client`
##### Lib.SpawnPed(data)

#### Parameters
- **data**: table - The ped data
    - **model**: string
    - **coords**: vector3 | vector4
    - **networked?**: boolean
    - **freeze?**: boolean
    - **invincible?**: boolean?
    - **blockEvents?**: boolean
    - **default?**: boolean
    - **targets?**: table[]
#### Return
- **return**: number - The ped id

---
</details>

<details><summary markdown="span">
SpawnPed</summary>

---

#### Spawn a ped

##### `Server`
##### Lib.SpawnPed(data)

#### Parameters
- **data**: table - The ped data
    - **model**: string
    - **coords**: vector3 | vector4
    - **networked?**: boolean
    - **freeze?**: boolean
    - **invincible?**: boolean?
    - **blockEvents?**: boolean
    - **default?**: boolean
    - **targets?**: table[]
#### Return
- **return**: number, number - The ped id, network ID

---
</details>

<details><summary markdown="span">
DeleteEntity</summary>

---

#### Delete an entity. This ensures entity exists to delete, and removes it from the cached entities if it exists.

##### `Server`
##### Lib.DeleteEntity(entity)

#### Parameters
- **entity**: number - The entity handle

---
</details>

<details><summary markdown="span">
SpawnVehicle</summary>

---

#### Spawn a vehicle

##### `Client`
##### Lib.SpawnVehicle(data)

#### Parameters
- **data**: table - The vehicle data
    - **model**: string
    - **coords**: vector3 | vector4
    - **networked?**: boolean
    - **invincible?**: boolean
    - **freeze?**: boolean
    - **locked?**: boolean
    - **engine?**: boolean
    - **lights?**: boolean
    - **livery?**: number
    - **plate?**: string
    - **color?**: number | string | vector3
    - **secondColor?**: number | string | vector3
    - **windowTint?**: number | string
#### Return
- **return**: number - The vehicle handle

---
</details>

<details><summary markdown="span">
SpawnVehicle</summary>

---

#### Spawn a vehicle

##### `Server`
##### Lib.SpawnVehicle(data)

#### Parameters
- **data**: table - The vehicle data
    - **model**: string
    - **coords**: vector3 | vector4
    - **networked?**: boolean
    - **invincible?**: boolean
    - **freeze?**: boolean
    - **locked?**: boolean
    - **engine?**: boolean
    - **lights?**: boolean
    - **livery?**: number
    - **plate?**: string
    - **color?**: number | string | vector3
    - **secondColor?**: number | string | vector3
    - **windowTint?**: number | string
#### Return
- **return**: number, number - The vehicle handle, The network id

---
</details>

