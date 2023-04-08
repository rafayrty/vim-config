--require('lualine').setup {
--sections = { lualine_a = {
--{
--'filename',
--file_status = true, -- displays file status (readonly status, modified status)
--path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
--}
----{ 'buffers',  -- Shows shortened relative path when set to false.
----hide_filename_extension = false,   -- Hide filename extension when set to true.
----show_modified_status = true, -- Shows indicator when the buffer is modified.
----mode = 0,
----max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,

----filetype_names = {
----TelescopePrompt = 'Telescope',
----dashboard = 'Dashboard',
----packer = 'Packer',
----fzf = 'FZF',
----alpha = 'Alpha'
----}, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )
----symbols = {
----modified = ' ●',      -- Text to show when the buffer is modified
----alternate_file = '#', -- Text to show to identify the alternate file
----directory =  '',     -- Text to show when the buffer is a directory
----},
----}
--},
--lualine_b = { 'branch' },
--lualine_x = { 'encoding', 'fileformat', 'filetype' },
--lualine_y = { 'progress' },
--lualine_z = { 'location' }
--}
--}

local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'ayu_mirage',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = {
      { 'diagnostics', sources = { "nvim_diagnostic" }, symbols = { error = ' ', warn = ' ', info = ' ',
        hint = ' ' } },
      'encoding',
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'fugitive' }
}
