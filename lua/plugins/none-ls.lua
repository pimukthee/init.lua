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
            ensure_installed = { "stylua", "goimports" },
            handlers = {
                stylua = function(source_name, methods)
                    null_ls.register(null_ls.builtins.formatting.stylua)
                end
            }
        })
    end,
}
