return {
    -- Other plugins...
    {
        "tpope/vim-fugitive",
        cmd = { "Git", "G" }, -- Lazy-load Fugitive commands
        config = function()
            -- Optional configuration for Fugitive
            vim.keymap.set("n", "<leader>gs", ":Git<CR>", { desc = "Git Status" })
            vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { desc = "Git Commit" })
            vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { desc = "Git Push" })
        end,
    },
}
