local M = {}

M.general = {
    n = {
        ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left"},
        ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right"},
        ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down"},
        ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up"},
    }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

M.abc = {
  v = {
    ["J"] = {":m '>+1<CR>gv=gv", "Swap lines down"},
    ["K"] = {":m '<-2<CR>gv=gv", "Swap lines up"},
  },
  n = {
    ["J"] = {"mzJ`z", "Combine lines"},
    ["<C-d>"] = {"<C-d>zz", "Move screen down and center"},
    ["<C-u>"] = {"<C-u>zz", "Move screen up and center"},
    ["n"] = {"nzzzv", "Show previous search and go to first"},
    ["N"] = {"Nzzzv", "Show previous search and go to last"},
    ["<leader>Y"] = {"[[\"+Y]]", "idk"},
    ["<leader>d"] = {"[[_d]]", "idk2"}
  },

  x = {
    ["<leader>p"] = {"[[\"dP]]", "idk3"}
  }
}

return M
