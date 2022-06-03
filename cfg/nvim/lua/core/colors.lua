local colors = {
    black = "TDC_BLACK",
    red = "TDC_RED",
    green = "TDC_GREEN",
    yellow = "TDC_YELLOW",
    blue = "TDC_BLUE",
    magenta = "TDC_MAGENTA",
    cyan = "TDC_CYAN",
    white = "TDC_WHITE",
    black_bright = "TDC_BLACK_BRIGHT",
    red_bright = "TDC_RED_BRIGHT",
    green_bright = "TDC_GREEN_BRIGHT",
    yellow_bright = "TDC_YELLOW_BRIGHT",
    blue_bright = "TDC_BLUE_BRIGHT",
    magenta_bright = "TDC_MAGENTA_BRIGHT",
    cyan_bright = "TDC_CYAN_BRIGHT",
    white_bright = "TDC_WHITE_BRIGHT",
    background = "TDC_BACKGROUND",
    foreground = "TDC_FOREGROUND",
}

local function fg(group, color)
    vim.cmd("hi " .. group .. " guifg=" .. color)
end

local function bg(group, color)
    vim.cmd("hi " .. group .. " guibg=" .. color)
end

local function fgbg(group, fgcol, bgcol)
    vim.cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

-- Italic Comments
vim.cmd("hi Comment gui=italic")
vim.cmd("hi StatusLineNC gui=underline")
vim.cmd("hi clear CursorLine")
vim.cmd("hi clear CursorLineNr")
vim.cmd("hi clear VertSplit")

fg("SpecialKey", colors.cyan)
fg("EndOfBuffer", colors.black)
fg("TermCursor", colors.foreground)
fg("NonText", colors.blue)
fg("Directory", colors.cyan)
fgbg("ErrorMsg", colors.white, colors.red)
fgbg("Search", colors.black, colors.yellow)
fg("MoreMsg", colors.green_bright)
bg("LineNr", colors.black)
bg("CursorLineNr", colors.black)
bg("SignColumn", colors.black)
fg("LineNr", colors.yellow_bright)
fg("CursorLineNr", colors.yellow)
fg("Question", colors.green)
fgbg("StatusLine", colors.foreground, colors.black)
fgbg("StatusLineNC", colors.foreground, colors.black)
fgbg("VertSplit", colors.white, colors.black)
fg("Title", colors.magenta)
fgbg("Visual", colors.black, colors.white_bright)
fg("WarningMsg", colors.red)
fgbg("WildMenu", colors.black, colors.yellow)
fgbg("Folded", colors.cyan, colors.black)
fgbg("Folded", colors.cyan_bright, colors.black)
fgbg("DiffAdd", colors.black, colors.blue_bright)
fgbg("DiffChange", colors.black, colors.magenta_bright)
fgbg("DiffDelete", colors.black, colors.cyan_bright)
fgbg("WarningMsg", colors.white, colors.red)
fg("SignColumn", colors.cyan)
fgbg("Error", colors.white, colors.red)
fgbg("Todo", colors.blue, colors.yellow)
fg("String", colors.green_bright)
fg("Constant", colors.red_bright)
fg("Character", colors.yellow)
fg("Number", colors.blue)
fg("Indentifier", colors.cyan)
fg("Statement", colors.yellow)
fg("PreProc", colors.magenta)
fg("Type", colors.green_bright)
fg("Tag", colors.yellow_bright)
fg("Comment", colors.blue_bright)
fg("Underlined", colors.blue_bright)

fg("NvimTreeFolderIcon", colors.blue)
fg("NvimTreeFolderName", colors.blue_bright)
fg("NvimTreeOpenedFolderName", colors.cyan_bright)
fg("NvimTreeEmptyFolderName", colors.cyan_bright)
fg("NvimTreeFileDirty", colors.red_bright)
fg("NvimTreeGitDirty", colors.red_bright)
fg("NvimTreeGitDeleted", colors.red_bright)
fg("NvimTreeExecFile", colors.yellow_bright)
fg("NvimTreeRootFolder", colors.blue)
fg("NvimTreeIndentMarker", colors.blue_bright)
bg("NvimTreeNormal", colors.black)
fgbg("NvimTreeVertSplit", colors.white, colors.black)
fgbg("NvimTreeEndOfBuffer", colors.black, colors.black)
fgbg("NvimTreeStatusLine", colors.black, colors.foreground)
vim.cmd("hi NvimTreeStatusLineNC gui=underline guifg=" .. colors.background .. " guibg=" .. colors.background)
