-- one-half color scheme
-- Neovim ready port of https://github.com/sonph/onehalf
local M = {}
local config = require("one-half.config")

-- @param table
function M.setup(values)
	if vim.version().minor < 8 then
		vim.notify(
			"Neovim 0.8+ is required for ayu colorscheme",
			vim.log.levels.ERROR,
			{ title = "One Half colorscheme" }
		)
		return
	end
	-- @param string table
	setmetatable(config, { __index = vim.tbl_extend("force", config.default_config, values) })

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = "one-half"

	config.set_groups(values.defaults)
	config.link_highlight()
end

return M
