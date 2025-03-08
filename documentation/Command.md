# Command
---
<details><summary markdown="span">
Command</summary>

---
##### `Shared`
##### Lib.Command(name, cb, data, permission, preventSuggestions)

#### Parameters
- **name**: string - The command name
- **cb**: fun(source: number, args: any[]) - The callback function
- **data**: table - The command data
    - **help**: string
    - **params**: string
- **permission**: boolean - The permission level required to run the command
- **preventSuggestions**: boolean - Prevents the command from being added to the chat suggestions
#### Example
```lua
Lib.Command("mycommand", function(source, args)
    print(args[1])
end, {help="My Command Help Text"}, false, false)

```

---
</details>

