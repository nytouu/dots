local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'NvimTree','vista','dbui','packager','toggleterm'}

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

local icons = {
	error  = '  ',
	warn   = '  ',
	info   = '  ',
	hint   = '  ',
	git    = '  ',
	gitadd = '  ',
	gitdel = '  ',
	gitmod = ' 柳'
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

local checkwidth = function()
	local squeeze_width  = vim.fn.winwidth(0) / 2
	if squeeze_width > 40 then
		return true
	end
	return false
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
			return '▊   '
		end,
		highlight = {colors.red,colors.bg,'bold'}
	}
}

gls.left[2] =
{
    FileType = {
        provider = function()
            if not buffer_not_empty() then return '' end
            return ' ' .. vim.bo.filetype .. ' '
        end,
        condition = buffer_not_empty,
        highlight = {colors.cyan, colors.bg},
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
		separator = ' ',
		condition = buffer_not_empty,
		separator_highlight = {'NONE',colors.bg},
		highlight = {colors.green,colors.bg,'bold'}
	}
}

gls.left[5] = {
	LineNr = {
		provider = function()
		local total_line = vim.fn.line('$')
			return total_line
		end,
		separator = ' ',
		separator_highlight = {'NONE',colors.bg},
		condition = buffer_not_empty,
		highlight = {colors.fg,colors.bg}
	}
}

gls.left[6] = {
	GitIcon = {
		provider = function() return icons.git end,
		condition = require('galaxyline.condition').check_git_workspace,
		highlight = {colors.violet,colors.bg,'bold'}
	}
}

gls.left[7] = {
	GitBranch = {
		provider = 'GitBranch',
		separator = ' ',
		separator_highlight = {'NONE',colors.bg},
		condition = require('galaxyline.condition').check_git_workspace,
		highlight = {colors.violet,colors.bg,'bold'}
	}
}

gls.left[8] = {
	DiffAdd = {
		provider = 'DiffAdd',
		icon = icons.gitadd,
		highlight = {colors.green,colors.bg}
	}
}

gls.left[9] = {
	DiffModified = {
		provider = 'DiffModified',
		icon = icons.gitmod,
		highlight = {colors.orange,colors.bg}
	}
}
gls.left[10] = {
	DiffRemove = {
		provider = 'DiffRemove',
		icon = icons.gitdel,
		highlight = {colors.red,colors.bg}
	}
}

gls.right[1] = {
	DiagnosticError = {
		provider = 'DiagnosticError',
		condition = checkwidth,
		icon = icons.error,
		highlight = {colors.red,colors.bg}
	}
}

gls.right[2] = {
	DiagnosticWarn = {
		provider = 'DiagnosticWarn',
		condition = checkwidth,
		icon = icons.warn,
		highlight = {colors.yellow,colors.bg}
	}
}

gls.right[3] = {
	DiagnosticHint = {
		provider = 'DiagnosticHint',
		condition = checkwidth,
		icon = icons.hint,
		highlight = {colors.cyan,colors.bg}
	}
}

gls.right[4] = {
	DiagnosticInfo = {
		provider = 'DiagnosticInfo',
		condition = checkwidth,
		icon = icons.info,
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
	LineInfo = {
		provider = 'LineColumn',
		condition = checkwidth,
		separator = ' ',
		separator_highlight = {'NONE',colors.bg},
		highlight = {colors.fg,colors.bg}
	}
}

gls.right[7] = {
	PerCent = {
		provider = 'LinePercent',
		conditon = checkwidth,
		separator = ' ',
		separator_highlight = {'NONE',colors.bg},
		highlight = {colors.fg,colors.bg,'bold'}
	}
}

gls.right[8] = {
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
		condition = buffer_not_empty,
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
		highlight = {colors.white,colors.bg,'bold'}
	}
}

gls.short_line_right[1] = {
	BufferIcon = {
		provider= 'BufferIcon',
		highlight = {colors.fg,colors.bg}
	}
}
