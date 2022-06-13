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
  {icon = ' ', desc = 'Find File             ', shortcut = 'SPC d f', action = 'DashboardFindFile'},
  {icon = ' ', desc = 'Recent Files          ', shortcut = 'SPC d r', action = 'DashboardFindHistory'},
  {icon = ' ', desc = 'Find Word             ', shortcut = 'SPC d w', action = 'DashboardFindWord'},
  {icon = '🗎 ', desc = 'New File              ', shortcut = 'SPC d n', action = 'DashboardNewFile'},
}

vim.g.indentLine_fileTypeExclude = {'dashboard'}
