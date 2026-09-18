return {
  {
    "iamcco/markdown-preview.nvim",
    -- init (not config) because mkdp reads these globals when the plugin
    -- loads; setting them afterwards is too late.
    init = function()
      -- Keep the browser preview open when leaving the markdown buffer.
      -- Default is 1, which registers `autocmd BufHidden -> preview_close()`,
      -- so the tab dies as soon as you switch buffers.
      vim.g.mkdp_auto_close = 0
    end,
  },
}
