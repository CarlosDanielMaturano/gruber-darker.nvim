local M = {}

M.colors = {
	fg = "#e4e4ef",
	fg_1 = "#f4f4ff",
	fg_2 = "#f5f5f5",
	white = "#ffffff",
	black = "#000000",
	gray = "#505050",
	bg_m1 = "#808080",
	bg = "#080808",
	bg_1 = "#181818",
	bg_2 = "#453d41",
	bg_3 = "#484848",
	bg_4 = "#52494e",
	red = "#f43841",
	red_1 = "#ff4f58",
	green = "#73c936",
	yellow = "#ffdd33",
	brown = "#cc8c3c",
	quartz = "#95a99f",
	niagara_2 = "#303540",
	niagara_1 = "#565f73",
	niagara = "#96a6c8",
	wisteria = "#9e95c7",
}

M.setup = function()
	local colors = M.colors
	local config = require("gruber-darker").config

	if config.transparent then
		colors.bg = "NONE"
	end

	local groups = {

		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { link = "Normal" },

		FloatBorder = { fg = colors.fg },

		Cursor = { fg = colors.yellow },
		CursorLine = { bg = colors.bg_1 },

		ColorColumn = { bg = colors.bg_1 },
		SignColumn = { link = "Normal" },

		LineNr = { fg = colors.yellow },
		LineNrAbove = { fg = colors.bg_4 },
		LineNrBelow = { fg = colors.bg_4 },

		Comment = { fg = colors.brown },
		String = { fg = colors.green },
		Number = { fg = colors.white },

		Boolean = { fg = colors.white },
		Float = { fg = colors.white },
		Character = { fg = colors.green },

		Identifier = { fg = colors.fg },
		Operator = { link = "Normal" },
		Title = { fg = colors.niagara },

		Constant = { fg = colors.quartz },
		Keyword = { fg = colors.yellow, bold = false },
		-- Statement = {},
		-- Conditional = {},
		-- Repeat = {},
		-- Exception = {},

		Function = { fg = colors.niagara },

		PreProc = { fg = colors.yellow, bold = false },
		Include = { link = "PreProc" },
		Define = { link = "PreProc" },
		Macro = { link = "PreProc" },
		Precondit = { link = "PreProc" },

		Type = { fg = colors.quartz },
		Typedef = { fg = colors.yellow, bold = false },
		-- Structure = { },
		-- StorageClass = { },

		Special = { link = "Normal" },
		SpecialChar = { link = "String" },
		SpecialComment = { fg = colors.green },
		Todo = { fg = colors.wisteria },
		MatchParen = { bg = colors.bg_4 },
		-- Underlined = {},

		Error = { fg = colors.red_1 },
		ErrorMsg = { fg = colors.red },
		WarningMsg = { fg = colors.red },
		netrwBak = { fg = colors.quartz },
		Directory = { fg = colors.niagara },
		netrwDir = { fg = colors.niagara },
		netrwExe = { fg = colors.green },
		netrwLink = { fg = colors.yellow },

		DiagnosticError = { fg = colors.red_1 },
		DiagnosticWarn = { fg = colors.yellow },
		DiagnosticInfo = { fg = colors.green },

		Pmenu = { bg = colors.bg_1 },
		PmenuSel = { bg = colors.bg_m1 },
		PmenuThumb = { link = "Pmenu" },

		Search = { bg = colors.fg_2, fg = colors.black },
		IncSearch = { bg = colors.fg_2, fg = colors.niagara_1 },

		Visual = { bg = colors.bg_3 },
		VisualNC = { fg = colors.white, bg = colors.bg_3 },
		NonText = { fg = colors.white },
		--TabLineSel = { bg = colors.bg_3 },

		Question = { fg = colors.fg },
		MoreMsg = { fg = colors.fg },

		WinSeperator = { link = "Normal" },
		EndOfBuffer = { bg = colors.bg, fg = colors.bg_1 },

		-- TermCursor = { },
		-- TermCursorNC = {},

		DiffText = { link = "Normal" },
		DiffDelete = { fg = colors.red_1 },
		DiffAdd = { fg = colors.green },
		DiffChange = { fg = colors.yellow },

		SpellBad = { fg = colors.red, underline = config.underline },
		SpellCap = { fg = colors.yellow, underline = config.underline },

		StatusLine = { bg = colors.bg_1, fg = colors.white },
		StatusLineNC = { bg = colors.bg_1, fg = colors.quartz },

		VertSplit = { fg = colors.bg_2 },

		QuickFixLine = { link = "CursorLine" },

		-- fugitive.nvim
		diffAdded = { link = "DiffAdd" },
		diffRemoved = { link = "DiffDelete" },

		-- html
		htmlLink = { fg = colors.niagara, underline = config.underline },
		htmlTag = { fg = colors.quartz },
		htmlTagName = { fg = colors.fg },
		["@tag.delimiter"] = { fg = colors.quartz },
		["@tag.attribute"] = { fg = colors.niagara },

		-- css
		["@property.css"] = { fg = colors.niagara },

		-- markdown
		markdownH1 = { fg = colors.red_1 },
		markdownH2 = { fg = colors.red_1 },
		markdownH3 = { fg = colors.red_1 },
		markdownH4 = { fg = colors.red_1 },
		markdownH5 = { fg = colors.red_1 },
		markdownBlockquote = { fg = colors.brown },
		markdownUrl = { fg = colors.niagara, underline = config.underline },

		-- Telescope

		TelescopeMatching = { fg = colors.yellow },

		["@constructor"] = { fg = colors.quartz },

		["@type"] = { fg = colors.yellow, bold = false },
		-- Javascript/Typescript
		["@type.javascript"] = { fg = colors.quartz },
		["@type.tsx"] = { fg = colors.quartz },

		-- Rust
		["@storageclass.rust"] = { fg = colors.yellow, bold = false },
		["@type.rust"] = { fg = colors.niagara },
	}
	return groups
end

return M
