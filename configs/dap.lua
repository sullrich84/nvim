-- require "plugins.dap"
local dap = require "dap"
local dapui = require "dapui"

-- Add listeners to automatically open and close dapui
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open {}
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close {}
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close {}
end

-- vscode-js-debug (js-debug-adapter in Mason)
require("dap-vscode-js").setup {
  debugger_path = vim.fn.stdpath "data" .. "/mason/packages/js-debug-adapter",
  debugger_cmd = { "js-debug-adapter" },
  adapters = {
    "pwa-node",
    "pwa-chrome",
    "pwa-msedge",
    "node-terminal",
    "pwa-extensionHost",
  },
}

dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    args = {
      vim.fn.stdpath "data" .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
      "${port}",
    },
  },
}

-- add configuration for typescript and javascript
for _, language in ipairs { "typescript", "javascript" } do
  dap.configurations[language] = {
    {
      name = "Deno launch",
      request = "launch",
      type = "pwa-node",
      program = "${file}",
      cwd = "${workspaceFolder}",
      runtimeExecutable = vim.fn.getenv "HOME" .. "/.deno/bin/deno",
      runtimeArgs = {
        "run",
        "--inspect-wait",
        "--allow-all",
      },
      attachSimplePort = 9229,
    },
  }
end
