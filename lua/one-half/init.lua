-- one-half color scheme
-- Lua port of https://github.com/sonph/onehalf
-- By https://github.com/sonph/onehalf
local M = {}
local theme = require("one-half.theme")
local config = require("ayu.config")

function M.setup(values)
	-- @param string table
	setmetatable(config, { __index = vim.tbl_extend("force", config.defaults, values) })

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = "one-half"

	theme.setup(values.variant)
	theme.link_highlight()
end

return M
