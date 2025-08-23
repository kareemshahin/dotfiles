return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = { },
  config = function()
    -- This must be done manually, not part of opts
    require('fzf-lua').register_ui_select()
  end,
}
