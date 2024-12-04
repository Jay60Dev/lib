# Cache
---
### Cache
#### -- Returns a cached value or all cached values.

##### `Client`
##### Lib.Cache(--)

#### Parameters
- **--**: key cacheValues - The key to get the cached value
#### Return
- **return**: -- table


---
### CacheChange
#### Listen for changes in the cache.

##### `Client`
##### Lib.CacheChange(key, handler)

#### Parameters
- **key**: "ped" | "veh" | "coords" | "seat" | "source" | "weapon" - The key to listen for changes
- **handler**: fun(value: string | number | boolean | vector4, oldValue: string | number | boolean | vector4) - The callback function to be called when the value changes


---
