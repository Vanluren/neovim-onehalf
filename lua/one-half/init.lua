-- one-half color scheme
-- Neovim ready port of https://github.com/sonph/onehalf
local M = {}
local config = require("one-half.config")
local colors = require("one-half.colors")
local hl = vim.api.nvim_set_hl

-- Set highlight groups.
-- @param table config
local function set_groups(user_config)
	user_config = user_config or config.defaults
	local is_dark_variant = user_config.variant == "dark"
	local variant = is_dark_variant and colors.dark or colors.light
	hl(0, "ColorColumn", { fg = variant.none, bg = variant.color_col })
	hl(0, "Comment", { fg = variant.comment_fg, bg = variant.none, italic = true })
	hl(0, "Conceal", { fg = variant.fg })
	hl(0, "Cursor", { fg = variant.bg, bg = variant.blue })
	hl(0, "CursorColumn", { fg = variant.none, bg = variant.cursor_line })
	hl(0, "CursorLine", { fg = variant.none, bg = variant.cursor_line })
	hl(0, "CursorLineNr", { fg = variant.fg, bg = variant.none })
	hl(0, "Debug", { fg = variant.fg, bg = variant.none })
	hl(0, "Delimiter", { fg = variant.fg, bg = variant.none })
	hl(0, "DiffAdd", { fg = variant.green, bg = variant.none })
	hl(0, "DiffChange", { fg = variant.yellow, bg = variant.none })
	hl(0, "DiffDelete", { fg = variant.red, bg = variant.none })
	hl(0, "DiffText", { fg = variant.blue, bg = variant.none })
	hl(0, "Directory", { fg = variant.blue })
	hl(0, "EndOfBuffer", { fg = variant.fg, bg = variant.none })
	hl(0, "Error", { fg = variant.red, bg = variant.gutter_bg })
	hl(0, "ErrorMsg", { fg = variant.fg, bg = variant.none })
	hl(0, "FoldColumn", { fg = variant.fg, bg = variant.none })
	hl(0, "Folded", { fg = variant.fg, bg = variant.none })
	hl(0, "Identifier", { fg = variant.red, bg = variant.none })
	hl(0, "Ignore", { fg = variant.fg, bg = variant.none })
	hl(0, "IncSearch", { fg = variant.bg, bg = variant.yellow })
	hl(0, "LineNr", { fg = variant.gutter_fg, bg = variant.gutter_bg })
	hl(0, "MatchParen", { fg = variant.blue, underline = true })
	hl(0, "ModeMsg", { fg = variant.fg, bg = variant.none })
	hl(0, "MoreMsg", { fg = variant.fg, bg = variant.none })
	hl(0, "NonText", { fg = variant.fg, bg = variant.none })
	hl(0, "Normal", { fg = variant.fg, bg = variant.bg })
	hl(0, "Pmenu", { fg = variant.fg, bg = variant.cursor_line })
	hl(0, "PmenuSbar", { fg = variant.none, bg = variant.cursor_line })
	hl(0, "PmenuSel", { fg = variant.bg, bg = variant.blue })
	hl(0, "PmenuThumb", { fg = variant.none, bg = variant.comment_fg })
	hl(0, "Question", { fg = variant.purple, bg = variant.none })
	hl(0, "Search", { fg = variant.bg, bg = variant.yellow })
	hl(0, "SignColumn", { fg = variant.fg, bg = variant.none })
	hl(0, "Special", { fg = variant.blue, bg = variant.none })
	hl(0, "SpecialChar", { fg = variant.fg, bg = variant.none })
	hl(0, "SpecialComment", { fg = variant.fg, bg = variant.none })
	hl(0, "SpecialKey", { fg = variant.fg, bg = variant.none })
	hl(0, "SpellBad", { fg = variant.red, bg = variant.none, undercurl = true, sp = variant.red })
	hl(0, "SpellCap", { fg = variant.yellow, bg = variant.none, undercurl = true, sp = variant.yellow })
	hl(0, "SpellLocal", { fg = variant.yellow, bg = variant.none, undercurl = true, sp = variant.yellow })
	hl(0, "SpellRare", { fg = variant.yellow, bg = variant.none, undercurl = true, sp = variant.yellow })
	hl(0, "Statement", { fg = variant.purple, bg = variant.none })
	hl(0, "StatusLine", { fg = variant.blue, bg = variant.cursor_line })
	hl(0, "StatusLineNC", { fg = variant.comment_fg, bg = variant.cursor_line })
	hl(0, "TabLine", { fg = variant.comment_fg, bg = variant.cursor_line })
	hl(0, "TabLineFill", { fg = variant.comment_fg, bg = variant.cursor_line })
	hl(0, "TabLineSel", { fg = variant.fg, bg = variant.bg })
	hl(0, "Tag", { fg = variant.fg, bg = variant.none })
	hl(0, "Title", { fg = variant.green, bg = variant.none })
	hl(0, "Todo", { fg = variant.purple, bold = true })
	hl(0, "Underlined", { fg = variant.fg, bg = variant.none, underline = true })
	hl(0, "VertSplit", { fg = variant.vertsplit, bg = variant.vertsplit })
	hl(0, "Visual", { fg = variant.none, bg = variant.selection })
	hl(0, "VisualNOS", { fg = variant.none, bg = variant.selection })
	hl(0, "WarningMsg", { fg = variant.red, bg = variant.none })
	hl(0, "Whitespace", { fg = variant.non_text, bg = variant.none })
	hl(0, "WildMenu", { fg = variant.fg, bg = variant.none })

	-- These groups are not listed as default vim groups,
	-- but they are defacto standard group names for syntax highlighting.
	-- commented out groups should chain up to their "preferred" group by
	-- default.
	-- Uncomment and edit if you want more specific syntax highlighting.
	hl(0, "Boolean", { fg = variant.yellow, bg = variant.none })
	hl(0, "Character", { fg = variant.yellow, bg = variant.none })
	hl(0, "Conditional", { fg = variant.purple, bg = variant.none })
	hl(0, "Constant", { fg = variant.cyan, bg = variant.none })
	hl(0, "Define", { fg = variant.purple, bg = variant.none })
	hl(0, "Exception", { fg = variant.purple, bg = variant.none })
	hl(0, "Float", { fg = variant.yellow, bg = variant.none })
	hl(0, "Function", { fg = variant.blue, bg = variant.none })
	hl(0, "Include", { fg = variant.purple, bg = variant.none })
	hl(0, "Keyword", { fg = variant.red, bg = variant.none })
	hl(0, "Label", { fg = variant.red, bg = variant.none })
	hl(0, "Macro", { fg = variant.purple, bg = variant.none })
	hl(0, "Number", { fg = variant.yellow, bg = variant.none })
	hl(0, "Operator", { fg = variant.fg, bg = variant.none })
	hl(0, "PreProc", { fg = variant.yellow, bg = variant.none })
	hl(0, "Repeat", { fg = variant.purple, bg = variant.none })
	hl(0, "StorageClass", { fg = variant.yellow, bg = variant.none })
	hl(0, "String", { fg = variant.green, bg = variant.none })
	hl(0, "Structure", { fg = variant.yellow, bg = variant.none })
	hl(0, "Type", { fg = variant.yellow, bg = variant.none })
	hl(0, "Typedef", { fg = variant.yellow, bg = variant.none })

	-- Treesitter
	-- Find the symbol for the current node by calling :TSHighlightCapturesUnderCursor.
	hl(0, "@error", { fg = variant.red, bg = variant.gutter_bg })
	hl(0, "@punctuation.bracket", { fg = is_dark and variant.white or variant.black, bg = variant.none })
	hl(0, "@punctuation.delimiter", { fg = is_dark and variant.white or variant.black, bg = variant.none })
	hl(0, "@punctuation.special", { fg = is_dark and variant.white or variant.black, bg = variant.none })
	hl(0, "@comment", { fg = variant.comment_fg, bg = variant.none, italic = true })
	hl(0, "@constant", { fg = variant.cyan, bg = variant.none, italic = true })
	hl(0, "@constant.builtin", { fg = variant.cyan, bg = variant.none })
	hl(0, "@constant.macro", { fg = variant.purple, bg = variant.none })
	hl(0, "@string.regex", { fg = variant.yellow, bg = variant.none })
	hl(0, "@string", { fg = variant.green, bg = variant.none })
	hl(0, "@character", { fg = variant.yellow, bg = variant.none })
	hl(0, "@number", { fg = variant.yellow, bg = variant.none })
	hl(0, "@boolean", { fg = variant.yellow, bg = variant.none })
	hl(0, "@float", { fg = variant.yellow, bg = variant.none })
	hl(0, "@annotation", { fg = variant.yellow, bg = variant.none })
	hl(0, "@attribute", { fg = variant.blue, bg = variant.none })
	hl(0, "@namespace", { fg = variant.blue, bg = variant.none })
	hl(0, "@function", { fg = variant.blue, bg = variant.none })
	hl(0, "@function.builtin", { fg = variant.blue, bg = variant.none })
	hl(0, "@function.macro", { fg = variant.purple, bg = variant.none })
	hl(0, "@function.call", { fg = variant.blue, bg = variant.none })
	hl(0, "@parameter", { fg = variant.red, bg = variant.none })
	hl(0, "@parameter.reference", { fg = variant.blue, bg = variant.none })
	hl(0, "@method", { fg = variant.blue, bg = variant.none })
	hl(0, "@field", { fg = variant.blue, bg = variant.none })
	hl(0, "@property", { fg = variant.fg, bg = variant.none })
	hl(0, "@constructor", { fg = variant.blue, bg = variant.none })
	hl(0, "@conditional", { fg = variant.purple, bg = variant.none })
	hl(0, "@repeat", { fg = variant.blue, bg = variant.none })
	hl(0, "@label", { fg = variant.red, bg = variant.none })
	hl(0, "@keyword", { fg = variant.red, bg = variant.none })
	hl(0, "@keyword.function", { fg = variant.purple, bg = variant.none })
	hl(0, "@keyword.operator", { fg = variant.purple, bg = variant.none })
	hl(0, "@operator", { fg = variant.purple, bg = variant.none })
	hl(0, "@exception", { fg = variant.purple, bg = variant.none })
	hl(0, "@type", { fg = variant.yellow, bg = variant.none })
	hl(0, "@type.builtin", { fg = variant.blue, bg = variant.none })
	hl(0, "@structure", { fg = variant.yellow, bg = variant.none })
	hl(0, "@symbol", { fg = variant.cyan, bg = variant.none, italic = true })
	hl(0, "@include", { fg = variant.purple, bg = variant.none })
	hl(0, "@variable", { fg = is_dark and variant.white or variant.black, bg = variant.none })
	hl(0, "@variable.builtin", { fg = variant.cyan, bg = variant.none, italic = true })
	hl(0, "@text", { fg = variant.text, bg = variant.none })
	hl(0, "@text.underline", { fg = variant.text, bg = variant.none, underline = true })
	hl(0, "@tag", { fg = variant.fg, bg = variant.none })
	hl(0, "@tag.delimiter", { fg = variant.fg, bg = variant.none })
	hl(0, "@tag.attribute", { fg = variant.fg, bg = variant.none })

	-- I have no idea where these are used.
	hl(0, "@text.title", { fg = variant.blue, bg = variant.none, bold = true })
	hl(0, "@text.literal", { fg = variant.blue, bg = variant.none })
	hl(0, "markdown@text.literal", { fg = variant.yellow, bg = variant.none })
	hl(0, "markdown_inline@text.literal", { fg = variant.yellow, bg = variant.none })
	hl(0, "@text.emphasis", { fg = variant.blue, bg = variant.none, italic = true })
	hl(0, "@text.strong", { fg = variant.purple, bg = variant.none, bold = true })
	hl(0, "@text.uri", { fg = variant.blue, bg = variant.none })
	hl(0, "@textReference", { fg = variant.blue, bg = variant.none })
	hl(0, "@stringEscape", { fg = variant.blue, bold = true })
	hl(0, "@text.note", { fg = variant.blue, bg = variant.none, bold = true })
	hl(0, "@text.warning", { fg = variant.yellow, bg = variant.none, bold = true })
	hl(0, "@text.danger", { fg = variant.red, bg = variant.none, bold = true })

	-- LSP
	hl(0, "DiagnosticError", { fg = variant.red, bg = variant.none })
	hl(0, "DiagnosticWarn", { fg = variant.yellow, bg = variant.none })
	hl(0, "DiagnosticInfo", { fg = variant.blue, bg = variant.none })
	hl(0, "DiagnosticHint", { fg = variant.blue, bg = variant.none })
	hl(0, "DiagnosticUnderlineError", { fg = variant.none, bg = variant.none, undercurl = true, sp = variant.red })
	hl(0, "DiagnosticUnderlineWarn", { fg = variant.none, bg = variant.none, undercurl = true, sp = variant.yellow })
	hl(0, "DiagnosticUnderlineInfo", { fg = variant.none, bg = variant.none, undercurl = true, sp = variant.blue })
	hl(0, "DiagnosticUnderlineHint", { fg = variant.none, bg = variant.none, undercurl = true, sp = variant.blue })
	hl(0, "LspReferenceText", { fg = variant.none, bg = variant.cyan })
	hl(0, "LspReferenceRead", { fg = variant.none, bg = variant.cyan })
	hl(0, "LspReferenceWrite", { fg = variant.none, bg = variant.cyan })

	-- IndentBlankLine
	hl(0, "IndentBlanklineContextChar", { fg = variant.purple, bg = variant.none, nocombine = true })
	-- These do not seem to work.
	-- hl(0, 'IndentBlanklineContextStart', { fg = variant.purple, bg = variant.none, nocombine = true })
	-- hl(0, 'IndentBlanklineChar', { fg = variant.comment_fg, bg = variant.none, nocombine = true })
	-- hl(0, 'IndentBlanklineSpaceChar', { fg = variant.purple, bg = variant.none, nocombine = true })
	-- hl(0, 'IndentBlanklineSpaceCharBlankline', { fg = variant.purple, bg = variant.none, nocombine = true })

	-- Ruby
	hl(0, "rubyStringDelimiter", { fg = variant.green, bg = variant.none })
	hl(0, "rubyKeywordAsMethod", { fg = variant.blue, bg = variant.none })
	hl(0, "slimRuby", { fg = variant.blue, bg = variant.none })

	-- nvim-notify
	hl(0, "NotifyERRORBorder", { fg = variant.red, bg = variant.none })
	hl(0, "NotifyWARNBorder", { fg = variant.yellow, bg = variant.none })
	hl(0, "NotifyINFOBorder", { fg = variant.blue, bg = variant.none })
	hl(0, "NotifyDEBUGBorder", { fg = variant.comment_fg, bg = variant.none })
	hl(0, "NotifyTRACEBorder", { fg = variant.purple, bg = variant.none })
	hl(0, "NotifyERRORIcon", { fg = variant.red, bg = variant.none })
	hl(0, "NotifyWARNIcon", { fg = variant.yellow, bg = variant.none })
	hl(0, "NotifyINFOIcon", { fg = variant.blue, bg = variant.none })
	hl(0, "NotifyDEBUGIcon", { fg = variant.comment_fg, bg = variant.none })
	hl(0, "NotifyTRACEIcon", { fg = variant.purple, bg = variant.none })
	hl(0, "NotifyERRORTitle", { fg = variant.fg, bg = variant.none })
	hl(0, "NotifyWARNTitle", { fg = variant.fg, bg = variant.none })
	hl(0, "NotifyINFOTitle", { fg = variant.fg, bg = variant.none })
	hl(0, "NotifyDEBUGTitle", { fg = variant.fg, bg = variant.none })
	hl(0, "NotifyTRACETitle", { fg = variant.fg, bg = variant.none })
end

-- @param table values
function M.setup(values)
	if vim.version().minor < 8 then
		vim.notify(
			"Neovim 0.8+ is required for the one-half colorscheme",
			vim.log.levels.ERROR,
			{ title = "one-half colorscheme" }
		)
		return
	end

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
