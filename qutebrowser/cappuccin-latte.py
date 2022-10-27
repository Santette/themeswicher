import sys
sys.path.append('/home/santette/themeswicher/qutebrowser')
import catpuccin

# load your autoconfig, use this if the rest of your config is empty!
config.load_autoconfig()

# set the flavour you'd like to use
# valid options are 'mocha', 'macchiato', 'frappe', and 'latte'
catpuccin.setup(c, 'latte')

config.bind(',,v', 'config-source')
