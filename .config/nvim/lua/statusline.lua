vim.cmd [[packadd galaxyline.nvim]]
local fileinfo = require 'galaxyline.provider_fileinfo'
local devicons = require 'nvim-web-devicons'
local gl = require('galaxyline')

local gls = gl.section
gl.short_line_list = {'packager', 'NvimTree', 'dbui', 'vista'}

local colors = {
    bg = '#181621',
    fg = '#f5d6f5',
    blue = '#7fe8de',
    green = '#94e77e',
    purple = '#ccaaff',
    orange = '#ffe100',
    red1 = '#d77392',
    red2 = '#e11537',
    yellow = '#ffe771'
}

local mode_map = {
    ['n'] = {'NORMAL', colors.purple},
    ['i'] = {'INSERT', colors.blue},
    ['R'] = {'REPLACE', colors.red1},
    ['v'] = {'VISUAL', colors.yellow},
    ['V'] = {'V-LINE', colors.yellow},
    ['c'] = {'COMMAND', colors.green},
    ['s'] = {'SELECT', colors.orange},
    ['S'] = {'S-LINE', colors.orange},
    ['t'] = {'TERMINAL', colors.blue},
    [''] = {'V-BLOCK', colors.yellow},
    [''] = {'S-BLOCK', colors.yellow},
    ['Rv'] = {'VIRTUAL'},
    ['rm'] = {'--MORE'}
}

local sep = {
    rightfull   = '',
    right       = '',
    leftfull    = '',
    left        = ''
}

local icons = {
    locker      = '',
    unsaved     = '',
    info        = '',
    warn        = '',
    err         = ''
}


local function mode_label() return mode_map[vim.fn.mode()][1] or 'N/A' end
local function mode_hl() return mode_map[vim.fn.mode()][2] or colors.bg end

local function highlight(group, fg, bg, gui)
    local comd = string.format('highlight %s guifg=%s guibg=%s', group, fg, bg)
    if gui ~= nil then comd = comd .. ' gui=' .. gui end
    vim.cmd(comd)
end

local function buffer_not_empty()
    if vim.fn.empty(vim.fn.expand '%:t') ~= 1 then return true end
    return false
end

local function wide_enough()
    local squeeze_width = vim.fn.winwidth(0)
    if squeeze_width > 80 then return true end
    return false
end


gls.left[1] =
{
    ViMode = {
        provider = function()
            local modehl = mode_hl()
            highlight('GalaxyViMode', colors.bg, modehl, 'bold')
            highlight('GalaxyViModeInv', modehl, colors.bg, 'bold')
            return string.format('  %s ', mode_label())
        end,
        separator = sep.leftfull,
        separator_highlight = 'GalaxyViModeInv',
    }
}
gls.left[2] =
{
    FileIcon = {
        provider = function()
            local fname, ext = vim.fn.expand '%:t', vim.fn.expand '%:e'
            local icon, iconhl = devicons.get_icon(fname, ext)
            if icon == nil then return '' end
            local fg = vim.fn.synIDattr(vim.fn.hlID(iconhl), 'fg')
            highlight('GalaxyFileIcon', fg, colors.bg)
            return ' ' .. icon .. ' '
        end,
        condition = buffer_not_empty
    }
}
gls.left[3] =
{
    FileName = {
        provider = function()
            if not buffer_not_empty() then return '' end
            local fname
            if wide_enough() then
                fname = vim.fn.fnamemodify(vim.fn.expand '%', ':~:.')
            else
                fname = vim.fn.expand '%:t'
            end
            if #fname == 0 then return '' end
            if vim.bo.readonly then
                fname = fname .. ' ' .. icons.locker
            end
            if vim.bo.modified then
                fname = fname .. ' ' .. icons.unsaved
            end
            return ' ' .. fname .. ' '
        end,
        highlight = {colors.fg, colors.bg},
        separator = sep.left,
        separator_highlight = 'GalaxyViModeInv'
    }
}


gls.right[1] =
{
    LspStatus = {
        provider = function()
            local connected =
              not vim.tbl_isempty(vim.lsp.buf_get_clients(0))
            if connected then
                return ''
            else
                return ''
            end
        end,
        highlight = {colors.fg, colors.bg},
        separator = sep.right,
        separator_highlight = 'GalaxyViModeInv'
    }
}
gls.right[2] =
{
    DiagnosticWarn = {
        provider = function()
            local n = vim.lsp.diagnostic.get_count(0, 'Warning')
            if n == 0 then return '' end
            return string.format(' %s %d ', icons.warn, n)
        end,
        highlight = {colors.yellow, colors.bg}
    }
}
gls.right[3] =
{
    DiagnosticError = {
        provider = function()
            local n = vim.lsp.diagnostic.get_count(0, 'Error')
            if n == 0 then return '' end
            return string.format(' %s %d ', icons.err, n)
        end,
        highlight = {colors.red2, colors.bg}
    }
}
gls.right[4] =
{
    FileType = {
        provider = function()
            if not buffer_not_empty() then return '' end
            return ' ' .. vim.bo.filetype .. ' '
        end,
        condition = buffer_not_empty,
        highlight = {colors.fg, colors.bg},
        separator = sep.right,
        separator_highlight = 'GalaxyViModeInv'
    }
}
gls.right[5] =
{
    PositionInfo = {
        provider = {
            function()
                return string.format(
                  '%s:%s', vim.fn.line('.'), vim.fn.col('.')
                )
            end
        },
        highlight = 'GalaxyViMode',
        condition = buffer_not_empty,
        separator = sep.rightfull,
        separator_highlight = 'GalaxyViModeInv'
    }
}
gls.right[6] =
{
    PercentInfo = {
        provider = fileinfo.current_line_percent,
        highlight = 'GalaxyViMode',
        condition = buffer_not_empty,
        separator = sep.right,
        separator_highlight = 'GalaxyViMode'
    }
}

for k, v in pairs(gls.left) do gls.short_line_left[k] = v end
table.remove(gls.short_line_left, 1)

for k, v in pairs(gls.right) do gls.short_line_right[k] = v end
table.remove(gls.short_line_right)
table.remove(gls.short_line_right)

gl.load_galaxyline()
