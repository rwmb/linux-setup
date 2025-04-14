-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = {
        'nvim-lua/plenary.nvim',
      },
      config = function()
        require('telescope').setup {
          pickers = {
            find_files = {
              -- theme = "ivy",
              file_ignore_patterns = {
                "node_modules"
              }
            }
          }
        }
        vim.keymap.set("n", "<space>fd", require('telescope.builtin').find_files)
        vim.keymap.set("n", "<space>fg", require('telescope.builtin').live_grep)
        vim.keymap.set("n", "<space>fc", function()
          require('telescope.builtin').find_files {
            cwd = "/root/.config"
          }
        end)
      end
}
