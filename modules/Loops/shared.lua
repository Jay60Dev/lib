Lib.Loop = function(cb, timer, ...)
    local args = { ... }
    local sleep, timeout = timer or 0, 0
    local timerStart = GetGameTimer()

    if type(timer) == "table" then
        sleep = timer.timer
        timeout = timer.timeout
    end

    CreateThread(function()
        while true do
            cb(table.unpack(args))
            if timeout > 0 and GetGameTimer() - timerStart > timeout then break end
            Wait(sleep)
        end
    end)
end