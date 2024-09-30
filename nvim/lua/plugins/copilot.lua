return {
  {
    "github/copilot.vim",
    config = function()
      -- Disable default mapping, we will set our own
      vim.g.copilot_no_tab_map = true
      
      -- Set the keybind for Copilot to Ctrl+M in insert mode
      vim.api.nvim_set_keymap("i", "<C-M>", 'copilot#Accept("<C-R>")', { silent = true, expr = true })

      -- Optional: Set other keybinds if needed, or tweak further
    end,
  },
}
