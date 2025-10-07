vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>")
require("telescope").setup {
  extensions = {
    file_browser = {
      cwd_to_path = false,
      },
    },
  }
