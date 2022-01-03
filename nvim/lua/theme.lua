local dn = require('dark_notify')

dn.run({
        onchange = function(mode)
        if mode == 'dark' then
            vim.o.background = "dark"
        elseif mode == 'light' then
            vim.o.background = "light"
        end
    end,
})

-- Draw the blinds for now
dn.set_mode("dark")

-- Swap to whatever it isn't currently
dn.toggle()

-- Match the system
dn.update()

-- Stop reacting to changes
dn.stop()

-- Start reacting again, with previous settings
dn.run()

