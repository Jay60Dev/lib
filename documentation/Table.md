# Table
---
<details><summary markdown="span">
Table.Matches</summary>

---

#### Check if a table1 and table2 have the exact same data (limited to one level)

##### `Shared`
##### Lib.Table.Matches(tbl1, tbl2)

#### Parameters
- **tbl1**: table - The first table
- **tbl2**: table - The second table
#### Return
- **return**: boolean - true if the tables are the same or false if they are different

---
</details>

<details><summary markdown="span">
Table.Type</summary>

---

#### Get the type od a table, either "object", "array" or "empty"

##### `Shared`
##### Lib.Table.Type(tbl)

#### Parameters
- **tbl**: table - The table
#### Return
- **return**: "object" | "array" | "empty" - the type of the table

---
</details>

<details><summary markdown="span">
Table.RealArrayLengthIncludingNilValues</summary>

---

#### Get the length of an array, even if there is nil values aswell as how many values are in the array

##### `Shared`
##### Lib.Table.RealArrayLengthIncludingNilValues(tbl)

#### Parameters
- **tbl**: table - The table
#### Return
- **return**: number, number - the length of the array and how many have values

---
</details>

<details><summary markdown="span">
Table.RemoveNilValues</summary>

---

#### Remove all nil values from a table

##### `Shared`
##### Lib.Table.RemoveNilValues(tbl)

#### Parameters
- **tbl**: table - The table
#### Return
- **return**: table  without nil values - the table

---
</details>

<details><summary markdown="span">
Table.Filter</summary>

---

#### Filter a table or array based on a function

##### `Shared`
##### Lib.Table.Filter(tbl, filter)

#### Parameters
- **tbl**: table - The table
- **filter**: function - The filter function
#### Return
- **return**: table - the filtered table

---
</details>

<details><summary markdown="span">
Table.FilterByKey</summary>

---

#### Reduce a table or array into a new array, with keys based on the value of "key"

##### `Shared`
##### Lib.Table.FilterByKey(table, key)

#### Parameters
- **table**: table - The table
- **key**: string - The key to get by
#### Return
- **return**: table - the sorted table

---
</details>

<details><summary markdown="span">
Table.Clone</summary>

---

#### Clone a table

##### `Shared`
##### Lib.Table.Clone(tbl)

#### Parameters
- **tbl**: table - The table
#### Return
- **return**: table - the cloned table

---
</details>

