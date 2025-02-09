return {
  "rcarriga/nvim-notify",
  event = "VimEnter",
  config = function()
    require("notify").setup({
      fps = 60,
      stages = "slide",
      timeout = 1000,
      render = "compact",
      max_height = function()
        return math.floor(vim.o.lines * 0.30)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.35)
      end,
    })
  end,
}
