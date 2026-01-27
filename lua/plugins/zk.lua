return {
  {
    "zk-org/zk-nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("zk").setup({
        picker = "telescope",
        lsp = {
          config = {
            name = "zk",
            cmd = {"zk", "lsp"},
          },
          auto_attach = {
            enabled = true,
            filetypes = { "markdown" },
          },
        },
      })
    end,
    vim.keymap.set("n", "<leader>zk", "<cmd>ZkNotes<CR>", {desc="ZkNotes"}),
    vim.keymap.set("n", "<leader>zn", "<cmd>ZkNew<CR>", {desc="ZkNew"}),
    vim.keymap.set("n", "<leader>zp", "<cmd>ZkBuffers<CR>", {desc="ZkBuffers"}),
    vim.keymap.set("n", "<leader>zb", "<cmd>ZkBacklinks<CR>", {desc="ZkBacklinks"}),
    vim.keymap.set("n", "<leader>zl", "<cmd>ZkLinks<CR>", {desc="ZkLinks"}),
    vim.keymap.set("n", "<leader>zf", function()
      require('telescope.builtin').live_grep({
        cwd = vim.env.ZK_NOTEBOOK_DIR,
      })
    end, {desc = '[Z]k [F]ind'}),
  }
}
