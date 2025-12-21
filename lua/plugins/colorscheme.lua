return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('kanagawa').setup {
        compile = false,
        undercurl = true,
	commentStyle = {italic = true},
	functionStyle = {},
        statementStyle = {bold = true},
	typeStyle = {},
	transparent = false,
	dimInactive = false,
	terminalColors = true,
	colors = {
	  palette = {},
	  themer = { wave = {}, lotus = {}, dragon = {}, all= {}},
	},
	overrides = function(colors)
	  return {}
	end,
	theme = "wave",
	background = {
	},
    }
    vim.cmd.colorscheme 'kanagawa'
    end,
  }
}
