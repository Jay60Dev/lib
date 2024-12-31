# Cache
---
<details><summary markdown="span">
Cache</summary>

---

#### Returns a cached value or all cached values.

##### `Client`
##### Lib.Cache(key)

#### Parameters
- **key**: cacheValues - The key to get the cached value
#### Return
- **return**: table
    - **ped**: number
    - **veh**: number | boolean
    - **coords**: vector4
    - **seat**: number | boolean
    - **source**: number
    - **weapon**: number | boolean
#### Example
```lua
print(Cache.coords)

```

---
</details>

<details><summary markdown="span">
CacheChange</summary>

---

#### Listen for changes in the cache.

##### `Client`
##### Lib.CacheChange(key, handler)

#### Parameters
- **key**: "ped" | "veh" | "coords" | "seat" | "source" | "weapon" - The key to listen for changes
- **handler**: fun(value: string | number | boolean | vector4, oldValue: string | number | boolean | vector4) - The callback function to be called when the value changes
#### Example
```lua
Lib.CacheChange("weapon", function(new, old)
  print("New weapon:", new)
  print("Old weapon:", old)
end)

```

---
</details>

