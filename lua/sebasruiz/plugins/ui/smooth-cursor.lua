return {
  "gen740/SmoothCursor.nvim",
  config = function()
    local smoothcursor = require("smoothcursor")
    local autocmd = vim.api.nvim_create_autocmd

    smoothcursor.setup({ cursor = "", type = "default" })

    local modes = {
      n = { fg = "#01cde5", icon = " " },
      v = { fg = "#0173e5", icon = "󰮔 " },
      V = { fg = "#0173e5", icon = " " },
      ["\22"] = { fg = "#0173e5", icon = " " },
      i = { fg = "#4bdf59", icon = " " },
    }

    autocmd({ "ModeChanged" }, {
      callback = function()
        local current_mode = vim.fn.mode()
        local mode_settings = modes[current_mode]

        if mode_settings then
          vim.api.nvim_set_hl(0, "SmoothCursor", { fg = mode_settings.fg })
          vim.fn.sign_define("smoothcursor", { text = mode_settings.icon })
        end
      end,
    })
  end,
}
