local wk = require("which-key")

local setup = {
    show_help = true,
}

local mappings = {
    q = {"<cmd>wq<cr>", "[q]uit and write"},
    Q = {"<cmd>q<cr>", "[Q]uit"},
    w = {"<cmd>w<cr>", "[w]rite"},
    t = {":terminal", "[t]erminal prompt"},

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

    -- Git
    g = {
        name = "[g]it commands",
        w = {"<cmd>Gwrite<cr>", "[w]rite"},
        r = {"<cmd>Gread<cr>", "[r]ead"},
        g = {"<cmd>vertical rightbelow G<cr>", "[g]it status"},
        p = {"<cmd>Git push<cr>", "[p]ush"},
    },

    -- Buffer tabs
    [","] = {"<cmd>BufferPrevious<cr>", "Previous Buffer"},
    ["."] = {"<cmd>BufferNext<cr>", "Next Buffer"},

    ["<"] = {"<cmd>BufferMovePrevious<cr>", "Move Buffer Left"},
    [">"] = {"<cmd>BufferMoveNext<cr>", "Move Buffer Right"},

    b = {
        name = "[b]uffer",
        ["1"] = {"<cmd>BufferGoto 1<cr>", "Go to Buffer [1]"},
        ["2"] = {"<cmd>BufferGoto 2<cr>", "Go to Buffer [2]"},
        ["3"] = {"<cmd>BufferGoto 3<cr>", "Go to Buffer [3]"},
        ["4"] = {"<cmd>BufferGoto 4<cr>", "Go to Buffer [4]"},
        ["5"] = {"<cmd>BufferGoto 5<cr>", "Go to Buffer [5]"},
        ["6"] = {"<cmd>BufferGoto 6<cr>", "Go to Buffer [6]"},
        ["7"] = {"<cmd>BufferGoto 7<cr>", "Go to Buffer [7]"},
        ["8"] = {"<cmd>BufferGoto 8<cr>", "Go to Buffer [8]"},
        ["9"] = {"<cmd>BufferGoto 9<cr>", "Go to Buffer [9]"},
        ["0"] = {"<cmd>BufferLast<cr>", "Go to last Buffer"},
        p = {"<cmd>BufferPin<cr>", "[p]in Buffer"},
        c = {"<cmd>BufferClose<cr>", "[c]lose Buffer"},
    },

    -- Tree
    e = {"<cmd>NvimTreeToggle<cr>", "Toggle tre[e]"},
}

local opts = {prefix = '<leader>'}

wk.setup(setup)
wk.register(mappings, opts)


-- vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true })
