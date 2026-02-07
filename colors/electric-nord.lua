local M = {}

-- Color palette
local c = {
  -- Polar Night (Backgrounds)
  polar0 = "#2E3440",
  polar1 = "#3B4252",
  polar2 = "#434C5E",
  polar3 = "#4C566A",

  -- Snow Storm (Text)
  snow0 = "#D8DEE9",
  snow1 = "#E5E9F0",
  snow2 = "#ECEFF4",

  -- Electric Frost (Primary Accents)
  electric1 = "#00D4FF",
  electric2 = "#00B4FF",
  electric3 = "#5EEAD4",
  frost = "#88C0FC",

  -- Warm accents
  vesper_amber = "#FFC799",
  vesper_gold = "#FFCB8B",
  vesper_warm_gray = "#A0A0A0",
  vesper_soft_orange = "#E8A87C",

  -- Aurora (Secondary Accents)
  aurora_teal = "#8FBCBB",
  aurora_cyan = "#88C0D0",
  aurora_blue = "#81A1C1",
  aurora_purple = "#C9A7E8",
  aurora_red = "#F28B8B",
  aurora_orange = "#FFC799",
  aurora_yellow = "#FFCB8B",
  aurora_green = "#A3D9A5",

  -- Special
  none = "NONE",
}

-- Clear existing highlights
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "electric-nord"

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor highlights
hi("Normal", { fg = c.snow0, bg = c.polar0 })
hi("NormalNC", { fg = c.snow0, bg = c.polar0 })
hi("NormalFloat", { fg = c.snow1, bg = c.polar0 })
hi("FloatBorder", { fg = c.electric1, bg = c.polar0 })
hi("FloatTitle", { fg = c.electric1, bg = c.polar0, bold = true })
hi("Cursor", { fg = c.polar0, bg = c.electric1 })
hi("CursorLine", { bg = c.polar1 })
hi("CursorColumn", { bg = c.polar1 })
hi("ColorColumn", { bg = c.polar1 })
hi("LineNr", { fg = c.polar3 })
hi("CursorLineNr", { fg = c.electric1, bold = true })
hi("SignColumn", { fg = c.polar3, bg = c.polar0 })
hi("VertSplit", { fg = c.polar2 })
hi("WinSeparator", { fg = c.polar2 })
hi("Folded", { fg = c.vesper_warm_gray, bg = c.polar1, italic = true })
hi("FoldColumn", { fg = c.polar3, bg = c.polar0 })
hi("MatchParen", { fg = c.electric1, bg = c.polar2, bold = true })
hi("Pmenu", { fg = c.snow0, bg = c.polar1 })
hi("PmenuSel", { fg = c.polar0, bg = c.electric1, bold = true })
hi("PmenuSbar", { bg = c.polar2 })
hi("PmenuThumb", { bg = c.electric1 })
hi("StatusLine", { fg = c.snow1, bg = c.polar1 })
hi("StatusLineNC", { fg = c.polar3, bg = c.polar1 })
hi("TabLine", { fg = c.polar3, bg = c.polar1 })
hi("TabLineFill", { bg = c.polar0 })
hi("TabLineSel", { fg = c.polar0, bg = c.electric1, bold = true })
hi("WinBar", { fg = c.snow0, bg = c.polar0 })
hi("WinBarNC", { fg = c.polar3, bg = c.polar0 })

-- Search & Visual
hi("Search", { fg = c.polar0, bg = c.vesper_gold })
hi("IncSearch", { fg = c.polar0, bg = c.electric1, bold = true })
hi("CurSearch", { fg = c.polar0, bg = c.electric3, bold = true })
hi("Substitute", { fg = c.polar0, bg = c.aurora_red })
hi("Visual", { bg = c.polar2 })
hi("VisualNOS", { bg = c.polar2 })

-- Diff
hi("DiffAdd", { fg = c.aurora_green, bg = "#2E4037" })
hi("DiffChange", { fg = c.vesper_gold, bg = "#3E3E34" })
hi("DiffDelete", { fg = c.aurora_red, bg = "#3E2E34" })
hi("DiffText", { fg = c.polar0, bg = c.vesper_gold, bold = true })

-- Spelling
hi("SpellBad", { undercurl = true, sp = c.aurora_red })
hi("SpellCap", { undercurl = true, sp = c.vesper_gold })
hi("SpellLocal", { undercurl = true, sp = c.aurora_cyan })
hi("SpellRare", { undercurl = true, sp = c.aurora_purple })

-- Messages
hi("ErrorMsg", { fg = c.aurora_red, bold = true })
hi("WarningMsg", { fg = c.vesper_gold, bold = true })
hi("ModeMsg", { fg = c.electric1, bold = true })
hi("MoreMsg", { fg = c.electric3 })
hi("Question", { fg = c.electric1 })
hi("Title", { fg = c.electric1, bold = true })
hi("Directory", { fg = c.electric1 })
hi("NonText", { fg = c.polar2 })
hi("SpecialKey", { fg = c.polar3 })
hi("Whitespace", { fg = c.polar2 })
hi("EndOfBuffer", { fg = c.polar0 })
hi("Conceal", { fg = c.polar3 })

-- Syntax highlighting
hi("Comment", { fg = "#6A737D", italic = true })
hi("Constant", { fg = c.vesper_amber })
hi("String", { fg = c.aurora_green })
hi("Character", { fg = c.aurora_green })
hi("Number", { fg = c.vesper_amber })
hi("Boolean", { fg = c.vesper_amber })
hi("Float", { fg = c.vesper_amber })
hi("Identifier", { fg = c.snow0 })
hi("Function", { fg = c.electric1 })
hi("Statement", { fg = c.aurora_purple })
hi("Conditional", { fg = c.aurora_purple })
hi("Repeat", { fg = c.aurora_purple })
hi("Label", { fg = c.aurora_purple })
hi("Operator", { fg = c.electric3 })
hi("Keyword", { fg = c.aurora_purple })
hi("Exception", { fg = c.aurora_purple })
hi("PreProc", { fg = c.aurora_cyan })
hi("Include", { fg = c.aurora_cyan })
hi("Define", { fg = c.aurora_cyan })
hi("Macro", { fg = c.aurora_cyan })
hi("PreCondit", { fg = c.aurora_cyan })
hi("Type", { fg = c.aurora_teal })
hi("StorageClass", { fg = c.aurora_purple })
hi("Structure", { fg = c.aurora_teal })
hi("Typedef", { fg = c.aurora_teal })
hi("Special", { fg = c.vesper_gold })
hi("SpecialChar", { fg = c.vesper_gold })
hi("Tag", { fg = c.electric1 })
hi("Delimiter", { fg = c.snow0 })
hi("SpecialComment", { fg = "#6A737D", italic = true })
hi("Debug", { fg = c.aurora_red })
hi("Underlined", { fg = c.frost, underline = true })
hi("Ignore", { fg = c.polar3 })
hi("Error", { fg = c.aurora_red, bold = true })
hi("Todo", { fg = c.polar0, bg = c.vesper_gold, bold = true })

-- Treesitter highlights
hi("@variable", { fg = c.snow0 })
hi("@variable.builtin", { fg = c.vesper_soft_orange })
hi("@variable.parameter", { fg = c.snow1, italic = true })
hi("@variable.member", { fg = c.snow0 })
hi("@constant", { fg = c.vesper_amber })
hi("@constant.builtin", { fg = c.vesper_amber })
hi("@constant.macro", { fg = c.aurora_cyan })
hi("@module", { fg = c.aurora_teal })
hi("@label", { fg = c.aurora_purple })
hi("@string", { fg = c.aurora_green })
hi("@string.documentation", { fg = "#6A737D", italic = true })
hi("@string.regexp", { fg = c.vesper_gold })
hi("@string.escape", { fg = c.vesper_gold })
hi("@string.special", { fg = c.vesper_gold })
hi("@character", { fg = c.aurora_green })
hi("@character.special", { fg = c.vesper_gold })
hi("@boolean", { fg = c.vesper_amber })
hi("@number", { fg = c.vesper_amber })
hi("@number.float", { fg = c.vesper_amber })
hi("@type", { fg = c.aurora_teal })
hi("@type.builtin", { fg = c.aurora_teal, italic = true })
hi("@type.definition", { fg = c.aurora_teal })
hi("@type.qualifier", { fg = c.aurora_purple })
hi("@attribute", { fg = c.aurora_cyan })
hi("@property", { fg = c.snow0 })
hi("@function", { fg = c.electric1 })
hi("@function.builtin", { fg = c.electric2 })
hi("@function.call", { fg = c.electric1 })
hi("@function.macro", { fg = c.aurora_cyan })
hi("@function.method", { fg = c.electric1 })
hi("@function.method.call", { fg = c.electric1 })
hi("@constructor", { fg = c.electric3 })
hi("@operator", { fg = c.electric3 })
hi("@keyword", { fg = c.aurora_purple })
hi("@keyword.coroutine", { fg = c.aurora_purple })
hi("@keyword.function", { fg = c.aurora_purple })
hi("@keyword.operator", { fg = c.electric3 })
hi("@keyword.import", { fg = c.aurora_cyan })
hi("@keyword.storage", { fg = c.aurora_purple })
hi("@keyword.repeat", { fg = c.aurora_purple })
hi("@keyword.return", { fg = c.aurora_purple })
hi("@keyword.debug", { fg = c.aurora_red })
hi("@keyword.exception", { fg = c.aurora_purple })
hi("@keyword.conditional", { fg = c.aurora_purple })
hi("@keyword.directive", { fg = c.aurora_cyan })
hi("@keyword.directive.define", { fg = c.aurora_cyan })
hi("@punctuation.delimiter", { fg = c.snow0 })
hi("@punctuation.bracket", { fg = c.snow0 })
hi("@punctuation.special", { fg = c.electric3 })
hi("@comment", { fg = "#6A737D", italic = true })
hi("@comment.documentation", { fg = "#6A737D", italic = true })
hi("@comment.error", { fg = c.aurora_red })
hi("@comment.warning", { fg = c.vesper_gold })
hi("@comment.todo", { fg = c.polar0, bg = c.vesper_gold, bold = true })
hi("@comment.note", { fg = c.polar0, bg = c.electric1, bold = true })
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.heading", { fg = c.electric1, bold = true })
hi("@markup.quote", { fg = c.aurora_green, italic = true })
hi("@markup.math", { fg = c.aurora_cyan })
hi("@markup.environment", { fg = c.aurora_purple })
hi("@markup.link", { fg = c.frost, underline = true })
hi("@markup.link.label", { fg = c.snow0 })
hi("@markup.link.url", { fg = c.aurora_cyan, underline = true })
hi("@markup.raw", { fg = c.aurora_green })
hi("@markup.list", { fg = c.electric3 })
hi("@diff.plus", { fg = c.aurora_green })
hi("@diff.minus", { fg = c.aurora_red })
hi("@diff.delta", { fg = c.vesper_gold })
hi("@tag", { fg = c.electric1 })
hi("@tag.attribute", { fg = c.vesper_amber })
hi("@tag.delimiter", { fg = c.snow0 })

-- LSP semantic tokens
hi("@lsp.type.class", { link = "@type" })
hi("@lsp.type.decorator", { link = "@attribute" })
hi("@lsp.type.enum", { link = "@type" })
hi("@lsp.type.enumMember", { link = "@constant" })
hi("@lsp.type.function", { link = "@function" })
hi("@lsp.type.interface", { link = "@type" })
hi("@lsp.type.macro", { link = "@function.macro" })
hi("@lsp.type.method", { link = "@function.method" })
hi("@lsp.type.namespace", { link = "@module" })
hi("@lsp.type.parameter", { link = "@variable.parameter" })
hi("@lsp.type.property", { link = "@property" })
hi("@lsp.type.struct", { link = "@type" })
hi("@lsp.type.type", { link = "@type" })
hi("@lsp.type.typeParameter", { link = "@type" })
hi("@lsp.type.variable", { link = "@variable" })

-- Diagnostics
hi("DiagnosticError", { fg = c.aurora_red })
hi("DiagnosticWarn", { fg = c.vesper_gold })
hi("DiagnosticInfo", { fg = c.electric1 })
hi("DiagnosticHint", { fg = c.aurora_cyan })
hi("DiagnosticOk", { fg = c.aurora_green })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.aurora_red })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.vesper_gold })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.electric1 })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.aurora_cyan })
hi("DiagnosticUnderlineOk", { undercurl = true, sp = c.aurora_green })
hi("DiagnosticVirtualTextError", { fg = c.aurora_red, bg = "#3E2E34" })
hi("DiagnosticVirtualTextWarn", { fg = c.vesper_gold, bg = "#3E3A34" })
hi("DiagnosticVirtualTextInfo", { fg = c.electric1, bg = "#2E3E40" })
hi("DiagnosticVirtualTextHint", { fg = c.aurora_cyan, bg = "#2E3E40" })
hi("DiagnosticVirtualTextOk", { fg = c.aurora_green, bg = "#2E4037" })
hi("DiagnosticSignError", { fg = c.aurora_red })
hi("DiagnosticSignWarn", { fg = c.vesper_gold })
hi("DiagnosticSignInfo", { fg = c.electric1 })
hi("DiagnosticSignHint", { fg = c.aurora_cyan })
hi("DiagnosticSignOk", { fg = c.aurora_green })

-- Git signs
hi("GitSignsAdd", { fg = c.aurora_green })
hi("GitSignsChange", { fg = c.vesper_gold })
hi("GitSignsDelete", { fg = c.aurora_red })
hi("GitSignsAddNr", { fg = c.aurora_green })
hi("GitSignsChangeNr", { fg = c.vesper_gold })
hi("GitSignsDeleteNr", { fg = c.aurora_red })
hi("GitSignsAddLn", { bg = "#2E4037" })
hi("GitSignsChangeLn", { bg = "#3E3A34" })
hi("GitSignsDeleteLn", { bg = "#3E2E34" })

-- Telescope
hi("TelescopeNormal", { fg = c.snow0, bg = c.polar0 })
hi("TelescopeBorder", { fg = c.electric1, bg = c.polar0 })
hi("TelescopeTitle", { fg = c.electric1, bold = true })
hi("TelescopePromptNormal", { fg = c.snow1, bg = c.polar1 })
hi("TelescopePromptBorder", { fg = c.electric1, bg = c.polar1 })
hi("TelescopePromptTitle", { fg = c.polar0, bg = c.electric1, bold = true })
hi("TelescopePromptPrefix", { fg = c.electric1 })
hi("TelescopePromptCounter", { fg = c.polar3 })
hi("TelescopeResultsNormal", { fg = c.snow0, bg = c.polar0 })
hi("TelescopeResultsBorder", { fg = c.electric1, bg = c.polar0 })
hi("TelescopeResultsTitle", { fg = c.electric1 })
hi("TelescopePreviewNormal", { fg = c.snow0, bg = c.polar0 })
hi("TelescopePreviewBorder", { fg = c.electric1, bg = c.polar0 })
hi("TelescopePreviewTitle", { fg = c.electric1 })
hi("TelescopeSelection", { fg = c.snow2, bg = c.polar2 })
hi("TelescopeSelectionCaret", { fg = c.electric1, bg = c.polar2 })
hi("TelescopeMatching", { fg = c.electric1, bold = true })

-- Nvim-tree / Neo-tree
hi("NvimTreeNormal", { fg = c.snow0, bg = c.polar0 })
hi("NvimTreeNormalNC", { fg = c.snow0, bg = c.polar0 })
hi("NvimTreeWinSeparator", { fg = c.polar0, bg = c.polar0 })
hi("NvimTreeFolderName", { fg = c.snow0 })
hi("NvimTreeFolderIcon", { fg = c.electric1 })
hi("NvimTreeOpenedFolderName", { fg = c.snow1 })
hi("NvimTreeRootFolder", { fg = c.electric1, bold = true })
hi("NvimTreeSpecialFile", { fg = c.vesper_gold })
hi("NvimTreeFileName", { fg = c.snow0 })
hi("NvimTreeGitDirty", { fg = c.vesper_gold })
hi("NvimTreeGitNew", { fg = c.aurora_green })
hi("NvimTreeGitDeleted", { fg = c.aurora_red })
hi("NeoTreeNormal", { fg = c.snow0, bg = c.polar0 })
hi("NeoTreeNormalNC", { fg = c.snow0, bg = c.polar0 })
hi("NeoTreeDirectoryName", { fg = c.snow0 })
hi("NeoTreeDirectoryIcon", { fg = c.electric1 })
hi("NeoTreeFileName", { fg = c.snow0 })
hi("NeoTreeRootName", { fg = c.electric1, bold = true })
hi("NeoTreeGitModified", { fg = c.vesper_gold })
hi("NeoTreeGitAdded", { fg = c.aurora_green })
hi("NeoTreeGitDeleted", { fg = c.aurora_red })
hi("NeoTreeGitUntracked", { fg = c.vesper_amber })
hi("NeoTreeFloatBorder", { fg = c.electric1, bg = c.polar0 })
hi("NeoTreeFloatTitle", { fg = c.electric1, bg = c.polar0 })

-- Which-key
hi("WhichKey", { fg = c.electric1 })
hi("WhichKeyGroup", { fg = c.aurora_purple })
hi("WhichKeySeparator", { fg = c.polar3 })
hi("WhichKeyDesc", { fg = c.snow0 })
hi("WhichKeyValue", { fg = c.polar3 })

-- Dashboard / Alpha
hi("DashboardHeader", { fg = c.electric1 })
hi("DashboardCenter", { fg = c.electric3 })
hi("DashboardShortCut", { fg = c.aurora_purple })
hi("DashboardFooter", { fg = "#6A737D", italic = true })
hi("AlphaHeader", { fg = c.electric1 })
hi("AlphaButtons", { fg = c.electric3 })
hi("AlphaShortcut", { fg = c.aurora_purple })
hi("AlphaFooter", { fg = "#6A737D", italic = true })

-- Snacks
hi("SnacksIndent", { fg = c.polar2 })
hi("SnacksIndentScope", { fg = c.polar3 })
hi("SnacksIndentChunk", { fg = c.polar3 })

-- Snacks Picker / Explorer
hi("SnacksPickerFile", { fg = c.snow0 })
hi("SnacksPickerDir", { fg = c.aurora_blue })
hi("SnacksPickerDirectory", { fg = c.electric1 })
hi("SnacksPickerPathHidden", { fg = c.vesper_warm_gray })
hi("SnacksPickerPathIgnored", { fg = c.vesper_warm_gray })
hi("SnacksPickerDimmed", { fg = c.vesper_warm_gray })
hi("SnacksPickerTree", { fg = c.polar2 })
hi("SnacksPickerMatch", { fg = c.electric1, bold = true })
hi("SnacksPickerBorder", { fg = c.electric1, bg = c.polar0 })
hi("SnacksPickerPrompt", { fg = c.electric1 })
hi("SnacksPickerInput", { fg = c.snow1, bg = c.polar0 })
hi("SnacksPickerInputBorder", { fg = c.electric1, bg = c.polar0 })
hi("SnacksPickerList", { fg = c.snow0, bg = c.polar0 })
hi("SnacksPickerListCursorLine", { bg = c.polar2 })
hi("SnacksPickerSelected", { fg = c.electric1 })
hi("SnacksPickerPreview", { fg = c.snow0, bg = c.polar0 })
hi("SnacksPickerPreviewBorder", { fg = c.electric1, bg = c.polar0 })
hi("SnacksPickerTitle", { fg = c.electric1, bg = c.polar0, bold = true })
hi("SnacksPickerListBorder", { fg = c.electric1, bg = c.polar0 })
hi("SnacksExplorerNormal", { fg = c.snow0, bg = c.polar0 })
hi("SnacksExplorerCursorLine", { bg = c.polar2 })
hi("SnacksPickerGitStatusAdded", { fg = c.aurora_green })
hi("SnacksPickerGitStatusModified", { fg = c.vesper_gold })
hi("SnacksPickerGitStatusDeleted", { fg = c.aurora_red })
hi("SnacksPickerGitStatusRenamed", { fg = c.aurora_cyan })
hi("SnacksPickerGitStatusUntracked", { fg = c.vesper_amber })
hi("SnacksPickerGitStatusStaged", { fg = c.aurora_green })
hi("SnacksPickerGitStatusUnmerged", { fg = c.aurora_red })
hi("SnacksPickerLink", { fg = c.frost, underline = true })
hi("SnacksPickerLinkBroken", { fg = c.aurora_red, strikethrough = true })

-- Indent-blankline
hi("IblIndent", { fg = c.polar2 })
hi("IblScope", { fg = c.electric1 })
hi("IndentBlanklineChar", { fg = c.polar2 })
hi("IndentBlanklineContextChar", { fg = c.electric1 })

-- Bufferline
hi("BufferLineFill", { bg = c.polar0 })
hi("BufferLineCloseButtonSelected", { fg = c.aurora_red, bg = c.polar0 })
hi("BufferLineCloseButtonVisible", { fg = c.aurora_blue, bg = c.polar0 })
hi("BufferLineIndicatorSelected", { fg = c.electric1, bg = c.polar0 })
hi("BufferLineIndicatorVisible", { fg = c.polar0, bg = c.polar0 })
hi("BufferLineModified", { fg = c.vesper_gold, bg = c.polar0 })
hi("BufferLineModifiedSelected", { fg = c.vesper_gold, bg = c.polar0 })
hi("BufferLineModifiedVisible", { fg = c.vesper_gold, bg = c.polar0 })
hi("BufferLineSeparator", { fg = c.polar0, bg = c.polar0 })
hi("BufferLineSeparatorSelected", { fg = c.polar0, bg = c.polar0 })
hi("BufferLineSeparatorVisible", { fg = c.polar0, bg = c.polar0 })
hi("BufferLineTab", { fg = c.aurora_blue, bg = c.polar0 })
hi("BufferLineTabSelected", { fg = c.snow2, bg = c.polar0, bold = true })
hi("BufferLineTabClose", { fg = c.aurora_red, bg = c.polar0 })

-- Lualine (for lualine theme)
M.lualine = {
  normal = {
    a = { fg = c.polar0, bg = c.electric1, gui = "bold" },
    b = { fg = c.snow1, bg = c.polar2 },
    c = { fg = c.snow0, bg = c.polar1 },
  },
  insert = {
    a = { fg = c.polar0, bg = c.aurora_green, gui = "bold" },
    b = { fg = c.snow1, bg = c.polar2 },
    c = { fg = c.snow0, bg = c.polar1 },
  },
  visual = {
    a = { fg = c.polar0, bg = c.aurora_purple, gui = "bold" },
    b = { fg = c.snow1, bg = c.polar2 },
    c = { fg = c.snow0, bg = c.polar1 },
  },
  replace = {
    a = { fg = c.polar0, bg = c.aurora_red, gui = "bold" },
    b = { fg = c.snow1, bg = c.polar2 },
    c = { fg = c.snow0, bg = c.polar1 },
  },
  command = {
    a = { fg = c.polar0, bg = c.vesper_gold, gui = "bold" },
    b = { fg = c.snow1, bg = c.polar2 },
    c = { fg = c.snow0, bg = c.polar1 },
  },
  inactive = {
    a = { fg = c.polar3, bg = c.polar1 },
    b = { fg = c.polar3, bg = c.polar1 },
    c = { fg = c.polar3, bg = c.polar1 },
  },
}

-- Lazy.nvim
hi("LazyH1", { fg = c.polar0, bg = c.electric1, bold = true })
hi("LazyButton", { fg = c.snow0, bg = c.polar2 })
hi("LazyButtonActive", { fg = c.polar0, bg = c.electric1, bold = true })
hi("LazySpecial", { fg = c.electric1 })
hi("LazyProgressDone", { fg = c.electric1 })
hi("LazyProgressTodo", { fg = c.polar3 })

-- Mason
hi("MasonHeader", { fg = c.polar0, bg = c.electric1, bold = true })
hi("MasonHighlight", { fg = c.electric1 })
hi("MasonHighlightBlock", { fg = c.polar0, bg = c.electric1 })
hi("MasonHighlightBlockBold", { fg = c.polar0, bg = c.electric1, bold = true })
hi("MasonMuted", { fg = c.polar3 })
hi("MasonMutedBlock", { fg = c.polar0, bg = c.polar3 })

-- Notify
hi("NotifyERRORBorder", { fg = c.aurora_red })
hi("NotifyERRORIcon", { fg = c.aurora_red })
hi("NotifyERRORTitle", { fg = c.aurora_red, bold = true })
hi("NotifyWARNBorder", { fg = c.vesper_gold })
hi("NotifyWARNIcon", { fg = c.vesper_gold })
hi("NotifyWARNTitle", { fg = c.vesper_gold, bold = true })
hi("NotifyINFOBorder", { fg = c.electric1 })
hi("NotifyINFOIcon", { fg = c.electric1 })
hi("NotifyINFOTitle", { fg = c.electric1, bold = true })
hi("NotifyDEBUGBorder", { fg = c.polar3 })
hi("NotifyDEBUGIcon", { fg = c.polar3 })
hi("NotifyDEBUGTitle", { fg = c.polar3, bold = true })
hi("NotifyTRACEBorder", { fg = c.aurora_purple })
hi("NotifyTRACEIcon", { fg = c.aurora_purple })
hi("NotifyTRACETitle", { fg = c.aurora_purple, bold = true })

-- Noice
hi("NoiceCmdline", { fg = c.snow1 })
hi("NoiceCmdlineIcon", { fg = c.electric1 })
hi("NoiceCmdlineIconSearch", { fg = c.vesper_gold })
hi("NoiceCmdlinePopupBorder", { fg = c.electric1 })
hi("NoiceCmdlinePopupTitle", { fg = c.electric1 })
hi("NoiceConfirmBorder", { fg = c.electric1 })

-- Flash
hi("FlashBackdrop", { fg = c.polar3 })
hi("FlashLabel", { fg = c.polar0, bg = c.electric1, bold = true })
hi("FlashMatch", { fg = c.electric1 })
hi("FlashCurrent", { fg = c.vesper_gold })

-- Cmp
hi("CmpItemAbbr", { fg = c.snow0 })
hi("CmpItemAbbrDeprecated", { fg = c.polar3, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = c.electric1, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.electric1, bold = true })
hi("CmpItemKind", { fg = c.aurora_purple })
hi("CmpItemMenu", { fg = c.polar3 })
hi("CmpItemKindClass", { fg = c.aurora_teal })
hi("CmpItemKindColor", { fg = c.vesper_gold })
hi("CmpItemKindConstant", { fg = c.vesper_amber })
hi("CmpItemKindConstructor", { fg = c.electric3 })
hi("CmpItemKindEnum", { fg = c.aurora_teal })
hi("CmpItemKindEnumMember", { fg = c.vesper_amber })
hi("CmpItemKindEvent", { fg = c.aurora_purple })
hi("CmpItemKindField", { fg = c.snow0 })
hi("CmpItemKindFile", { fg = c.snow0 })
hi("CmpItemKindFolder", { fg = c.snow0 })
hi("CmpItemKindFunction", { fg = c.electric1 })
hi("CmpItemKindInterface", { fg = c.aurora_teal })
hi("CmpItemKindKeyword", { fg = c.aurora_purple })
hi("CmpItemKindMethod", { fg = c.electric1 })
hi("CmpItemKindModule", { fg = c.aurora_teal })
hi("CmpItemKindOperator", { fg = c.electric3 })
hi("CmpItemKindProperty", { fg = c.snow0 })
hi("CmpItemKindReference", { fg = c.aurora_purple })
hi("CmpItemKindSnippet", { fg = c.aurora_green })
hi("CmpItemKindStruct", { fg = c.aurora_teal })
hi("CmpItemKindText", { fg = c.snow0 })
hi("CmpItemKindTypeParameter", { fg = c.aurora_teal })
hi("CmpItemKindUnit", { fg = c.vesper_amber })
hi("CmpItemKindValue", { fg = c.vesper_amber })
hi("CmpItemKindVariable", { fg = c.snow0 })

-- Copilot
hi("CopilotSuggestion", { fg = "#6A737D", italic = true })
hi("CopilotAnnotation", { fg = "#6A737D", italic = true })

-- Mini
hi("MiniIndentscopeSymbol", { fg = c.electric1 })
hi("MiniCursorword", { bg = c.polar2 })
hi("MiniCursorwordCurrent", { bg = c.polar2 })
hi("MiniStatuslineDevinfo", { fg = c.snow0, bg = c.polar2 })
hi("MiniStatuslineFileinfo", { fg = c.snow0, bg = c.polar2 })
hi("MiniStatuslineFilename", { fg = c.snow0, bg = c.polar1 })
hi("MiniStatuslineInactive", { fg = c.polar3, bg = c.polar1 })
hi("MiniStatuslineModeCommand", { fg = c.polar0, bg = c.vesper_gold, bold = true })
hi("MiniStatuslineModeInsert", { fg = c.polar0, bg = c.aurora_green, bold = true })
hi("MiniStatuslineModeNormal", { fg = c.polar0, bg = c.electric1, bold = true })
hi("MiniStatuslineModeOther", { fg = c.polar0, bg = c.aurora_teal, bold = true })
hi("MiniStatuslineModeReplace", { fg = c.polar0, bg = c.aurora_red, bold = true })
hi("MiniStatuslineModeVisual", { fg = c.polar0, bg = c.aurora_purple, bold = true })

-- Navic / Navbuddy
hi("NavicIconsFile", { fg = c.snow0 })
hi("NavicIconsModule", { fg = c.aurora_teal })
hi("NavicIconsNamespace", { fg = c.aurora_teal })
hi("NavicIconsPackage", { fg = c.aurora_teal })
hi("NavicIconsClass", { fg = c.aurora_teal })
hi("NavicIconsMethod", { fg = c.electric1 })
hi("NavicIconsProperty", { fg = c.snow0 })
hi("NavicIconsField", { fg = c.snow0 })
hi("NavicIconsConstructor", { fg = c.electric3 })
hi("NavicIconsEnum", { fg = c.aurora_teal })
hi("NavicIconsInterface", { fg = c.aurora_teal })
hi("NavicIconsFunction", { fg = c.electric1 })
hi("NavicIconsVariable", { fg = c.snow0 })
hi("NavicIconsConstant", { fg = c.vesper_amber })
hi("NavicIconsString", { fg = c.aurora_green })
hi("NavicIconsNumber", { fg = c.vesper_amber })
hi("NavicIconsBoolean", { fg = c.vesper_amber })
hi("NavicIconsArray", { fg = c.aurora_purple })
hi("NavicIconsObject", { fg = c.aurora_teal })
hi("NavicIconsKey", { fg = c.aurora_purple })
hi("NavicIconsNull", { fg = c.vesper_amber })
hi("NavicIconsEnumMember", { fg = c.vesper_amber })
hi("NavicIconsStruct", { fg = c.aurora_teal })
hi("NavicIconsEvent", { fg = c.aurora_purple })
hi("NavicIconsOperator", { fg = c.electric3 })
hi("NavicIconsTypeParameter", { fg = c.aurora_teal })
hi("NavicText", { fg = c.snow0 })
hi("NavicSeparator", { fg = c.polar3 })

-- Trouble
hi("TroubleNormal", { fg = c.snow0, bg = c.polar0 })
hi("TroubleNormalNC", { fg = c.snow0, bg = c.polar0 })

-- Blink.cmp (modern completion)
hi("BlinkCmpMenu", { fg = c.snow0, bg = c.polar1 })
hi("BlinkCmpMenuBorder", { fg = c.electric1, bg = c.polar1 })
hi("BlinkCmpMenuSelection", { fg = c.polar0, bg = c.electric1 })
hi("BlinkCmpLabel", { fg = c.snow0 })
hi("BlinkCmpLabelMatch", { fg = c.electric1, bold = true })
hi("BlinkCmpLabelDeprecated", { fg = c.polar3, strikethrough = true })
hi("BlinkCmpKind", { fg = c.aurora_purple })
hi("BlinkCmpKindFunction", { fg = c.electric1 })
hi("BlinkCmpKindMethod", { fg = c.electric1 })
hi("BlinkCmpKindVariable", { fg = c.snow0 })
hi("BlinkCmpKindConstant", { fg = c.vesper_amber })
hi("BlinkCmpKindClass", { fg = c.aurora_teal })
hi("BlinkCmpKindStruct", { fg = c.aurora_teal })
hi("BlinkCmpKindInterface", { fg = c.aurora_teal })
hi("BlinkCmpKindModule", { fg = c.aurora_teal })
hi("BlinkCmpKindProperty", { fg = c.snow0 })
hi("BlinkCmpKindField", { fg = c.snow0 })
hi("BlinkCmpKindKeyword", { fg = c.aurora_purple })
hi("BlinkCmpKindSnippet", { fg = c.aurora_green })
hi("BlinkCmpKindText", { fg = c.snow0 })
hi("BlinkCmpDoc", { fg = c.snow0, bg = c.polar1 })
hi("BlinkCmpDocBorder", { fg = c.electric1, bg = c.polar1 })
hi("BlinkCmpSignatureHelp", { fg = c.snow0, bg = c.polar1 })
hi("BlinkCmpSignatureHelpBorder", { fg = c.electric1, bg = c.polar1 })

return M
