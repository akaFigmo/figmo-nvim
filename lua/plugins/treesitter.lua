return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",       -- use the legacy stable API
    lazy = false,            -- treesitter does not support lazy-loading
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { 
          "html",
          "java",
          "c",
          "cpp",
          "lua",
          "python",
          "rust",
          "vim",
          "vimdoc",
          "query",
          "javascript",
          "typescript" },
        auto_install = true,

        highlight = { enable = true },
        indent = { enable = true },

        -- optional niceties
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            node_decremental = "<BS>",
          },
        },
      })
    end,
  },
}

