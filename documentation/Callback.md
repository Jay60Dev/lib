# Callback
---
<details><summary markdown="span">
Callback</summary>

---

#### Retrieve a value from the server

##### `Client`
##### Lib.Callback(name, ...)

#### Parameters
- **name**: string - The callback name
- **...**: any - The arguments to pass to the callback
#### Return
- **return**: ... any - The return values from the callback
#### Example
```lua
local retVal = Lib.Callback("callback:name", var1, var2)

```

---
</details>

<details><summary markdown="span">
RegisterCallback</summary>

---

#### Register a callback

##### `Client`
##### Lib.RegisterCallback(name, cb)

#### Parameters
- **name**: string - The callback name
- **cb**: fun(...: any): ... - The callback function
#### Example
```lua
Lib.RegisterCallback("callback:name", function(data)
  return data.value end
end)

```

---
</details>

<details><summary markdown="span">
Callback</summary>

---

#### Retrieve a value from the server

##### `Server`
##### Lib.Callback(name, id, ...)

#### Parameters
- **name**: string - The callback name
- **id**: number - The player server id
- **...**: any - The arguments to pass to the callback
#### Return
- **return**: ... any - The return values from the callback
#### Example
```lua
Lib.Callback("callback:name", 1, var1, var2)

```

---
</details>

<details><summary markdown="span">
RegisterCallback</summary>

---

#### Register a callback

##### `Server`
##### Lib.RegisterCallback(name, cb)

#### Parameters
- **name**: string - The callback name
- **cb**: fun(source: number, ...: any): ... - The callback function
#### Example
```lua
Lib.RegisterCallback("callback:name", function(source, ...)
  return {value = "Hello World"}
end)

```

---
</details>

