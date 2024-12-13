return{
{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
},

{
    'terrortylor/nvim-comment',
    keys = {
            { "<leader>{", ":CommentToggle<cr>", mode={'n', 'v'}},
        },
    config = function()
      require("nvim_comment").setup({create_mappings=false})
    end

}


}

