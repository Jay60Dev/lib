for key, funcs in pairs(Lib) do
    if type(funcs) == "table" then
        for func, value in pairs(funcs) do
            local name = ("%s.%s"):format(key, func)
            exports(name, value)
        end
    end

    if type(funcs) == "function" then
        exports(key, funcs)
    end
end