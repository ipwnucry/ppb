return {
    -- Other plugins...
    {
        "github/copilot.vim",
        config = function()
            -- Optional: Set Copilot keymaps or preferences here
            vim.g.copilot_no_tab_map = true -- Disable default <Tab> behavior
            vim.api.nvim_set_keymap("i", "<C-j>", "", { noremap = true, silent = true })
            vim.api.nvim_set_keymap("i", "<C-k>", "", { noremap = true, silent = true })

            -- Then set your custom bindings
            vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
            vim.api.nvim_set_keymap("i", "<C-k>", ":Copilot suggestion<CR>", { noremap = true, silent = true })
        end,
    },
}
