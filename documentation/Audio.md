# Audio
---
<details><summary markdown="span">
Audio.Play</summary>

---

#### Play an audio file

##### `Client`
##### Lib.Audio.Play(file, options?)

#### Parameters
- **file**: string - The .ogg file name
- **options?**: table
    - **volume**: number
    - **looped?**: boolean
    - **onEnd?**: table
        - **file**: audioFileName
        - **options**: audioOptions
#### Example
```lua
Lib.Audio.Play("soundFile", {volume = 0.5, looped = true})

```

---
</details>

<details><summary markdown="span">
Audio.Pause</summary>

---

#### Pause an audio file

##### `Client`
##### Lib.Audio.Pause(file)

#### Parameters
- **file**: string - The .ogg file name
#### Example
```lua
Lib.Audio.Pause("soundFile")

```

---
</details>

<details><summary markdown="span">
Audio.Stop</summary>

---

#### Stop an audio file

##### `Client`
##### Lib.Audio.Stop(file)

#### Parameters
- **file**: string - The .ogg file name
#### Example
```lua
Lib.Audio.Stop("soundFile")

```

---
</details>

<details><summary markdown="span">
AudioStopAll</summary>

---

#### Stop all audio files

##### `Client`
##### Lib.AudioStopAll()

#### Parameters
#### Example
```lua
Lib.Audio.StopAll()

```

---
</details>

