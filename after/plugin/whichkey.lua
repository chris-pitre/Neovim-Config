local wk = require("which-key")

local setup = {
    show_help = true,
}

local mappings = {
    q = {"<cmd>wq<cr>", "[q]uit and write"},
    Q = {"<cmd>q<cr>", "[Q]uit"},
    w = {"<cmd>w<cr>", "[w]rite"},

    --Undotree
    u = {"<cmd>lua require('undotree').toggle()<cr>", "[u]ndotree"},

    --Telescope
    f = {
        name = "[f]ind",
        f = {"<cmd>lua require('telescope.builtin').find_files()<cr>", "[f]iles"},
        g = {"<cmd>lua require('telescope.builtin').live_grep()<cr>", "Live [g]rep"},
        b = {"<cmd>lua require('telescope.builtin').buffers()<cr>", "[b]uffers"},
        h = {"<cmd>lua require('telescope.builtin').help_tags()<cr>", "[h]elp tags"},
    },

    --Packer
    p = {
        name = "[p]acker",
        c = {"<cmd>PackerCompile<cr>", "[c]ompile"},
        i = {"<cmd>PackerInstall<cr>", "[i]nstall"},
        s = {"<cmd>PackerSync<cr>", "[s]ync"},
        S = {"<cmd>PackerStatus<cr>", "[S]tatus"},
        u = {"<cmd>PackerUpdate<cr>", "[u]pdate"},
    },

    g = {
        name = "[g]it commands",
        w = {"<cmd>Gwrite<cr>", "[w]rite"},
        r = {"<cmd>Gread<cr>", "[r]ead"},
        g = {"<cmd>vertical rightbelow G<cr>", "[g]it status"},
        p = {"<cmd>Git push<cr>", "[p]ush"},
    },

}

local opts = {prefix = '<leader>'}

wk.setup(setup)
wk.register(mappings, opts)


-- vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true })
