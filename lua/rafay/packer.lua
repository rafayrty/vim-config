-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  -- For StatusLine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  -- For Buffers
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }
  --use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', commit = '9bfaf62e42bdcd042df1230e9188487e62a112c0' })
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use({
      "glepnir/lspsaga.nvim",
      opt = true,
      branch = "main",
      event = "BufReadPost",
      config = function()
          require("lspsaga").setup({})
      end,
      requires = {
          {"nvim-tree/nvim-web-devicons"},
          --Please make sure you install markdown and markdown_inline parser
          {"nvim-treesitter/nvim-treesitter"}
      }
  })

--use {
  --'VonHeikemen/lsp-zero.nvim',
  --branch = 'v2.x',
  --requires = {
    ---- LSP Support
    --{'neovim/nvim-lspconfig'},             -- Required
    --{                                      -- Optional
      --'williamboman/mason.nvim',
      --run = function()
        --pcall(vim.cmd, 'MasonUpdate')
      --end,
    --},
    --{'williamboman/mason-lspconfig.nvim'}, -- Optional

    ---- Autocompletion
    --{'hrsh7th/nvim-cmp'},     -- Required
    --{'hrsh7th/cmp-nvim-lsp'}, -- Required
    --{'L3MON4D3/LuaSnip'},     -- Required

      ---- For Prettier
      --{ 'jose-elias-alvarez/null-ls.nvim' },
      --{ 'MunifTanjim/prettier.nvim' }

  --}
--}


  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('nvim-lua/plenary.nvim')

  --FOR COC
--use('neoclide/coc.nvim')
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },

      -- For Prettier
      { 'jose-elias-alvarez/null-ls.nvim' },
      { 'MunifTanjim/prettier.nvim' }
    }
  }



use {
  'glepnir/dashboard-nvim',
  requires = {'nvim-tree/nvim-web-devicons'}
}

  use("windwp/nvim-ts-autotag")
  use("folke/zen-mode.nvim")
  use("tpope/vim-commentary")
  --use("ryanoasis/vim-devicons")
  use("nvim-tree/nvim-web-devicons")
  --use("vim-airline/vim-airline")
  use("preservim/nerdcommenter")
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
  use('jwalton512/vim-blade')
  use 'karb94/neoscroll.nvim'
  use('ggandor/leap.nvim')
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

use({
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    module = "persistence",
    config = function()
      require("persistence").setup()
    end,
  })

  use('chaoren/vim-wordmotion')


end)
