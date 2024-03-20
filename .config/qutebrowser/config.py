config.load_autoconfig()

c.tabs.background = True
c.search.incremental = True
c.downloads.position = 'bottom'
c.editor.command = ['st', '-e', 'nvim', '{}']
c.tabs.mousewheel_switching = False
#c.tabs.show = 'switching'

c.fonts.default_family = 'Cascadia Code'
#c.fonts.default_size = '18px'
c.fonts.default_size = '16px'

# c.colors.webpage.darkmode.enabled = True
# c.colors.webpage.darkmode.policy.page = 'always'
# c.colors.webpage.preferred_color_scheme = 'dark'

c.tabs.padding = {"bottom": 2, "left": 5, "right": 5, "top": 2}
c.statusbar.padding = {"bottom": 3, "left": 0, "right": 0, "top": 3}

# c.spellcheck.languages = ['en-US']

c.aliases['ytdl'] = """spawn -v -m zsh -c 'cd ~/ && yt {url}'"""

config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/118.1.5615.213 Safari/{webkit_version}',
           'slack.com')
config.set('content.headers.user_agent',
           'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/118.1.5615.213 Safari/{webkit_version}',
           'app.slack.com')

config.source('gruvbox.py')
