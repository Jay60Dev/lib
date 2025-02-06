# LootTable
---
<details><summary markdown="span">
GetLoot</summary>

---

#### Get an item from a loot table. Weight is based on accumulated chance.

##### `Shared`
##### Lib.GetLoot(data, totalRewards, preventDuplicateRewards)

#### Parameters
- **data**: table - The data to use for loot
    - **name**: string
    - **count**: number
    - **chance**: number
- **totalRewards**: number - The total rewards to get
- **preventDuplicateRewards**: boolean - Prevent duplicate rewards unless all have been given.
#### Return
- **return**: table - The loot that was given
    - **name**: string
    - **count**: number

---
</details>

