# Rest
---
<details><summary markdown="span">
Fetch</summary>

---

#### Fetch data from server, but only after its been registered (for security)

##### `Client`
##### Lib.Fetch(name)

#### Parameters
- **name**: string - The fetch name
#### Return
- **return**: any - The data from the fetch

---
</details>

<details><summary markdown="span">
Fetch</summary>

---

#### Fetch data from a url

##### `Server`
##### Lib.Fetch(url)

#### Parameters
- **url**: string - The url to fetch data from
#### Return
- **return**: any - The data from the fetch

---
</details>

<details><summary markdown="span">
Post</summary>

---

#### Do a post request to a url

##### `Server`
##### Lib.Post(url, data)

#### Parameters
- **url**: string - The url to post data to
- **data**: string | table<string, any> - The data to post

---
</details>

<details><summary markdown="span">
RegisterFetch</summary>

---

#### Register a fetch request for the client to use

##### `Server`
##### Lib.RegisterFetch(name, url)

#### Parameters
- **name**: string - The fetch name
- **url**: string - The url to fetch data from

---
</details>

