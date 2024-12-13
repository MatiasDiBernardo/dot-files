return{
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "folke/neodev.nvim",  -- Not neccesary but good for configs
    },
    config = function()
        require("neodev").setup()
        -- Cada servir que agregue tiene que ir acá
        require("lspconfig").lua_ls.setup({})
        require("lspconfig").pyright.setup({})
    end

}
