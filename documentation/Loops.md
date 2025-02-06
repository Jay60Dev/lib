# Loops
---
<details><summary markdown="span">
Loop</summary>

---

#### A loop function to be called every frame.

##### `Shared`
##### Lib.Loop(cb, options, ...)

#### Parameters
- **cb**: fun(...: any): boolean - The function to be called every frame. If false is returned the loop will stop
- **options**: table - The options for the loop. if condition is defined and returns true the loop will stop, timout will stop the loop after that time, timer changes the wait time. Thread is if you want to run the loop in a thread
    - **timer?**: number
    - **timeout?**: number
    - **thread?**: boolean
    - **condition?**: fun(): boolean
- **...**: any - The arguments to pass to the callback

---
</details>

