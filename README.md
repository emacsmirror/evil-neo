# Evil Neo Mode

This packages allows you to use the [Neo keyboard layout](https://www.neo-layout.org) with
[evil-mode](https://github.com/emacs-evil/evil) by remapping the hjkl movements and related keys to
Neo's snrt keys. Most keybindings are simply swapped (hjkl <-> snrt), but some liberties were taken
when it made sense. A complete overview of the keybindings is shown below.

Evil Neo mode tries to preserve Evil's distinction between motion, normal, and visual states, only
mapping keys in their original modes when possible. The mappings are meant to be exhaustive, taking
into account all keybindings defined in `evil-motion-state-map` and `evil-normal-state-map` at the
time of creating this package. Instead of modifying Evil's keys directly, a minor mode with its own
keymap is used, allowing you to easily turn it on/off in a single buffer or globally.

# Usage

Install the `evil-neo` package and call `evil-neo-mode` to enable it locally, or
`global-evil-neo-mode` to enable it globally.

To make the setting permanent, add this to your Emacs configuration file (init.el):
```elisp
(require 'evil-neo)
(global-evil-neo-mode)
```

Or with use-package:
```elisp
(use-package evil-neo
  :config
  (global-evil-neo-mode))
```

# Keybindings

## In motion state

| Keybinding           | Replaces             | Description                                                   | Comment                                                         |
| -------------------- | -------------------- | ------------------------------------------------------------- | --------------------------------------------------------------- |
| s, n, r, t           | h, j, k, l           | movement                                                      | vim's classic movement keys                                     |
| gn, gr               | gj, gk               | visual line movement                                          |                                                                 |
| j, J                 | n, N                 | next/previous search result                                   | [j]ump to next/previous result                                  |
| l, L                 | t, T                 | forward/backward till char                                    | move to the [l]eft of char                                      |
| S, T                 | H, L                 | screen top/bottom                                             |                                                                 |
| R                    | K                    | lookup keyword                                                | [R]ead the manual about keyword                                 |
| C-w {s, n, r, t}     | C-w {h, j, k, l}     | go to the left, below, above, right window                    | vim movement keys                                               |
| C-w C-{s, n, r, t}   | C-w C-{h, j, k, l}   |                                                               | same as above, using Ctrl for both keys                         |
| C-w {h, H}           | C-w {s, S}           | split window horizontally                                     | this one is even more consistent than vim's original keybinding |
| C-w C-h              | C-w C-s              |                                                               | same as above, using Ctrl for both keys                         |
| C-w a                | C-w n                | open new buffer in horizontal split                           | [a]dd a new window (instead of using C-w C-j)                   |
| C-w C-a              | C-w C-n              |                                                               | same as above, using Ctrl for both keys                         |
| C-w {d, D}           | C-w {r, R}           | rotate window downwards/upwards                               | rotate [d]ownwards or reverse                                   |
| C-w C-{d, D}         | C-w C-{r, R}         |                                                               | same as above, using Ctrl for both keys                         |
| C-w l                | C-w t                | go to the window top left                                     | top [l]eft (bottom right is left as is: C-w C-b)                |
| C-w C-l              | C-w C-t              |                                                               | same as above, using Ctrl for both keys                         |
| C-w {S, N, R, T}     | C-w {H, J, K, L}     | move window to the far left, very bottom, very top, far right | vim movement keys                                               |
| C-w C-S-{s, n, r, t} | C-w C-S-{h, j, k, l} |                                                               | same as above, using Ctrl for both keys                         |

## In normal state

| Keybinding | Replaces | Description                      | Comment          |
| ---------- | -------- | -------------------------------- | ---------------- |
| h          | s        | delete character and insert text |                  |
| H          | S        | delete line and insert text      |                  |
| k          | r        | replace character                | [k]ill character |
| K          | R        | enter replace mode               |                  |
| J          | N        | join next line to current one    | [J]oin next line |
