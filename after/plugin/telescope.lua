local builtin = require("telescope.builtin")

vim.keymap.set('n', 'gt', builtin.tags,            { desc = '[G]o to C[T]ags (telescope)', noremap = true })

