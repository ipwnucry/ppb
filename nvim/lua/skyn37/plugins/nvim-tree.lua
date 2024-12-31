return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- Optional for file icons
    },
    config = function()
        -- Enable `nvim-web-devicons`
        require("nvim-web-devicons").setup({
            default = true, -- Enable default icons
        })

        -- Setup `nvim-tree`
        require("nvim-tree").setup({
            git = {
                enable = true, -- Show git status in the file tree
            },
            view = {
                width = 30, -- Set the width of the file tree
                side = "left", -- File tree on the left
                number = true, -- Enable absolute line numbers
                relativenumber = true, -- Enable relative line numbers
                cursorline = true, -- Highlight the current line
            },
            renderer = {
                highlight_git = true, -- Highlight git status
                icons = {
                    show = {
                        git = true,
                        folder = true,
                        file = true,
                        folder_arrow = true,
                    },
                },
            },
            hijack_directories = {
                enable = true,
                auto_open = true, -- Automatically open the tree in directories
            },
            sync_root_with_cwd = true, -- Sync the tree root with the current working directory
            update_focused_file = {
                enable = true, -- Update the focused file in the tree
                update_root = true, -- Change the root to match the file's directory
            },
            actions = {
                open_file = {
                    quit_on_open = false, -- Keep the tree open after opening a file
                },
            },
        })

            
    end,
    keys = {
        { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle File Tree" }, -- Toggle nvim-tree
        { "<leader>r", ":NvimTreeRefresh<CR>", desc = "Refresh File Tree" }, -- Refresh file tree
        { "<leader>n", ":NvimTreeFindFile<CR>", desc = "Find Current File" }, -- Find current file in tree
    },
}
