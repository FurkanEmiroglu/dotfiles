return {
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup()
      -- disable netrw at the very start of your init.lua
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- optionally enable 24-bit colour
      vim.opt.termguicolors = true
      vim.keymap.set("n", "<C-w>", function() vim.cmd("NvimTreeFocus") end)
      vim.keymap.set("n", "<C-q>", function() vim.cmd("NvimTreeToggle") end)
    end,
  },
}

