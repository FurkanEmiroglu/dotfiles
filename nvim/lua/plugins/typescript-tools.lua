return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},

    config = function()
      require("typescript-tools").setup {
        on_attach = function(client, bufnr)
          -- Add your custom on_attach logic here, for example:
          -- Bind keys or configure LSP settings for this buffer.
          -- Example: vim.api.nvim_buf_set_keymap(bufnr, ...)
        end,
        handlers = {
          -- Define your custom handlers here if needed
          -- Example: ["textDocument/hover"] = custom_hover_handler,
        },
        settings = {
          separate_diagnostic_server = true,
          publish_diagnostic_on = "insert_leave",
          expose_as_code_action = {},
          tsserver_path = nil,
          tsserver_plugins = {},
          tsserver_max_memory = "auto",
          tsserver_format_options = {},
          tsserver_file_preferences = {},
          tsserver_locale = "en",
          complete_function_calls = false,
          include_completions_with_insert_text = true,
          code_lens = "off",
          disable_member_code_lens = true,
          jsx_close_tag = {
            enable = false,
            filetypes = { "javascriptreact", "typescriptreact" },
          },
        },
      }
    end,
  },
}
