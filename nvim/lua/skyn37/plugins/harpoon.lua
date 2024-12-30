return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  keys = function()
    local harpoon = require 'harpoon'
    return {
      {
        '<leader>ha',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
      },
     {
        '<leader>hm',
        function()
          harpoon:list():add()
        end,
        desc = 'Harpoon Add file',
      },
      {
        '<leader>hn',
        function()
          harpoon:list():next()
        end,
        desc = 'Harpoon Prev',
      },
      {
        '<leader>hp',
        function()
          harpoon:list():prev()
        end,
        desc = 'Harpoon Next',
      },
    }
  end,
  config = function()
    require('telescope').load_extension 'harpoon'
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
}



