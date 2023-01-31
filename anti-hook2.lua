--// very shitty like the other one
local antihook = 0
for _, v in next, getreg() do
    if (type(v) == 'function') then
        pcall(function()
            local data = debug.getconstants(v)
            for i = 1, #data do
                if (tostring(data[i]):match('hookfunction')) then
                    antihook = antihook + 1
                end
            end
        end)
    end
end
if (antihook > 1) then
    print('crack attempt') 
end
