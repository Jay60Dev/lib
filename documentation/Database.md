# Database
---
### Database.Insert
#### Insert a row into a database table.

##### `Server`
##### Lib.Database.Insert(databaseTable, columnValues)

#### Parameters
- **databaseTable**: string - The database table name
- **columnValues**: table<string, any> - The column values to insert
#### Return
- **return**: table<string, any> - The inserted row


---
### Database.Update
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
### Database.Select
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
### Database.Create
#### Create a table in the database.

##### `Server`
##### Lib.Database.Create(databaseTable, columnValues)

#### Parameters
- **databaseTable**: string - The database table name
- **columnValues**: table<string, any> - The column values to create the table
#### Return
- **return**: boolean - If the table was created successfully


---
### Database.Delete
#### Delete a row from a database table.

##### `Server`
##### Lib.Database.Delete(databaseTable, where)

#### Parameters
- **databaseTable**: string - The database table name
- **where**: table<string, any> - The where clause
#### Return
- **return**: boolean - If the delete was successful


---
