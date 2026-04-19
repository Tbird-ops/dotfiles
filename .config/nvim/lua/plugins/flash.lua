return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    -- Enable jump labels for f t ,
    modes = {
      char = {
        jump_labels = true,
      },
      search = {
        enabled = true, -- enable search integration
      },
    },
  },
  keys = {
    -- Default search mode (multi-char capable)
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
  },
}
