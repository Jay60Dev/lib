# Ptfx
---
<details><summary markdown="span">
StartPtfx</summary>

---

#### Start a particle effect on an entity

##### `Client`
##### Lib.StartPtfx(entity, data?)

#### Parameters
- **entity**: number - The entity to start the particle effect on
- **data?**: table - Options for the PTFX, if not passed, will stop the PTFX
    - **dict**: string
    - **effect**: string
    - **offset?**: vector3
    - **rotation?**: vector3
    - **scale?**: number
    - **id?**: string
    - **stop?**: boolean
#### Return
- **return**: string? - The ID of the particle effect. used for stopping the effect

---
</details>

<details><summary markdown="span">
StopPtfx</summary>

---

#### Stop a particle effect on an entity

##### `Client`
##### Lib.StopPtfx(entity, data?)

#### Parameters
- **entity**: number - The entity to stop the particle effect on
- **data?**: table - The data to find, to stop specific PTFX. Usually containing an id/ If not passed, will stop all.
    - **id?**: string
    - **effect?**: string

---
</details>

<details><summary markdown="span">
StartPtfx</summary>

---

#### Start a particle effect on an entity

##### `Server`
##### Lib.StartPtfx(entity, data?)

#### Parameters
- **entity**: number - The entity to start the particle effect on
- **data?**: table - Options for the PTFX, if not passed, will stop the PTFX
    - **dict**: string
    - **effect**: string
    - **offset?**: vector3
    - **rotation?**: vector3
    - **scale?**: number
    - **id?**: string
    - **stop?**: boolean
#### Return
- **return**: string? - The ID of the particle effect. used for stopping the effect

---
</details>

<details><summary markdown="span">
StopPtfx</summary>

---

#### Stop a particle effect on an entity

##### `Server`
##### Lib.StopPtfx(entity, data)

#### Parameters
- **entity**: number - The entity to stop the particle effect on
- **data**: table - The data to find, to stop specific PTFX. Usually containing an id/ If not passed, will stop all.
    - **id?**: string
    - **effect?**: string

---
</details>

