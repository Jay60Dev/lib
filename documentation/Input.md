# Input
---
<details><summary markdown="span">
SupportedInputOption</summary>

---

#### Check if the input type is supported

##### `Client`
##### Lib.SupportedInputOption(optionType)

#### Parameters
- **optionType**: string - The input type
#### Return
- **return**: boolean - If the input type is supported

---
</details>

<details><summary markdown="span">
NotSupportedInputType</summary>

---

#### Print a message that the input type is not supported

##### `Client`
##### Lib.NotSupportedInputType(optionType)

#### Parameters
- **optionType**: string - The input type

---
</details>

<details><summary markdown="span">
Input</summary>

---

#### Get the input values. Returns the values as a table in the same order they were requested.

##### `Client`
##### Lib.Input(header, options)

#### Parameters
- **header**: string - The header
- **options**: table[] - The input options
#### Return
- **return**: any[] - The input values

---
</details>

