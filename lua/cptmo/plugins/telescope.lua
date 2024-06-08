return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()

    local builtin = require('telescope.builtin')
    local telescope = require('telescope')

    telescope.setup{
      defaults = {
        layout_config = {
          prompt_position = 'top',
        },
        prompt_prefix = '  ',
        sorting_strategy = 'ascending',
      },
      pickers = {
        find_files = {
          find_command = {'rg', '--files', '--hidden', '-g', '!.git'},
          layout_config = {
            height = 0.70
          }
        },
        buffers = {
          show_all_buffers = true
        },
        live_grep = {
          previewer = false,
          theme = "dropdown"
        },
        git_status = {
          git_icons = {
            added = " ",
            changed = " ",
            copied = " ",
            deleted = " ",
            renamed = "➡",
            unmerged = " ",
            untracked = " ",
          },
          previewer = false,
          theme = "dropdown"
        }
      }
    }

    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-f>', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)
    vim.keymap.set('n', '<C-s>', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)
  end
}
