return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- GENERAL
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use "jiangmiao/auto-pairs"
  use "norcalli/nvim-colorizer.lua"
  use "tpope/vim-fugitive"
  use "vimwiki/vimwiki"
  use "lewis6991/gitsigns.nvim"
  use "theprimeagen/harpoon"
  use "mbbill/undotree"
  use "nvim-lualine/lualine.nvim"
  use "stevearc/dressing.nvim"
  use "akinsho/toggleterm.nvim"
  use "jose-elias-alvarez/null-ls.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "rose-pine/neovim"

  use { "nvim-telescope/telescope.nvim", tag = "0.1.8", requires = { { "nvim-lua/plenary.nvim" } } }
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    after = "nvim-web-devicons",
  })

  -- LANG
  use "mfussenegger/nvim-jdtls"

  -- DAP
  use "nvim-telescope/telescope-dap.nvim"
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
  use "folke/neodev.nvim"
  use "leoluz/nvim-dap-go"

  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      { "neovim/nvim-lspconfig" },
      {
        "williamboman/mason.nvim",
        run = function()
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      { "williamboman/mason-lspconfig.nvim" },
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lua" },
      { "rafamadriz/friendly-snippets" },
    }
  }
end)
