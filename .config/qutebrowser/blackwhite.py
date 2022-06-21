# 2 tone color scheme made by JordyV.

black = "#000000"
white = "#d7d7d7"
red = "#cc241d"

black = "#000000"
black = '#000000'
black = '#000000'

black = black
black = "#000000"
black = "#000000"
black = "#000000"
black = "#000000"

white = "#d7d7d7"
white = "#d7d7d7"
white = "#d7d7d7"
white = "#d7d7d7"
white = "#d7d7d7"

bright_red = "#d7d7d7"
bright_green = "#d7d7d7"
bright_yellow = "#d7d7d7"
bright_blue = "#d7d7d7"
bright_purple = "#d7d7d7"
bright_aqua = "#d7d7d7"
bright_gray = "#d7d7d7"
bright_orange = "#d7d7d7"

dark_red = "#d7d7d7"
dark_green = "#d7d7d7"
dark_yellow = "#d7d7d7"
dark_blue = "#d7d7d7"
dark_purple = "#d7d7d7"
dark_aqua = "#d7d7d7"
dark_gray = "#d7d7d7"
dark_orange = "#d7d7d7"

### Completion

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = white

# Background color of the completion widget for odd rows.
c.colors.completion.odd.bg = black

# Background color of the completion widget for even rows.
c.colors.completion.even.bg = c.colors.completion.odd.bg

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = bright_blue

# Background color of the completion widget category headers.
c.colors.completion.category.bg = black

# Top border color of the completion widget category headers.
c.colors.completion.category.border.top = c.colors.completion.category.bg

# Bottom border color of the completion widget category headers.
c.colors.completion.category.border.bottom = c.colors.completion.category.bg

# Foreground color of the selected completion item.
c.colors.completion.item.selected.fg = black

# Background color of the selected completion item.
c.colors.completion.item.selected.bg = white

# Top border color of the selected completion item.
c.colors.completion.item.selected.border.top = black

# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = c.colors.completion.item.selected.border.top

# Foreground color of the matched text in the selected completion item.
c.colors.completion.item.selected.match.fg = red

# Foreground color of the matched text in the completion.
c.colors.completion.match.fg = c.colors.completion.item.selected.match.fg

# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = c.colors.completion.item.selected.fg

# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = c.colors.completion.category.bg

### Context menu

# Background color of disabled items in the context menu.
c.colors.contextmenu.disabled.bg = black

# Foreground color of disabled items in the context menu.
c.colors.contextmenu.disabled.fg = white

# Background color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.bg = black

# Foreground color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.fg =  white

# Background color of the context menu’s selected item. If set to null, the Qt default is used.
c.colors.contextmenu.selected.bg = black

#Foreground color of the context menu’s selected item. If set to null, the Qt default is used.
c.colors.contextmenu.selected.fg = c.colors.contextmenu.menu.fg

### Downloads

# Background color for the download bar.
c.colors.downloads.bar.bg = black

# Color gradient start for download text.
c.colors.downloads.start.fg = black

# Color gradient start for download backgrounds.
c.colors.downloads.start.bg = bright_blue

# Color gradient end for download text.
c.colors.downloads.stop.fg = c.colors.downloads.start.fg

# Color gradient stop for download backgrounds.
c.colors.downloads.stop.bg = bright_aqua

# Foreground color for downloads with errors.
c.colors.downloads.error.fg = bright_red

### Hints

# Font color for hints.
c.colors.hints.fg = black

# Background color for hints.
c.colors.hints.bg = 'rgba(250, 191, 47, 200)'  # bright_yellow

# Font color for the matched part of hints.
c.colors.hints.match.fg = black

### Keyhint widget

# Text color for the keyhint widget.
c.colors.keyhint.fg = white

# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = white

# Background color of the keyhint widget.
c.colors.keyhint.bg = black

### Messages

# Foreground color of an error message.
c.colors.messages.error.fg = black

# Background color of an error message.
c.colors.messages.error.bg = bright_red

# Border color of an error message.
c.colors.messages.error.border = c.colors.messages.error.bg

# Foreground color of a warning message.
c.colors.messages.warning.fg = black

# Background color of a warning message.
c.colors.messages.warning.bg = bright_purple

# Border color of a warning message.
c.colors.messages.warning.border = c.colors.messages.warning.bg

# Foreground color of an info message.
c.colors.messages.info.fg = white

# Background color of an info message.
c.colors.messages.info.bg = black

# Border color of an info message.
c.colors.messages.info.border = c.colors.messages.info.bg

### Prompts

# Foreground color for prompts.
c.colors.prompts.fg = white

# Border used around UI elements in prompts.
c.colors.prompts.border = f'1px solid {black}'

# Background color for prompts.
c.colors.prompts.bg = black

# Background color for the selected item in filename prompts.
c.colors.prompts.selected.bg = black

### Statusbar

# Foreground color of the statusbar.
c.colors.statusbar.normal.fg = white

# Background color of the statusbar.
c.colors.statusbar.normal.bg = black

# Foreground color of the statusbar in insert mode.
c.colors.statusbar.insert.fg = black

# Background color of the statusbar in insert mode.
c.colors.statusbar.insert.bg = dark_aqua

# Foreground color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.fg = black

# Background color of the statusbar in passthrough mode.
c.colors.statusbar.passthrough.bg = dark_blue

# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = white

# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = red

# Foreground color of the statusbar in command mode.
c.colors.statusbar.command.fg = white

# Background color of the statusbar in command mode.
c.colors.statusbar.command.bg = black

# Foreground color of the statusbar in private browsing + command mode.
c.colors.statusbar.command.private.fg = c.colors.statusbar.private.fg

# Background color of the statusbar in private browsing + command mode.
# c.colors.statusbar.command.private.bg = c.colors.statusbar.command.bg
c.colors.statusbar.command.private.bg = c.colors.statusbar.command.bg

# Foreground color of the statusbar in caret mode.
c.colors.statusbar.caret.fg = black

# Background color of the statusbar in caret mode.
c.colors.statusbar.caret.bg = dark_purple

# Foreground color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.fg = c.colors.statusbar.caret.fg

# Background color of the statusbar in caret mode with a selection.
c.colors.statusbar.caret.selection.bg = bright_purple

# Background color of the progress bar.
c.colors.statusbar.progress.bg = bright_blue

# Default foreground color of the URL in the statusbar.
c.colors.statusbar.url.fg = white

# Foreground color of the URL in the statusbar on error.
c.colors.statusbar.url.error.fg = dark_red

# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = bright_orange

# Foreground color of the URL in the statusbar on successful load
# (http).
c.colors.statusbar.url.success.http.fg = bright_red

# Foreground color of the URL in the statusbar on successful load
# (https).
c.colors.statusbar.url.success.https.fg = white

# Foreground color of the URL in the statusbar when there's a warning.
c.colors.statusbar.url.warn.fg = bright_purple

### tabs

# Background color of the tab bar.
c.colors.tabs.bar.bg = black

# Color gradient start for the tab indicator.
c.colors.tabs.indicator.start = bright_blue

# Color gradient end for the tab indicator.
c.colors.tabs.indicator.stop = bright_aqua

# Color for the tab indicator on errors.
c.colors.tabs.indicator.error = bright_red

# Foreground color of unselected odd tabs.
c.colors.tabs.odd.fg = white

# Background color of unselected odd tabs.
c.colors.tabs.odd.bg = black

# Foreground color of unselected even tabs.
c.colors.tabs.even.fg = c.colors.tabs.odd.fg

# Background color of unselected even tabs.
c.colors.tabs.even.bg = black

# Foreground color of selected odd tabs.
c.colors.tabs.selected.odd.fg = black
# white

# Background color of selected odd tabs.
c.colors.tabs.selected.odd.bg = white

# Foreground color of selected even tabs.
c.colors.tabs.selected.even.fg = black

# Background color of selected even tabs.
c.colors.tabs.selected.even.bg = white

# Background color of pinned unselected even tabs.
c.colors.tabs.pinned.even.bg = bright_green

# Foreground color of pinned unselected even tabs.
c.colors.tabs.pinned.even.fg = black

# Background color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.bg = bright_green

# Foreground color of pinned unselected odd tabs.
c.colors.tabs.pinned.odd.fg = c.colors.tabs.pinned.even.fg

# Background color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.bg = black

# Foreground color of pinned selected even tabs.
c.colors.tabs.pinned.selected.even.fg = c.colors.tabs.selected.odd.fg

# Background color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.bg = c.colors.tabs.pinned.selected.even.bg

# Foreground color of pinned selected odd tabs.
c.colors.tabs.pinned.selected.odd.fg = c.colors.tabs.selected.odd.fg

# Background color for webpages if unset (or empty to use the theme's
# color).
# c.colors.webpage.bg = black
