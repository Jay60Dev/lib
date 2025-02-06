# Database
---
<details><summary markdown="span">
Database.Insert</summary>

---

#### Insert a row into a database table.

##### `Server`
##### Lib.Database.Insert(databaseTable, columnValues)

#### Parameters
- **databaseTable**: string - The database table name
- **columnValues**: table<string, any> - The column values to insert
#### Return
- **return**: number - The inserted row id

---
</details>

<details><summary markdown="span">
Database.Update</summary>

---

#### Update a row in a database table.

##### `Server`
##### Lib.Database.Update(databaseTable, columnValues, where)

#### Parameters
- **databaseTable**: string - The database table name
- **columnValues**: table<string, any> - The column values to update
- **where**: table<string, any> - The where clause
#### Return
- **return**: boolean - If the update was successful

---
</details>

<details><summary markdown="span">
Database.Select</summary>

---

#### Select rows from a database table.

##### `Server`
##### Lib.Database.Select(databaseTable, columnValues?, where)

#### Parameters
- **databaseTable**: string - The database table name
- **columnValues?**: table<string, any> | string - The column values to update
- **where**: table<string, any> - The where clause
#### Return
- **return**: any[] - The selected rows

---
</details>

<details><summary markdown="span">
Database.Create</summary>

---

#### Create a table in the database.

##### `Server`
##### Lib.Database.Create(databaseTable, columnValues, settings?)

#### Parameters
- **databaseTable**: string - The database table name
- **columnValues**: table<string, any> - The column values to create the table
- **settings?**: table - The settings for the table
    - **foreignKeys?**: table<string
    - **{table**: string, column: string}>[]
#### Return
- **return**: boolean - If the table was created successfully

---
</details>

<details><summary markdown="span">
Database.Delete</summary>

---

#### Delete a row from a database table.

##### `Server`
##### Lib.Database.Delete(databaseTable, where)

#### Parameters
- **databaseTable**: string - The database table name
- **where**: table<string, any> - The where clause
#### Return
- **return**: boolean - If the delete was successful

---
</details>

