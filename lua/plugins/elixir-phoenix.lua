return {
  {
    "williamboman/mason-lspconfig.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "elixirls" })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "elixir", "heex" })
      end
    end,
  },
  {
    "AstroNvim/astrolsp",
    optional = true,
    opts = {
      config = {
        tailwindcss = {
          init_options = {
            userLanguages = {
              heex = "html-eex",
              elixir = "html-eex",
            },
          },
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  'class[:]\\s*"([^"]*)"',
                },
              },
            },
          },
        },
        -- 添加htmllsp配置
        -- html = {
        --   filetypes = { "html", "heex", "elixir" }, -- 确保支持 heex 和 elixir
        --   init_options = {
        --     provideFormatter = true,
        --   },
        -- },
        emmet_ls = {
          filetypes = { "html", "heex", "elixir" }, -- 确保支持 heex 和 elixir
        },
      },
    },
  },
}
