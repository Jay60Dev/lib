# Nearby
---
<details><summary markdown="span">
Nearby.Notify</summary>

---

#### Notify all players within a specified distance of you

##### `Client`
##### Lib.Nearby.Notify(distance, message, type, duration)

#### Parameters
- **distance**: number - The distance to notify players within
- **message**: string - The message to send to players
- **type**: "success" | "error" - The type of notification to send
- **duration**: number - The duration of the notification
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
Nearby.ChatMessage</summary>

---

#### Send a chat message to all players within a specified distance of you

##### `Client`
##### Lib.Nearby.ChatMessage(distance, message)

#### Parameters
- **distance**: number - The distance to send the chat message to players within
- **message**: string - The message to send to players
#### Return
- **return**: boolean, string? - true if successful, false and error message if not

---
</details>

<details><summary markdown="span">
Nearby.Coords</summary>

---

#### Get players near a specified entity or coordinates

##### `Server`
##### Lib.Nearby.Coords(v3, distance)

#### Parameters
- **v3**: number | vector3 - The entity or coordinates to get players near
- **distance**: number - The distance to get players near
#### Return
- **return**: number[] - The players near the entity or coordinates

---
</details>

<details><summary markdown="span">
Nearby.RunOn</summary>

---

#### Run a callback on all players within a specified distance of you

##### `Server`
##### Lib.Nearby.RunOn(idEntityOrCoords, distance, cb)

#### Parameters
- **idEntityOrCoords**: number | vector3 - The entity or coordinates to run the callback on players around
- **distance**: number - The distance to run the callback on players within
- **cb**: fun(id: number) - The callback function

---
</details>

<details><summary markdown="span">
Nearby.Notify</summary>

---

#### Notify all players within a specified distance of you

##### `Server`
##### Lib.Nearby.Notify(idEntityOrCoords, distance, message, type, duration)

#### Parameters
- **idEntityOrCoords**: number | vector3 - The entity or coordinates to notify players around
- **distance**: number - The distance to notify players within
- **message**: string - The message to send to players
- **type**: "success" | "error" - The type of notification to send
- **duration**: number - The duration of the notification

---
</details>

<details><summary markdown="span">
Nearby.ChatMessage</summary>

---

#### Send a chat message to all players within a specified distance of you

##### `Server`
##### Lib.Nearby.ChatMessage(idEntityOrCoords, distance, message)

#### Parameters
- **idEntityOrCoords**: number | vector3 - The entity or coordinates to send the chat message to players around
- **distance**: number - The distance to send the chat message to players within
- **message**: string - The message to send to players

---
</details>

