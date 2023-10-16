local plugins = {
  {
    'lervag/vimtex',
    config = function( )
      vim.cmd("filetype plugin indent on")
      vim.cmd("syntax enable")
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.cmd("set conceallevel=1")
    end
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        "gopls",
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end
  },
  {
    'mfussenegger/nvim-dap',
  },
  {
    'leoluz/nvim-dap-go',
    ft = "go",
    dependencies = 'mfussenegger/nvim-dap',
    config = function(_, opts)
      require("dap-go").setup(opts)
      require('core.utils').load_mappings("dap_go")
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings("gopher")
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
}
return plugins
