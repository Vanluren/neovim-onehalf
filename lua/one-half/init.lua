-- one-half color scheme
-- Neovim ready port of https://github.com/sonph/onehalf
local M = {}
local config = require("one-half.config")
local theme = require("one-half.colors")
local hl = vim.api.nvim_set_hl

-- Set highlight groups.
-- @param table config
local function set_groups(user_config)
	local is_dark_variant = user_config.variant == "dark"
	vim.notify(
		"is_dark_variant: " .. tostring(is_dark_variant),
		vim.log.levels.INFO,
		{ title = "One Half colorscheme" }
	)
	local colors = is_dark_variant and theme.dark or theme.light

	hl(0, "ColorColumn", { fg = colors.none, bg = colors.color_col })
	hl(0, "Comment", { fg = colors.comment_fg, bg = colors.none, italic = true })
	hl(0, "Conceal", { fg = colors.fg })
	hl(0, "Cursor", { fg = colors.bg, bg = colors.blue })
	hl(0, "CursorColumn", { fg = colors.none, bg = colors.cursor_line })
	hl(0, "CursorLine", { fg = colors.none, bg = colors.cursor_line })
	hl(0, "CursorLineNr", { fg = colors.fg, bg = colors.none })
	hl(0, "Debug", { fg = colors.fg, bg = colors.none })
	hl(0, "Delimiter", { fg = colors.fg, bg = colors.none })
	hl(0, "DiffAdd", { fg = colors.green, bg = colors.none })
	hl(0, "DiffChange", { fg = colors.yellow, bg = colors.none })
	hl(0, "DiffDelete", { fg = colors.red, bg = colors.none })
	hl(0, "DiffText", { fg = colors.blue, bg = colors.none })
	hl(0, "Directory", { fg = colors.blue })
	hl(0, "EndOfBuffer", { fg = colors.fg, bg = colors.none })
	hl(0, "Error", { fg = colors.red, bg = colors.gutter_bg })
	hl(0, "ErrorMsg", { fg = colors.fg, bg = colors.none })
	hl(0, "FoldColumn", { fg = colors.fg, bg = colors.none })
	hl(0, "Folded", { fg = colors.fg, bg = colors.none })
	hl(0, "Identifier", { fg = colors.red, bg = colors.none })
	hl(0, "Ignore", { fg = colors.fg, bg = colors.none })
	hl(0, "IncSearch", { fg = colors.bg, bg = colors.yellow })
	hl(0, "LineNr", { fg = colors.gutter_fg, bg = colors.gutter_bg })
	hl(0, "MatchParen", { fg = colors.blue, underline = true })
	hl(0, "ModeMsg", { fg = colors.fg, bg = colors.none })
	hl(0, "MoreMsg", { fg = colors.fg, bg = colors.none })
	hl(0, "NonText", { fg = colors.fg, bg = colors.none })
	hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
	hl(0, "Pmenu", { fg = colors.fg, bg = colors.cursor_line })
	hl(0, "PmenuSbar", { fg = colors.none, bg = colors.cursor_line })
	hl(0, "PmenuSel", { fg = colors.bg, bg = colors.blue })
	hl(0, "PmenuThumb", { fg = colors.none, bg = colors.comment_fg })
	hl(0, "Question", { fg = colors.purple, bg = colors.none })
	hl(0, "Search", { fg = colors.bg, bg = colors.yellow })
	hl(0, "SignColumn", { fg = colors.fg, bg = colors.none })
	hl(0, "Special", { fg = colors.blue, bg = colors.none })
	hl(0, "SpecialChar", { fg = colors.fg, bg = colors.none })
	hl(0, "SpecialComment", { fg = colors.fg, bg = colors.none })
	hl(0, "SpecialKey", { fg = colors.fg, bg = colors.none })
	hl(0, "SpellBad", { fg = colors.red, bg = colors.none, undercurl = true, sp = colors.red })
	hl(0, "SpellCap", { fg = colors.yellow, bg = colors.none, undercurl = true, sp = colors.yellow })
	hl(0, "SpellLocal", { fg = colors.yellow, bg = colors.none, undercurl = true, sp = colors.yellow })
	hl(0, "SpellRare", { fg = colors.yellow, bg = colors.none, undercurl = true, sp = colors.yellow })
	hl(0, "Statement", { fg = colors.purple, bg = colors.none })
	hl(0, "StatusLine", { fg = colors.blue, bg = colors.cursor_line })
	hl(0, "StatusLineNC", { fg = colors.comment_fg, bg = colors.cursor_line })
	hl(0, "TabLine", { fg = colors.comment_fg, bg = colors.cursor_line })
	hl(0, "TabLineFill", { fg = colors.comment_fg, bg = colors.cursor_line })
	hl(0, "TabLineSel", { fg = colors.fg, bg = colors.bg })
	hl(0, "Tag", { fg = colors.fg, bg = colors.none })
	hl(0, "Title", { fg = colors.green, bg = colors.none })
	hl(0, "Todo", { fg = colors.purple, bold = true })
	hl(0, "Underlined", { fg = colors.fg, bg = colors.none, underline = true })
	hl(0, "VertSplit", { fg = colors.vertsplit, bg = colors.vertsplit })
	hl(0, "Visual", { fg = colors.none, bg = colors.selection })
	hl(0, "VisualNOS", { fg = colors.none, bg = colors.selection })
	hl(0, "WarningMsg", { fg = colors.red, bg = colors.none })
	hl(0, "Whitespace", { fg = colors.non_text, bg = colors.none })
	hl(0, "WildMenu", { fg = colors.fg, bg = colors.none })
	hl(0, "Boolean", { fg = colors.yellow, bg = colors.none })
	hl(0, "Character", { fg = colors.yellow, bg = colors.none })
	hl(0, "Conditional", { fg = colors.purple, bg = colors.none })
	hl(0, "Constant", { fg = colors.cyan, bg = colors.none })
	hl(0, "Define", { fg = colors.purple, bg = colors.none })
	hl(0, "Exception", { fg = colors.purple, bg = colors.none })
	hl(0, "Float", { fg = colors.yellow, bg = colors.none })
	hl(0, "Function", { fg = colors.blue, bg = colors.none })
	hl(0, "Include", { fg = colors.purple, bg = colors.none })
	hl(0, "Keyword", { fg = colors.red, bg = colors.none })
	hl(0, "Label", { fg = colors.red, bg = colors.none })
	hl(0, "Macro", { fg = colors.purple, bg = colors.none })
	hl(0, "Number", { fg = colors.yellow, bg = colors.none })
	hl(0, "Operator", { fg = colors.fg, bg = colors.none })
	hl(0, "PreProc", { fg = colors.yellow, bg = colors.none })
	hl(0, "Repeat", { fg = colors.purple, bg = colors.none })
	hl(0, "StorageClass", { fg = colors.yellow, bg = colors.none })
	hl(0, "String", { fg = colors.green, bg = colors.none })
	hl(0, "Structure", { fg = colors.yellow, bg = colors.none })
	hl(0, "Type", { fg = colors.yellow, bg = colors.none })
	hl(0, "Typedef", { fg = colors.yellow, bg = colors.none })

	-- Treesitter
	-- Find the symbol for the current node by calling :TSHighlightCapturesUnderCursor.
	hl(0, "@error", { fg = colors.red, bg = colors.gutter_bg })
	hl(0, "@punctuation.bracket", { fg = is_dark and colors.white or colors.black, bg = colors.none })
	hl(0, "@punctuation.delimiter", { fg = is_dark and colors.white or colors.black, bg = colors.none })
	hl(0, "@punctuation.special", { fg = is_dark and colors.white or colors.black, bg = colors.none })
	hl(0, "@comment", { fg = colors.comment_fg, bg = colors.none, italic = true })
	hl(0, "@constant", { fg = colors.cyan, bg = colors.none, italic = true })
	hl(0, "@constant.builtin", { fg = colors.cyan, bg = colors.none })
	hl(0, "@constant.macro", { fg = colors.purple, bg = colors.none })
	hl(0, "@string.regex", { fg = colors.yellow, bg = colors.none })
	hl(0, "@string", { fg = colors.green, bg = colors.none })
	hl(0, "@character", { fg = colors.yellow, bg = colors.none })
	hl(0, "@number", { fg = colors.yellow, bg = colors.none })
	hl(0, "@boolean", { fg = colors.yellow, bg = colors.none })
	hl(0, "@float", { fg = colors.yellow, bg = colors.none })
	hl(0, "@annotation", { fg = colors.yellow, bg = colors.none })
	hl(0, "@attribute", { fg = colors.blue, bg = colors.none })
	hl(0, "@namespace", { fg = colors.blue, bg = colors.none })
	hl(0, "@function", { fg = colors.blue, bg = colors.none })
	hl(0, "@function.builtin", { fg = colors.blue, bg = colors.none })
	hl(0, "@function.macro", { fg = colors.purple, bg = colors.none })
	hl(0, "@function.call", { fg = colors.blue, bg = colors.none })
	hl(0, "@parameter", { fg = colors.red, bg = colors.none })
	hl(0, "@parameter.reference", { fg = colors.blue, bg = colors.none })
	hl(0, "@method", { fg = colors.blue, bg = colors.none })
	hl(0, "@field", { fg = colors.blue, bg = colors.none })
	hl(0, "@property", { fg = colors.fg, bg = colors.none })
	hl(0, "@constructor", { fg = colors.blue, bg = colors.none })
	hl(0, "@conditional", { fg = colors.purple, bg = colors.none })
	hl(0, "@repeat", { fg = colors.blue, bg = colors.none })
	hl(0, "@label", { fg = colors.red, bg = colors.none })
	hl(0, "@keyword", { fg = colors.red, bg = colors.none })
	hl(0, "@keyword.function", { fg = colors.purple, bg = colors.none })
	hl(0, "@keyword.operator", { fg = colors.purple, bg = colors.none })
	hl(0, "@operator", { fg = colors.purple, bg = colors.none })
	hl(0, "@exception", { fg = colors.purple, bg = colors.none })
	hl(0, "@type", { fg = colors.yellow, bg = colors.none })
	hl(0, "@type.builtin", { fg = colors.blue, bg = colors.none })
	hl(0, "@structure", { fg = colors.yellow, bg = colors.none })
	hl(0, "@symbol", { fg = colors.cyan, bg = colors.none, italic = true })
	hl(0, "@include", { fg = colors.purple, bg = colors.none })
	hl(0, "@variable", { fg = is_dark and colors.white or colors.black, bg = colors.none })
	hl(0, "@variable.builtin", { fg = colors.cyan, bg = colors.none, italic = true })
	hl(0, "@text", { fg = colors.text, bg = colors.none })
	hl(0, "@text.underline", { fg = colors.text, bg = colors.none, underline = true })
	hl(0, "@tag", { fg = colors.fg, bg = colors.none })
	hl(0, "@tag.delimiter", { fg = colors.fg, bg = colors.none })
	hl(0, "@tag.attribute", { fg = colors.fg, bg = colors.none })

	-- LSP
	hl(0, "DiagnosticError", { fg = colors.red, bg = colors.none })
	hl(0, "DiagnosticWarn", { fg = colors.yellow, bg = colors.none })
	hl(0, "DiagnosticInfo", { fg = colors.blue, bg = colors.none })
	hl(0, "DiagnosticHint", { fg = colors.blue, bg = colors.none })
	hl(0, "DiagnosticUnderlineError", { fg = colors.none, bg = colors.none, undercurl = true, sp = colors.red })
	hl(0, "DiagnosticUnderlineWarn", { fg = colors.none, bg = colors.none, undercurl = true, sp = colors.yellow })
	hl(0, "DiagnosticUnderlineInfo", { fg = colors.none, bg = colors.none, undercurl = true, sp = colors.blue })
	hl(0, "DiagnosticUnderlineHint", { fg = colors.none, bg = colors.none, undercurl = true, sp = colors.blue })
	hl(0, "LspReferenceText", { fg = colors.none, bg = colors.cyan })
	hl(0, "LspReferenceRead", { fg = colors.none, bg = colors.cyan })
	hl(0, "LspReferenceWrite", { fg = colors.none, bg = colors.cyan })

	-- IndentBlankLine
	hl(0, "IndentBlanklineContextChar", { fg = colors.purple, bg = colors.none, nocombine = true })

	-- Ruby
	hl(0, "rubyStringDelimiter", { fg = colors.green, bg = colors.none })
	hl(0, "rubyKeywordAsMethod", { fg = colors.blue, bg = colors.none })
	hl(0, "slimRuby", { fg = colors.blue, bg = colors.none })

	-- Misc
	hl(0, "@text.title", { fg = colors.blue, bg = colors.none, bold = true })
	hl(0, "@text.literal", { fg = colors.blue, bg = colors.none })
	hl(0, "markdown@text.literal", { fg = colors.yellow, bg = colors.none })
	hl(0, "markdown_inline@text.literal", { fg = colors.yellow, bg = colors.none })
	hl(0, "@text.emphasis", { fg = colors.blue, bg = colors.none, italic = true })
	hl(0, "@text.strong", { fg = colors.purple, bg = colors.none, bold = true })
	hl(0, "@text.uri", { fg = colors.blue, bg = colors.none })
	hl(0, "@textReference", { fg = colors.blue, bg = colors.none })
	hl(0, "@stringEscape", { fg = colors.blue, bold = true })
	hl(0, "@text.note", { fg = colors.blue, bg = colors.none, bold = true })
	hl(0, "@text.warning", { fg = colors.yellow, bg = colors.none, bold = true })
	hl(0, "@text.danger", { fg = colors.red, bg = colors.none, bold = true })
end

local function link_highlight()
	-- LSP Semantic Token Groups
	hl(0, "@lsp.type.comment", { link = "@comment" })
	hl(0, "@lsp.type.enum", { link = "@type" })
	hl(0, "@lsp.type.interface", { link = "Identifier" })
	hl(0, "@lsp.type.keyword", { link = "@keyword" })
	hl(0, "@lsp.type.namespace", { link = "@namespace" })
	hl(0, "@lsp.type.parameter", { link = "@parameter" })
	hl(0, "@lsp.type.property", { link = "@property" })
	hl(0, "@lsp.type.variable", {}) -- use treesitter styles for regular variables
	hl(0, "@lsp.typemod.method.defaultLibrary", { link = "@function.builtin" })
	hl(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
	hl(0, "@lsp.typemod.operator.injected", { link = "@operator" })
	hl(0, "@lsp.typemod.string.injected", { link = "@string" })
	hl(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
	hl(0, "@lsp.typemod.variable.injected", { link = "@variable" })

	-- NOTE: maybe add these with distinct highlights?
	-- ["@lsp.typemod.variable.globalScope"] (global variables)
	-- Legacy groups for official git.vim and diff.vim syntax
	hl(0, "diffAdded", { link = "DiffAdd" })
	hl(0, "diffChanged", { link = "DiffChange" })
	hl(0, "diffRemoved", { link = "DiffDelete" })
end

-- @param table values
function M.setup(values)
	if vim.version().minor < 8 then
		vim.notify(
			"Neovim 0.8+ is required for ayu colorscheme",
			vim.log.levels.ERROR,
			{ title = "One Half colorscheme" }
		)
		return
	end

	values = values or {}

	setmetatable(config, { __index = vim.tbl_extend("force", config.defaults, values) })

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = "one-half"

	set_groups(values)
	link_highlight()
end

return M
