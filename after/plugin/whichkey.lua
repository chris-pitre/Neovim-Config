local wk = require("which-key")

local setup = {
    show_help = true,
}

wk.add({
    { "<leader>,", "<cmd>BufferPrevious<cr>", desc = "Previous Buffer" },
    { "<leader>.", "<cmd>BufferNext<cr>", desc = "Next Buffer" },
    { "<leader><", "<cmd>BufferMovePrevious<cr>", desc = "Move Buffer Left" },
    { "<leader>>", "<cmd>BufferMoveNext<cr>", desc = "Move Buffer Right" },
    { "<leader>Q", "<cmd>q<cr>", desc = "[Q]uit" },
    { "<leader>b", group = "[b]uffer" },
    { "<leader>b0", "<cmd>BufferLast<cr>", desc = "Go to last Buffer" },
    { "<leader>b1", "<cmd>BufferGoto 1<cr>", desc = "Go to Buffer [1]" },
    { "<leader>b2", "<cmd>BufferGoto 2<cr>", desc = "Go to Buffer [2]" },
    { "<leader>b3", "<cmd>BufferGoto 3<cr>", desc = "Go to Buffer [3]" },
    { "<leader>b4", "<cmd>BufferGoto 4<cr>", desc = "Go to Buffer [4]" },
    { "<leader>b5", "<cmd>BufferGoto 5<cr>", desc = "Go to Buffer [5]" },
    { "<leader>b6", "<cmd>BufferGoto 6<cr>", desc = "Go to Buffer [6]" },
    { "<leader>b7", "<cmd>BufferGoto 7<cr>", desc = "Go to Buffer [7]" },
    { "<leader>b8", "<cmd>BufferGoto 8<cr>", desc = "Go to Buffer [8]" },
    { "<leader>b9", "<cmd>BufferGoto 9<cr>", desc = "Go to Buffer [9]" },
    { "<leader>bc", "<cmd>BufferClose<cr>", desc = "[c]lose Buffer" },
    { "<leader>bp", "<cmd>BufferPin<cr>", desc = "[p]in Buffer" },
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle tre[e]" },
    { "<leader>f", group = "[f]ind" },
    { "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", desc = "[b]uffers" },
    { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "[f]iles" },
    { "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", desc = "Live [g]rep" },
    { "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", desc = "[h]elp tags" },
    { "<leader>g", group = "[g]it commands" },
    { "<leader>gg", "<cmd>vertical rightbelow G<cr>", desc = "[g]it status" },
    { "<leader>gp", "<cmd>Git push<cr>", desc = "[p]ush" },
    { "<leader>gr", "<cmd>Gread<cr>", desc = "[r]ead" },
    { "<leader>gw", "<cmd>Gwrite<cr>", desc = "[w]rite" },
    { "<leader>p", group = "[p]acker" },
    { "<leader>pS", "<cmd>PackerStatus<cr>", desc = "[S]tatus" },
    { "<leader>pc", "<cmd>PackerCompile<cr>", desc = "[c]ompile" },
    { "<leader>pi", "<cmd>PackerInstall<cr>", desc = "[i]nstall" },
    { "<leader>ps", "<cmd>PackerSync<cr>", desc = "[s]ync" },
    { "<leader>pu", "<cmd>PackerUpdate<cr>", desc = "[u]pdate" },
    { "<leader>q", "<cmd>wq<cr>", desc = "[q]uit and write" },
    { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "[t]erminal prompt" },
    { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>", desc = "[u]ndotree" },
    { "<leader>w", "<cmd>w<cr>", desc = "[w]rite" },
})
 

wk.setup(setup)


-- vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true })
