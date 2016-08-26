# sample ipython_config.py
c = get_config()

#c.TerminalIPythonApp.display_banner = True
#c.InteractiveShellApp.log_level = 20
#c.InteractiveShellApp.extensions = [
#            'myextension'
#]
#c.InteractiveShellApp.exec_lines = [
#        'import numpy',
#        'import scipy'
#]
#c.InteractiveShellApp.exec_files = [
#        'mycode.py',
#        'fancy.ipy'
#]
c.InteractiveShell.autoindent = True
c.InteractiveShell.colors = 'Linux' # LightBG, Neutral (default), NoColor, Linux
#c.InteractiveShell.confirm_exit = False
#c.InteractiveShell.editor = 'vim'
#c.InteractiveShell.xmode = 'Context'

#c.PrefilterManager.multi_line_specials = True

#c.AliasManager.user_aliases = [
#         ('la', 'ls -al')
#         ]
