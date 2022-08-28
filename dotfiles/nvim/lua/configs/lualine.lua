CmpSep = {}
SecSep = {}

if vim.loop.os_uname().sysname == "Darwin" then
    CmpSep = { left = '', right = '' }
    SecSep = { left = '', right = '' }
else
    CmpSep = { left = '>', right = '<' }
    SecSep = { left = '', right = '' }
end

require('lualine').setup({
    options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = CmpSep,
        section_separators = SecSep,

        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'filesize' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
})
