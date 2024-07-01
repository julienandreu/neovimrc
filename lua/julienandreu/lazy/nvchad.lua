return {
    { "nvim-lualine/lualine.nvim", enabled = true },
    { "akinsho/bufferline.nvim", enabled = true },
    { "goolord/alpha-nvim", enabled = true },
    {
      "kingavatar/nvchad-ui.nvim",
      branch = "v2.0",
      lazy = false,
      config = function()
        require("nvchad_ui").setup({
          lazyVim = true,
          statusline = {
                    separator_style = "default",
                    theme = "default",
                    lualine = true
                },
          theme_toggle = { "tokyonight", "rose-pine" },
          nvdash = { load_on_startup = true },
      })

      -- rename nvchad
      vim.keymap.set("n", "<leader>cn", require("nvchad_ui.renamer").open, { desc = "nvchad Rename" })
      end,
    },
}
