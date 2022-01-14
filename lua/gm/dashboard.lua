vim.g.dashboard_custom_header = {
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
 }

vim.g.dashboard_custom_footer = {}
vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_section = {
  a = {description = {'  Find File          SPC d f'}, command = 'DashboardFindFile<cr>'},
  b = {description = {'  Recent Files       SPC d r'}, command = 'DashboardFindHistory<cr>'},
  d = {description = {'  Find Word          SPC d w'}, command = 'DashboardFindWord<cr>'},
  n = {description = {'🗎  New File           SPC d n'}, command = 'DashboardNewFile<cr>'},
}
vim.g.dashboard_custom_shortcut = {
    a = 'SPC d f',
    b = 'SPC d r',
    d = 'SPC d w',
    n = 'SPC d n',
 }
vim.g.indentLine_fileTypeExclude = {'dashboard'}