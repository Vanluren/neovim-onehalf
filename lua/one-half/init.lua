-- one-half color scheme
-- Lua port of https://github.com/sonph/onehalf
-- By https://github.com/sonph/onehalf
local M = {}
local theme = require("one-half.theme")

-- @param string table
function M.setup(values)
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = "one-half"

	theme.setup(values.variant)
	theme.link_highlight()
end

-- @param string style
function M.change_style(style)
	vim.opt.background = style
	theme.setup(style)
	theme.link_highlight()
	print("one-half style: ", style)
	vim.cmd([[colorscheme one-half]])
end

return M
