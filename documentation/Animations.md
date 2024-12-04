# Animations
---
### PlayAnim
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


---
### StopAnim
#### Stop an animation on an entity

##### `Client`
##### Lib.StopAnim(entity, data?)

#### Parameters
- **entity**: number - The entity to stop the animation on
- **data?**: table - Table of options for the animation
    - **dict**: string
    - **clip**: string


---
### PlayAnim
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


---
