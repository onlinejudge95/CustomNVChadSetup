local base = require("plugins.configs.lspconfig")
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

local on_attach = base.on_attach
local capabilities = base.capabilities

local language_servers = {
  ["pyright"] = {
    ["filetypes"] = {"python"},
  },
  ["gopls"] = {
    ["filetypes"] = {"go", "gomod", "gowork", "gotmpl"},
    ["cmd"] = {"gopls"},
    ["root_dir"] = util.root_pattern("go.work", "go.mod", ".git"),
    ["settings"] = {
      gopls = {
        completeUnimported = true,
        usePlaceholders = true,
        analyses = {
          unusedparams = true,
        },
      },
    },
  },
  ["tsserver"] = {
    ["filetypes"] = {"javascript", "javascriptreact", "typescript", "typescriptreact"}
  },
  ["tailwindcss"] = {
    ["filetypes"] = {"html", "css", "scss", "markdown", "mdx"}
  },
  ["eslint"] = {
    ["filetypes"] = {"javascript", "javascriptreact", "typescript", "typescriptreact"}
  },
}

for key, value in pairs(language_servers) do
  if key == "gopls" then
    lspconfig["gopls"].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = value["filetypes"],
      cmd = value["cmd"],
      root_dir = value["root_dir"],
      settings = value["settings"],
    }
  else
    lspconfig[key].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = value["filetypes"],
    }
  end
end
