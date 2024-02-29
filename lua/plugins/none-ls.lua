return {
   'jay-babu/mason-null-ls.nvim',
    dependencies = {
        "williamboman/mason.nvim",
        "nvimtools/none-ls.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup()
        require("mason-null-ls").setup({
            ensure_installed = { "stylua", "goimports", "eslint_d", "prettier" },
            handlers = {
                stylua = function(source_name, methods)
                    null_ls.register(null_ls.builtins.formatting.stylua)
                    null_ls.register(null_ls.builtins.formatting.prettier)
                    null_ls.register(null_ls.builtins.diagnostics.eslint_d)
                end
            }
        })
    end,
}
