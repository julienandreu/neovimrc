return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = true,
        setup = function()
            options = {
                theme = "horizon"
            }
        end
    },
}
