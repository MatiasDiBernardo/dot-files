return {
    {
      "epwalsh/obsidian.nvim",
      version = "*",  -- recommended, use latest release instead of latest commit
      lazy = true,
      ft = "markdown",
      dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",
      },
      keys = {
          { "<leader>on", "<cmd>ObsidianTemplate note<cr>", desc = "Obs note template" },
          { "<leader>ol", "<cmd>ObsidianTemplate litrev<cr>", desc = "Obs template literature" },
      },
      opts = {
        workspaces = {
            {
            name = "Notardas",
            path = "~/Vault/Notardas",
            },
        },
        disable_frontmatter = true,
        templates = {
            subdir = "Templates",
            date_format = "%d-%m-%Y",
            time_format = "%H:%M:%S",
        },
        -- Desable ui to use markdown render
        -- ui = {enable = false},
        completion = {
        -- Set to false to disable completion.
        nvim_cmp = true,
        -- Trigger completion at 2 chars.
        min_chars = 2,
            },
        },
    },
}
