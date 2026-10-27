return {
  "kevalin/mermaid.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    -- Maps under the existing 'Space + c' (Code) menu
    { "<leader>cp", "<cmd>MermaidPreview<cr>", desc = "Mermaid Preview" },
    -- { "<leader>cf", "<cmd>MermaidFormat<cr>", desc = "Mermaid Format" },
  },
  config = function()
    require("mermaid").setup()
  end,
}
