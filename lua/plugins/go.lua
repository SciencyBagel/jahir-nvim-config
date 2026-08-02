return {
  "mfussenegger/nvim-lint",
  opts = {
    linters = {
      -- golangci-lint's "typecheck" linter duplicates the compile errors
      -- gopls already reports via LSP, so disable it everywhere.
      golangcilint = {
        prepend_args = { "--disable", "typecheck" },
      },
    },
  },
}
