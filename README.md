# Evil-Neo Mode


Evil-Neo allows you to use Evil's keybindings with the German
[Neo keyboard layout](https://www.neo-layout.org) by remapping the hjkl keys to Neo's snrt keys.
Most keybindings are simply swapped with their counterparts, but a few liberties where taken when
it made sense. The keys are mapped in their own minor mode, enabling the user to turn it on and off
as needed.

Evil-Neo aims to preserve Evil's distinction between motion, normal, and visual states, mapping keys
only in the modes they were originally defined in, where possible. The keybindings are exhaustive,
with all keybindings defined in `evil-motion-state-map`, `evil-normal-state-map`, and
`evil-visual-state-map` taken into account at the time of authoring this package (using Evil 1.15.0).

A complete overview of the mapped keys is provided in the tables below along with some useful hints.


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

| Keybinding                                             | Replaces                                               | Description                         | Comment                                       |
| ------------------------------------------------------ | ------------------------------------------------------ | ----------------------------------- | --------------------------------------------- |
| <kbd>s</kbd>, <kbd>n</kbd>, <kbd>r</kbd>, <kbd>t</kbd> | <kbd>h</kbd>, <kbd>j</kbd>, <kbd>k</kbd>, <kbd>l</kbd> | movement                            | vim's classic movement keys                   |
| <kbd>gn</kbd>, <kbd>gr</kbd>                           | <kbd>gj</kbd>, <kbd>gk</kbd>                           | visual line movement                |                                               |
| <kbd>j</kbd>, <kbd>J</kbd>                             | <kbd>n</kbd>, <kbd>N</kbd>                             | next/previous search result         | [j]ump to next/previous result                |
| <kbd>l</kbd>, <kbd>L</kbd>                             | <kbd>t</kbd>, <kbd>T</kbd>                             | forward/backward till char          | move to the [l]eft of char                    |
| <kbd>S</kbd>, <kbd>T</kbd>                             | <kbd>H</kbd>, <kbd>L</kbd>                             | screen top/bottom                   |                                               |
| <kbd>R</kbd>                                           | <kbd>K</kbd>                                           | lookup keyword                      | [R]ead the manual about keyword               |
| <kbd>C-w</kbd> {<kbd>s</kbd>, <kbd>n</kbd>, <kbd>r</kbd>, <kbd>t</kbd>} | <kbd>C-w</kbd> {<kbd>h</kbd>, <kbd>j</kbd>, <kbd>k</kbd>, <kbd>l</kbd>} | go to the left, below, above, right window | vim movement keys |
| <kbd>C-w C-</kbd>{<kbd>s</kbd>, <kbd>n</kbd>, <kbd>r</kbd>, <kbd>t</kbd>} | <kbd>C-w</kbd> <kbd>C-</kbd>{<kbd>h</kbd>, <kbd>j</kbd>, <kbd>k</kbd>, <kbd>l</kbd>} | | same as above, using Ctrl for both keys |
| <kbd>C-w</kbd> {<kbd>h</kbd>, <kbd>H</kbd>}            | <kbd>C-w</kbd> {<kbd>s</kbd>, <kbd>S</kbd>}            | split window horizontally           | this one is even more consistent than vim's original keybinding |
| <kbd>C-w C-h</kbd>                                     | <kbd>C-w C-s</kbd>                                     |                                     | same as above, using Ctrl for both keys       |
| <kbd>C-w a</kbd>                                       | <kbd>C-w n</kbd>                                       | open new buffer in horizontal split | [a]dd a new window (instead of using <kbd>C-w C-j</kbd>) |
| <kbd>C-w C-a</kbd>                                     | <kbd>C-w C-n</kbd>                                     |                                     | same as above, using Ctrl for both keys       |
| <kbd>C-w</kbd> {<kbd>d</kbd>, <kbd>D</kbd>}            | <kbd>C-w</kbd> {<kbd>r</kbd>, <kbd>R</kbd>}            | rotate window downwards/upwards     | rotate [d]ownwards or reverse                 |
| <kbd>C-w C-</kbd>{<kbd>d</kbd>, <kbd>D</kbd>}          | <kbd>C-w C-</kbd>{<kbd>r</kbd>, <kbd>R</kbd>}          |                                     | same as above, using Ctrl for both keys       |
| <kbd>C-w l</kbd>                                       | <kbd>C-w t</kbd>                                       | go to the window top left           | top [l]eft (bottom right is left as is: <kbd>C-w b</kbd>) |
| <kbd>C-w C-l</kbd>                                     | <kbd>C-w C-t</kbd>                                     |                                     | same as above, using Ctrl for both keys       |
| <kbd>C-w</kbd> {<kbd>S</kbd>, <kbd>N</kbd>, <kbd>R</kbd>, <kbd>T</kbd>} | <kbd>C-w</kbd> {<kbd>H</kbd>, <kbd>J</kbd>, <kbd>K</kbd>, <kbd>L</kbd>} | move window to the far left, very bottom, very top, far right | vim movement keys |
| <kbd>C-w C-S-</kbd>{<kbd>s</kbd>, <kbd>n</kbd>, <kbd>r</kbd>, <kbd>t</kbd>} | <kbd>C-w C-S-</kbd>{<kbd>h</kbd>, <kbd>j</kbd>, <kbd>k</kbd>, <kbd>l</kbd>} | | same as above, using Ctrl for both keys |

## In normal state

| Keybinding   | Replaces     | Description                      | Comment          |
| ------------ | ------------ | -------------------------------- | ---------------- |
| <kbd>h</kbd> | <kbd>s</kbd> | delete character and insert text |                  |
| <kbd>H</kbd> | <kbd>S</kbd> | delete line and insert text      |                  |
| <kbd>k</kbd> | <kbd>r</kbd> | replace character                | [k]ill character |
| <kbd>K</kbd> | <kbd>R</kbd> | enter replace mode               |                  |
| <kbd>N</kbd> | <kbd>J</kbd> | join next line to current one    | join [N]ext line |

## In visual state

| Keybinding   | Replaces     | Description                      | Comment           |
| ------------ | ------------ | -------------------------------- | ----------------- |
| <kbd>h</kbd> | <kbd>s</kbd> | delete selection and insert text |                   |
| <kbd>H</kbd> | <kbd>S</kbd> | delete line and insert text      |                   |
| <kbd>k</kbd> | <kbd>r</kbd> | replace selection with character | [k]ill selection  |
| <kbd>R</kbd> | <kbd>K</kbd> | look up selection                | [R]ead the manual |
