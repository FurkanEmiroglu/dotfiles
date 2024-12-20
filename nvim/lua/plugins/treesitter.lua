local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "c_sharp" },  -- Add C# parser here
            highlight = {
                enable = true,              -- Enable syntax highlighting
                additional_vim_regex_highlighting = false,
            },
        }
    end
}

return { M }
