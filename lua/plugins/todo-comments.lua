--[[
Todo markers are personal guidelines, not rules enforced by Git.
Local commits may contain any tag; use a draft MR for unfinished work.
Before merging, resolve or explicitly track unfinished work and review remaining tags.

Work to fix or track:
  FIX    Fix new defects before merge; keep only tracked, known defects afterward.
  TODO   Specific, nonblocking follow-up; remove when done.
  HACK   Explain the workaround and when to remove it; remove when replaced.
  WARN   Serious hazard; keep only while the hazard exists.
  PERF   Meet requirements first; track optional improvements until done.
  TEST   Add essential tests before merge; keep only tracked, optional gaps.
  REFAC  Nonblocking cleanup; resolve or track, then remove when refactored.

Information and questions:
  NOTE   Useful explanation; keep while accurate.
  QUEST  Ask why code exists (not what it does). Answer before merge; turn any
         lasting concern into TODO or NOTE, then remove QUEST. Alias: WHATIS.

Local-only markers (remove before merge):
  STUDY  Personal learning notes.
  WIP    Where you left off before stepping away.
]]

-- Custom tags are also used by the focused todo picker.
local custom_keywords = {
  REFAC = { icon = " ", color = "info" },
  QUEST = { icon = " ", color = "warning", alt = { "WHATIS" } },
  STUDY = { icon = " ", color = "#73DACA" },
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

