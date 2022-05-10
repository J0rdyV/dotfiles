config.load_autoconfig()

c.tabs.background = True
c.search.incremental = True
c.downloads.position = 'bottom'
c.editor.command = ['st', '-e', 'nvim', '{}']
# c.spellcheck.languages = ['en-US']

#c.url.searchengines['maps'] = 'https://www.google.com/maps?q=%s'

c.aliases['ytdl'] = """spawn -v -m zsh -c 'cd ~/ && yt {url}'"""

config.source('gruvbox.py')
