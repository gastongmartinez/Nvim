local pconf = vim.fn.stdpath("config")
local db = require('dashboard')

db.custom_header = {
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
 }

db.custom_footer = {}
db.custom_center = {
  {icon = '  ', desc = '                      '},
  {icon = ' ', desc = 'Find File             ', shortcut = 'SPC t f', action = 'Telescope find_files'},
  {icon = ' ', desc = 'Recent Files          ', shortcut = 'SPC t r', action = 'Telescope oldfiles'},
  {icon = ' ', desc = 'File Explorer         ', shortcut = 'SPC t e', action = 'Telescope file_browser'},
  {icon = '🗎 ', desc = 'New File              ', shortcut = 'SPC d n', action = 'DashboardNewFile'},
  {icon = ' ', desc = 'Config                ', shortcut = 'SPC t c', action = 'Telescope file_browser path=' .. pconf},
}

vim.g.indentLine_fileTypeExclude = {'dashboard'}
