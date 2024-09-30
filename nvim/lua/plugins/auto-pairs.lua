return {
    'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup({
                check_ts = true,  -- Enable Treesitter integration
                ts_config = {
                    lua = { "string" },  -- Don't add pairs in Lua string treesitter nodes
                    javascript = { "template_string" },  -- Don't add pairs in JavaScript template_string nodes
                    java = false,  -- Don't check treesitter on Java
                    c = { "string", "comment" },  -- Handle strings and comments in C
                    cpp = { "string", "comment" },  -- Handle strings and comments in C++
                },
                disable_filetype = { "TelescopePrompt", "vim" },  -- Disable in specific file types
            })
        end,
}
