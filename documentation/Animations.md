# Animations
---
<details><summary markdown="span">
PlayAnim</summary>

---

#### Play an animation on an entity

##### `Client`
##### Lib.PlayAnim(entity, data)

#### Parameters
- **entity**: number - The entity to play the animation on
- **data**: table - Table of options for the animation
    - **dict**: string
    - **clip**: string
    - **duration?**: number
    - **flags?**: number
#### Example
```lua
Lib.PlayAnim(Cache.ped, {
   dict = "anim@heists@ornate_bank@hostages@"
   clip = "hitman_react_cowering"
}, true})

```

---
</details>

<details><summary markdown="span">
StopAnim</summary>

---

#### Stop an animation on an entity

##### `Client`
##### Lib.StopAnim(entity, data?)

#### Parameters
- **entity**: number - The entity to stop the animation on
- **data?**: table - Table of options for the animation
    - **dict**: string
    - **clip**: string
#### Example
```lua
Lib.StopAnim(Cache.ped, {
   dict = "anim@heists@ornate_bank@hostages@"
   clip = "hitman_react_cowering"
})

```

---
</details>

<details><summary markdown="span">
PlayAnim</summary>

---

#### Play an animation on a server entity

##### `Server`
##### Lib.PlayAnim(entity, data)

#### Parameters
- **entity**: number - The entity to play the animation on
- **data**: table - Table of options for the animation
    - **dict**: string
    - **clip**: string
    - **duration?**: number
    - **flags?**: number
#### Example
```lua
Lib.PlayAnim(Cache.ped, {
   dict = "anim@heists@ornate_bank@hostages@"
   clip = "hitman_react_cowering"
})

```

---
</details>

