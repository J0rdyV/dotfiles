config.load_autoconfig()

c.tabs.background = True
c.search.incremental = True
c.downloads.position = 'bottom'
c.editor.command = ['st', '-e', 'nvim', '{}']
c.tabs.mousewheel_switching = False

c.fonts.default_family = 'Cascadia Code PL SemiLight'
c.fonts.default_size = '12px'

c.tabs.padding = {"bottom": 2, "left": 5, "right": 5, "top": 2}
c.statusbar.padding = {"bottom": 3, "left": 0, "right": 0, "top": 3}

# c.spellcheck.languages = ['en-US']

#c.url.searchengines['maps'] = 'https://www.google.com/maps?q=%s'

c.aliases['ytdl'] = """spawn -v -m zsh -c 'cd ~/ && yt {url}'"""

config.source('gruvbox.py')
