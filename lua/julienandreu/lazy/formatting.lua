return {
    "stevearc/conform.nvim",
    event = {
        "BufReadPre",
        "BufNewFile"
    },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier", "eslint" },
                lua = { "stylua" },
                python = { "isort", "black" },
            }
        })
    end
}
