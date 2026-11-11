return {
  "folke/todo-comments.nvim",
  opts = {
    -- When true, your custom keywords will merge with defaults (TODO, HACK, etc.)
    merge_keywords = true,
    keywords = {
      -- Add a new keyword with its own icon and color
      TODO = { alt = { "WIP", "REFACTOR" } },
      QUESTION = { icon = "? ", color = "warning" },
    },
  },
}

