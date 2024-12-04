# Target
---
### Target.AddEntity
#### Add a target to an entity

##### `Client`
##### Lib.Target.AddEntity(entity, options)

#### Parameters
- **entity**: number - The entity
- **options**: table - The options, using ox_target structure.


---
### Target.RemoveEntity
#### Remove a target from an entity

##### `Client`
##### Lib.Target.RemoveEntity(entity, label)

#### Parameters
- **entity**: number - The entity
- **label**: string - The label you want to remove from the target


---
### Target.AddModel
#### Add a target to a model

##### `Client`
##### Lib.Target.AddModel(model, options)

#### Parameters
- **model**: number - The model
- **options**: table - The option, using ox_target structure.s


---
### Target.RemoveModel
#### Remove a target from a model

##### `Client`
##### Lib.Target.RemoveModel(model, label)

#### Parameters
- **model**: number - The model
- **label**: string - The label you want to remove from the model


---
### Target.AddGlobalPed
#### Add a target to all peds

##### `Client`
##### Lib.Target.AddGlobalPed(options)

#### Parameters
- **options**: table - The options, using ox_target structure.


---
### Target.RemoveGlobalPed
#### Remove a target from all peds

##### `Client`
##### Lib.Target.RemoveGlobalPed(label)

#### Parameters
- **label**: string - The label you want to remove from the ped


---
### Target.AddGlobalPlayer
#### Add a target to all players

##### `Client`
##### Lib.Target.AddGlobalPlayer(options)

#### Parameters
- **options**: table - The options, using ox_target structure.


---
### Target.RemoveGlobalPlayer
#### Remove a target from all players

##### `Client`
##### Lib.Target.RemoveGlobalPlayer(label)

#### Parameters
- **label**: string - The label you want to remove from the player


---
### Target.AddGlobalVehicle
#### Add a target to all vehicles

##### `Client`
##### Lib.Target.AddGlobalVehicle(options)

#### Parameters
- **options**: table - The options, using ox_target structure.


---
### Target.RemoveGlobalVehicle
#### Remove a target from all vehicles

##### `Client`
##### Lib.Target.RemoveGlobalVehicle(label)

#### Parameters
- **label**: string - The label you want to remove from the vehicle


---
### Target.AddGlobalObject
#### Add a target to all objects

##### `Client`
##### Lib.Target.AddGlobalObject(options)

#### Parameters
- **options**: table - The options, using ox_target structure.


---
### Target.RemoveGlobalObject
#### Remove a target from all objects

##### `Client`
##### Lib.Target.RemoveGlobalObject(label)

#### Parameters
- **label**: string - The label you want to remove from the object


---
### Target.AddBoxZone
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
### Target.AddCircleZone
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
### Target.RemoveCircleZone
#### Remove a circle zone

##### `Client`
##### Lib.Target.RemoveCircleZone(id)

#### Parameters
- **id**: number - The id of the circle zone


---
### Target.AddPolyZone
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
### Target.RemovePolyZone
#### Remove a polygon zone

##### `Client`
##### Lib.Target.RemovePolyZone(id)

#### Parameters
- **id**: number - The id of the polygon zone


---
