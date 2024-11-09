# Lib
## Install
To utilise the lib, please add the following to your resources fxmanifest.lua (Ideally at the top):
```lua
shared_script "lib/init.lua"
```
This will import the init file, giving you access to two new global variables.
- **Lib**  - provides all the lib functions.
- **Cache** - provides quick access to cached values.

Please note: Importing the lib this way, due to the code structure, adds **minimal** memory usage to your resource.
Lib has been designed to be performant and optimised to the best of my knowledge.

Lib is an empty table, with a metatable to handle indexing and provide functionality.
Cache is a small object, with a small amount of data. Although regularly updated.

lib resource itself will typically run around 0.01ms. This is due to the cache loop.
This **minor** CPU usage, provides alot of benefit to overall performance, by utilising Cache.

## Docs
Documentation is provided in Docs/docs.html.
Open this file with your browser. This is a local file, no network connection required to use.
