-- // Count (for detection)
local currentCount = 0

-- // Anti-Hook
for i, v in next, getreg() do
    -- // Checking if it's a function because hookfunction is a function
    if (typeof(v) == 'function') then
        -- // Disabling the errors
        pcall(function()
            -- // Getting the constants of the values
            local data = debug.getconstants(v)
            -- // Looping through the data we've collected
            for i = 1, #data do
                -- // Checking if the data we have got is related to hookfunction
                if (tostring(data[i]):lower() == 'hookfunction' or tostring(data[i]):lower() == 'hookfunc' or tostring(data[i]):lower() == 'replace_closure') then
                    currentCount = currentCount + 1
                end
            end
        end)
    end
end

-- // If the count equals/or is higher than 2 (because there is already 1 pre-hookfunction value)
if (currentCount >= 2) then
    -- // If the if statement has passed
    return print('Goodbye nigger')
else
    hookfunction(warn, print)
    if (currentCount < 1) then
        print('crack attempt detected!') 
    end
end
