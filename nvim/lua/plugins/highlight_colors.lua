return {
    "brenoprata10/nvim-highlight-colors",
    event = "VeryLazy",  -- Load the plugin lazily
    config = function()
        -- Ensure termguicolors is enabled
        vim.opt.termguicolors = true
        -- Initialize the plugin with default settings
        require('nvim-highlight-colors').setup({})
    end,
}
