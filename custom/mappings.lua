local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"},
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpt"] = {
      function ()
        require("dap-python").test_method()
      end,
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function ()
        require("dap-go").debug_test()
      end,
    },
    ["<leader>dgl"] = {
      function ()
        require("dap-go").debug_last()
      end
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add JSON struct tags"
    },
  },
}

return M
