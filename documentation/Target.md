# Target
---
<details><summary markdown="span">
Target.AddEntity</summary>

---

#### Add a target to an entity

##### `Client`
##### Lib.Target.AddEntity(entity, options)

#### Parameters
- **entity**: number - The entity
- **options**: table - The options, using ox_target structure.

---
</details>

<details><summary markdown="span">
Target.RemoveEntity</summary>

---

#### Remove a target from an entity

##### `Client`
##### Lib.Target.RemoveEntity(entity, label)

#### Parameters
- **entity**: number - The entity
- **label**: string - The label you want to remove from the target

---
</details>

<details><summary markdown="span">
Target.AddModel</summary>

---

#### Add a target to a model

##### `Client`
##### Lib.Target.AddModel(model, options)

#### Parameters
- **model**: number - The model
- **options**: table - The option, using ox_target structure.s

---
</details>

<details><summary markdown="span">
Target.RemoveModel</summary>

---

#### Remove a target from a model

##### `Client`
##### Lib.Target.RemoveModel(model, label)

#### Parameters
- **model**: number - The model
- **label**: string - The label you want to remove from the model

---
</details>

<details><summary markdown="span">
Target.AddGlobalPed</summary>

---

#### Add a target to all peds

##### `Client`
##### Lib.Target.AddGlobalPed(options)

#### Parameters
- **options**: table - The options, using ox_target structure.

---
</details>

<details><summary markdown="span">
Target.RemoveGlobalPed</summary>

---

#### Remove a target from all peds

##### `Client`
##### Lib.Target.RemoveGlobalPed(label)

#### Parameters
- **label**: string - The label you want to remove from the ped

---
</details>

<details><summary markdown="span">
Target.AddGlobalPlayer</summary>

---

#### Add a target to all players

##### `Client`
##### Lib.Target.AddGlobalPlayer(options)

#### Parameters
- **options**: table - The options, using ox_target structure.

---
</details>

<details><summary markdown="span">
Target.RemoveGlobalPlayer</summary>

---

#### Remove a target from all players

##### `Client`
##### Lib.Target.RemoveGlobalPlayer(label)

#### Parameters
- **label**: string - The label you want to remove from the player

---
</details>

<details><summary markdown="span">
Target.AddGlobalVehicle</summary>

---

#### Add a target to all vehicles

##### `Client`
##### Lib.Target.AddGlobalVehicle(options)

#### Parameters
- **options**: table - The options, using ox_target structure.

---
</details>

<details><summary markdown="span">
Target.RemoveGlobalVehicle</summary>

---

#### Remove a target from all vehicles

##### `Client`
##### Lib.Target.RemoveGlobalVehicle(label)

#### Parameters
- **label**: string - The label you want to remove from the vehicle

---
</details>

<details><summary markdown="span">
Target.AddGlobalObject</summary>

---

#### Add a target to all objects

##### `Client`
##### Lib.Target.AddGlobalObject(options)

#### Parameters
- **options**: table - The options, using ox_target structure.

---
</details>

<details><summary markdown="span">
Target.RemoveGlobalObject</summary>

---

#### Remove a target from all objects

##### `Client`
##### Lib.Target.RemoveGlobalObject(label)

#### Parameters
- **label**: string - The label you want to remove from the object

---
</details>

<details><summary markdown="span">
Target.AddBoxZone</summary>

---

#### Add a target to a box zone

##### `Client`
##### Lib.Target.AddBoxZone(targetZone)

#### Parameters
- **targetZone**: table - The target zone, options in the style of ox_target
    - **coords**: vector3
    - **size?**: vector3
    - **rotation?**: number
    - **onEnter?**: fun(self: table)
    - **onExit?**: fun(self: table)
    - **inside?**: fun(self: table)
    - **debug?**: boolean
    - **options**: table

---
</details>

<details><summary markdown="span">
Target.AddCircleZone</summary>

---

#### Add a target to a circle zone

##### `Client`
##### Lib.Target.AddCircleZone(targetZone)

#### Parameters
- **targetZone**: table - The target zone, options in the style of ox_target
    - **coords**: vector3
    - **radius?**: number
    - **onEnter?**: fun(self: table)
    - **onExit?**: fun(self: table)
    - **inside?**: fun(self: table)
    - **debug?**: boolean
    - **options**: table

---
</details>

<details><summary markdown="span">
Target.RemoveCircleZone</summary>

---

#### Remove a circle zone

##### `Client`
##### Lib.Target.RemoveCircleZone(id)

#### Parameters
- **id**: number - The id of the circle zone

---
</details>

<details><summary markdown="span">
Target.AddPolyZone</summary>

---

#### Add a target to a polygon zone

##### `Client`
##### Lib.Target.AddPolyZone(targetZone)

#### Parameters
- **targetZone**: table - The target zone, options in the style of ox_target
    - **points**: vector3[]
    - **thickness?**: number
    - **onEnter?**: fun(self: table)
    - **onExit?**: fun(self: table)
    - **inside?**: fun(self: table)
    - **debug?**: boolean
    - **options**: table

---
</details>

<details><summary markdown="span">
Target.RemovePolyZone</summary>

---

#### Remove a polygon zone

##### `Client`
##### Lib.Target.RemovePolyZone(id)

#### Parameters
- **id**: number - The id of the polygon zone

---
</details>

