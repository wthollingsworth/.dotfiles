return {
  "ckolkey/ts-node-action",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function() -- Optional
    local node_action = require("ts-node-action")
    node_action.setup({})

    local wk = require("which-key")
    wk.register({
      ["na"] = { node_action.node_action, "Trigger Node Action" },
    }, { mode = "n", prefix = "<leader>" })
  end,
}
