# Callback
---
### Callback
#### Retrieve a value from the server

##### `Client`
##### Lib.Callback(name, ...)

#### Parameters
- **name**: string - The callback name
- **...**: any - The arguments to pass to the callback
#### Return
- **return**: ... any - The return values from the callback


---
### RegisterCallback
#### Register a callback

##### `Client`
##### Lib.RegisterCallback(name, cb)

#### Parameters
- **name**: string - The callback name
- **cb**: fun(...: any): ... - The callback function


---
### Callback
#### Retrieve a value from the server

##### `Server`
##### Lib.Callback(name, id, ...)

#### Parameters
- **name**: string - The callback name
- **id**: number - The player server id
- **...**: any - The arguments to pass to the callback
#### Return
- **return**: ... any - The return values from the callback


---
### RegisterCallback
#### Register a callback

##### `Server`
##### Lib.RegisterCallback(name, cb)

#### Parameters
- **name**: string - The callback name
- **cb**: fun(source: number, ...: any): ... - The callback function


---
