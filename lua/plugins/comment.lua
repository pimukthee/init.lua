return {
    "numToStr/Comment.nvim",
    config = function()
        local comment = require("Comment.api")
        vim.keymap.set("n", "<leader>/", comment.toggle.linewise.current, {})
        vim.keymap.set("v", "<leader>/", "<ESC><cmd> lua require(\"Comment.api\").toggle.linewise(vim.fn.visualmode())<CR>", {})
    end,
}
