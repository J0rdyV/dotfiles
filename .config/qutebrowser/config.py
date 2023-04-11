config.load_autoconfig()

c.tabs.background = True
c.search.incremental = True
c.downloads.position = 'bottom'
c.editor.command = ['st', '-e', 'nvim', '{}']
c.tabs.mousewheel_switching = False
#c.tabs.show = 'switching'

c.fonts.default_family = 'Cascadia Code'
c.fonts.default_size = '18px'

# c.colors.webpage.darkmode.enabled = True
# c.colors.webpage.darkmode.policy.page = 'always'
# c.colors.webpage.preferred_color_scheme = 'dark'

c.tabs.padding = {"bottom": 2, "left": 5, "right": 5, "top": 2}
c.statusbar.padding = {"bottom": 3, "left": 0, "right": 0, "top": 3}

# c.spellcheck.languages = ['en-US']

c.aliases['ytdl'] = """spawn -v -m zsh -c 'cd ~/ && yt {url}'"""

config.source('gruvbox.py')
