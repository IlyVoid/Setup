return {
   "hardyrafael17/norminette42.nvim",
        ft = "c",  -- Load this plugin for C files
        config = function()
            local norminette = require("norminette")
            norminette.setup({
                runOnSave = true,     -- Check for errors after saving
                maxErrorsToShow = 10,  -- Only show up to 5 errors
                active = true,        -- Activate the plugin
            })
        end,
}
