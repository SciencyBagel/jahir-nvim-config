local custom_keywords = {
  -- Share these tags between todo-comments highlighting and the focused picker.
  WIP = { icon = " ", color = "#C77DFF" },
  STUDY = { icon = " ", color = "info" },
  REFAC = { icon = " ", color = "info" },
  QUEST = { icon = " ", color = "warning" },
}

return {
  "folke/todo-comments.nvim",
  opts = {
    -- Merge custom keywords with the defaults (TODO, HACK, etc.).
    merge_keywords = true,
    keywords = custom_keywords,
  },
  keys = {
    {
      "<leader>sT",
      function()
        -- Keep LazyVim's TODO/FIX/FIXME filter and include every custom tag.
        local keywords = { "TODO", "FIX", "FIXME" }
        vim.list_extend(keywords, vim.tbl_keys(custom_keywords))
        Snacks.picker.todo_comments({ keywords = keywords })
      end,
      desc = "Todo/Fix/Custom",
    },
  },
}

