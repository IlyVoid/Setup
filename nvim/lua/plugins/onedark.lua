return {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    name = "onedark",
    lazy = false,
    config = function()
        require("onedarkpro").setup {
            style = "darker",  -- Choose 'dark', 'darker', 'cool', etc.
            colors = {
                bg = "#000000",  -- Dark background for depth
                fg = "#abb2bf",  -- Soft white for readability
                green = "#98c379",  -- Soft green for success
                blue = "#61afef",  -- Bright sky blue for information
                magenta = "#c678dd",  -- Bright magenta for emphasis
                cyan = "#56b6c2",  -- Bright cyan for strings
                orange = "#d19a66",  -- Soft orange for highlights
                pink = "#ff79c6",  -- Neon pink for variables and important elements
                keyword_color = "#e06c75",  -- Softer red color for keywords
                type_color = "#d19a66",  -- Soft orange for types
                include_color = "#5c6370"  -- Subtle grayish blue for #include statements
            },
            highlights = {
                Comment = { fg = "#5c6370", italic = true },  -- Light gray comments in italics
                String = { fg = "#56b6c2", italic = true },  -- Bright cyan strings in italics
                Function = { fg = "#00FF7F", bold = true, underline=true },  -- Neon green functions with underline
                Identifier = { fg = "#ff79c6", italic = true },  -- Neon pink identifiers in italics (for variables)
                Keyword = { fg = "#e06c75", bold = true, italic=true },  -- Softer red keywords in bold and italics
                Conditional = { fg = "#e06c75", bold=true, italic=true },  -- Match if statements to keywords
                Number = { fg = "#d19a66" },  -- Soft orange numbers for visibility
                Boolean = { fg = "#98c379" },  -- Soft green booleans for distinction
                Type = { fg = "#FFA500", bold=true, italic=true },  -- Bright orange types with italics for emphasis
                Operator = { fg = "#FFA500" },  -- Soft orange operators for clarity
                Constant = { fg = "#00FF7F" },  -- Neon green constants to stand out
                PreProc = { fg="#61afef", italic=true },   -- Bright sky blue preprocessor directives in italics
                FunctionCall = { fg="#00FFFF", bold=true, underline=true},   -- Bold bright cyan function calls with underline 
                IncludeStatement = { fg="#5c6370" }  -- Subtle color for #include statements to reduce prominence
            },
            options = {
                transparent = false,  -- Set to true if you want a transparent background
                terminal_colors = true,  -- Change terminal colors based on theme
            },
        }
        vim.cmd.colorscheme "onedark_dark"  -- Set the colorscheme to onedark_dark

        -- Set a nicer font style if your terminal supports it.
        vim.o.guifont="Fira Code:h12"   -- Example: Fira Code is a great choice (ensure it's installed)
        -- Other popular options include:
        -- vim.o.guifont="JetBrains Mono:h12"
        -- vim.o.guifont="Hack Nerd Font:h12"
    end,
}
