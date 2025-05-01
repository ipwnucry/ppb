return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys =
    {
        {'<leader>ff', "<cmd>Telescope find_files<cr>", desc = "Find file"},
        {'<leader>fg', "<cmd>Telescope git_files<cr>", desc = "Find git file"},
        { '<leader>fl', "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
        {
            "<leader>fs",
            function()
                require("telescope.builtin").grep_string({
                    search = vim.fn.input("Grep > ")
                })
            end,
            desc = "Goto Symbol",
        },
    },

}



--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
