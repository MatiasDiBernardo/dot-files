return{
   {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files"},
            { "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "Find Word On File"},
            { "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "Find word on buffer"},
        },
    },
}
