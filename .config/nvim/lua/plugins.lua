return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- GENERAL
  use "nvim-tree/nvim-tree.lua"
  use "HiPhish/rainbow-delimiters.nvim"
  use "jiangmiao/auto-pairs"
  use "norcalli/nvim-colorizer.lua"
  use "tpope/vim-fugitive"
  use "vimwiki/vimwiki"
  use "lewis6991/gitsigns.nvim"
  use "theprimeagen/harpoon"
  use "mbbill/undotree"
  use { "stevearc/dressing.nvim" }
  use { "nvim-telescope/telescope.nvim", tag = "0.1.4", requires = { { "nvim-lua/plenary.nvim" } } }
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use "craftzdog/solarized-osaka.nvim"

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use { "nvim-lualine/lualine.nvim", }

  -- DAP
  use "nvim-telescope/telescope-dap.nvim"
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
  use "folke/neodev.nvim"
  use "leoluz/nvim-dap-go"

  -- LANG
  use "mfussenegger/nvim-jdtls"
  --use "clojure-vim/vim-jack-in"
  --use "tpope/vim-dispatch"
  --use "Olical/conjure"

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
      { "L3MON4D3/LuaSnip" },
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
