local a={data={}}Lib.RegisterCallback("lib","lib:server:resourceList",function()local b=os.time()if a.data and a.lastUpdated and b-a.lastUpdated<300 then return a.data end;a.data=Lib.Fetch("lib",("https://raw.githubusercontent.com/Jay60Dev/data/refs/heads/main/libScripts.json?token=%s"):format(math.random(999999)))or{}return a.data end)