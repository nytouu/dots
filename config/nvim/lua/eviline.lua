local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'NvimTree','vista','dbui','packager'}

local colors = {
  -- bg = '#1f2335',
  bg = '#1d202f',
  fg = '#c0caf5',
  yellow = '#ffe771',
  cyan = '#7dcfff',
  green = '#9ece6a',
  orange = '#e0af68',
  magenta = '#bb9af2',
  blue = '#7aa2f7',
  red = '#ec5f67'
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

local function highlight(group, fg, bg, gui)
    local comd = string.format('highlight %s guifg=%s guibg=%s', group, fg, bg)
    if gui ~= nil then comd = comd .. ' gui=' .. gui end
    vim.cmd(comd)
end

gls.left[1] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.blue, i = colors.green,v=colors.yellow,
                          [''] = colors.yellow,V=colors.yellow,
                          c = colors.green,no = colors.magenta,s = colors.orange,
                          S=colors.orange,[''] = colors.orange,
                          ic = colors.yellow,R = colors.red,Rv = colors.red,
                          cv = colors.orange,ce=colors.orange, r = colors.red,
                          rm = colors.cyan, ['r?'] = colors.cyan,
                          ['!']  = colors.red,t = colors.blue}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return '▊  '
    end,
    highlight = {colors.red,colors.bg,'bold'}
  }
}

gls.left[2] = {
  FileSize = {
    provider = 'FileSize',
    condition = buffer_not_empty,
    highlight = {colors.fg,colors.bg}
  }
}

gls.left[3] ={
    FileIcon = {
        provider = function()
            local fname, ext = vim.fn.expand '%:t', vim.fn.expand '%:e'
            local icon, iconhl = require'nvim-web-devicons'.get_icon(fname, ext)
            if icon == nil then return '' end
            local fg = vim.fn.synIDattr(vim.fn.hlID(iconhl), 'fg')
            highlight('GalaxyFileIcon', fg, colors.bg)
            return ' ' .. icon .. ' '
        end,
        condition = buffer_not_empty
    }
}

gls.left[4] = {
  FileName = {
    provider = {'FileName'},
    condition = buffer_not_empty,
    highlight = {colors.green,colors.bg,'bold'}
  }
}

gls.left[5] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg,colors.bg}
  }
}

gls.left[6] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg,colors.bg,'bold'}
  }
}

gls.left[7] = {
  DiffAdd = {
    provider = 'DiffAdd',
    icon = '  ',
    highlight = {colors.green,colors.bg}
  }
}

gls.left[8] = {
  DiffModified = {
    provider = 'DiffModified',
    icon = ' 柳',
    highlight = {colors.orange,colors.bg}
  }
}
gls.left[9] = {
  DiffRemove = {
    provider = 'DiffRemove',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

gls.right[1] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    condition = checkwidth,
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}

gls.right[2] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    condition = checkwidth,
    icon = '  ',
    highlight = {colors.yellow,colors.bg}
  }
}

gls.right[3] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    condition = checkwidth,
    icon = '  ',
    highlight = {colors.cyan,colors.bg}
  }
}

gls.right[4] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    condition = checkwidth,
    icon = '  ',
    highlight = {colors.blue,colors.bg}
  }
}
gls.right[5] = {
  FileEncode = {
    provider = 'FileEncode',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.cyan,colors.bg,'bold'}
  }
}

gls.right[6] = {
  FileFormat = {
    provider = 'FileFormat',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.cyan,colors.bg,'bold'}
  }
}

gls.right[7] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = require('galaxyline.condition').check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.violet,colors.bg,'bold'}
  }
}

gls.right[8] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = require('galaxyline.condition').check_git_workspace,
    highlight = {colors.violet,colors.bg,'bold'}
  }
}

gls.right[9] = {
  ViMode2 = {
    provider = function()
      return ' ▊'
    end,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = 'GalaxyViMode'
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.blue,colors.bg,'bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider = function ()
      local fileinfo = require('galaxyline.provider_fileinfo')
      local fname = fileinfo.get_current_file_name()
      for _,v in ipairs(gl.short_line_list) do
        if v == vim.bo.filetype then
          return ''
        end
      end
      return fname
    end,
    condition = buffer_not_empty,
    highlight = {colors.white,colors.bg,'bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = {colors.fg,colors.bg}
  }
}
