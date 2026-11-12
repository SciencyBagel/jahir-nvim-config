local custom_keywords = {
  -- Share these tags between todo-comments highlighting and the focused picker.
  REFAC = { icon = " ", color = "info" },
  -- Marks questions about programmer's intent (asks "why?" not "what?")
  QUEST = { icon = " ", color = "warning", alt = { "WHATIS" } },

  -- Marks code for self study (only meant for me)
  STUDY = { icon = " ", color = "#73DACA" },

  -- Marks where I left off before stepping away from computer (only meant for me)
  WIP = { icon = " ", color = "#C77DFF" },

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

