;; Set up Neo keybindings for Evil
(define-minor-mode evil-neo-mode
  "Minor mode for using Evil with the Neo keyboard layout."
  :lighter " evil-neo"
  :keymap (make-sparse-keymap))

(define-globalized-minor-mode global-evil-neo-mode
  evil-neo-mode (lambda () (evil-neo-mode t))
  "Global mode to let you use Evil with the Neo keyboard layout.")

(evil-define-key 'motion evil-neo-mode-map
  ; basic motions (hjkl -> snrt)
  "s" 'evil-backward-char
  "n" 'evil-next-line
  "gn" 'evil-next-visual-line
  "r" 'evil-previous-line
  "gr" 'evil-previous-visual-line
  "t" 'evil-forward-char

  ; replacements (nt -> jl)
  "j" 'evil-search-next
  "l" 'evil-find-char-to

  ; capital letters if defined in motion state (HKL -> SRT)
  "S" 'evil-window-top
  "R" 'evil-lookup
  "T" 'evil-window-bottom

  ; replacements (NT -> JL)
  "J" 'evil-search-previous
  "L" 'evil-find-char-to-backward

  ; window movements (hjkl -> snrt)
  (kbd "C-w C-n") 'evil-window-down
  (kbd "C-w C-r") 'evil-window-up
  (kbd "C-w C-s") 'evil-window-left
  (kbd "C-w C-t") 'evil-window-right

  ; window management (snrt -> hadl)
  ; a and d are used in place of j and k to make them a bit more intuitive
  (kbd "C-w C-h") 'evil-window-split			; 'horizontal' split
  (kbd "C-w C-a") 'evil-window-new			; 'add' new window
  (kbd "C-w C-d") 'evil-window-rotate-downwards
  (kbd "C-w C-l") 'evil-window-top-left

  ; capital letters window management (HJKL -> SNRT)
  (kbd "C-w S") 'evil-window-move-far-left
  (kbd "C-w N") 'evil-window-move-very-bottom
  (kbd "C-w R") 'evil-window-move-very-top
  (kbd "C-w T") 'evil-window-move-far-right

  ; replacements (SR -> HD)
  (kbd "C-w H") 'evil-window-split
  (kbd "C-w D") 'evil-window-rotate-upwards		; reverse of 'downwards'

  ; the same using the shift key (hjkl -> snrt)
  (kbd "C-w C-S-s") 'evil-window-move-far-left
  (kbd "C-w C-S-n") 'evil-window-move-very-bottom
  (kbd "C-w C-S-r") 'evil-window-move-very-top
  (kbd "C-w C-S-t") 'evil-window-move-far-right

  ; replacements (sr -> hd)
  (kbd "C-w C-S-h") 'evil-window-split
  (kbd "C-w C-S-d") 'evil-window-rotate-upwards)

(evil-define-key 'normal evil-neo-mode-map
  ; motions which have their own keybinding in normal mode,
  ; and thus need to be assigned here again (hk -> sr)
  "s" 'evil-backward-char
  "r" 'evil-previous-line
  "gr" 'evil-previous-visual-line

  ; replacements (sr -> hk)
  "h" 'evil-substitute
  "k" 'evil-replace

  ; capital letters defined in normal state (HJK -> SNR)
  "S" 'evil-window-top
  "N" 'evil-join
  "R" 'evil-lookup

  ; replacements (SNR -> HJK)
  "H" 'evil-change-whole-line
  "J" 'evil-search-previous
  "K" 'evil-enter-replace-state)
