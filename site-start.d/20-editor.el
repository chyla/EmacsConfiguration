; hide welcome screen, splash screen and startup message
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

; disable toolbar and scrollbar
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))

; Save the cursor position for every file you opened. So, next time you open
; the file, the cursor will be at the position you last opened it.
(if (version< emacs-version "25.0")
    (progn
      (require 'saveplace)
      (setq-default save-place t))
  (save-place-mode 1))

; change buffers list to ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

; blink cursor
(blink-cursor-mode 1) ;; or pass in -1 to turn it off

; autorevert buffer
(global-auto-revert-mode 1)

; truncate lines
(setq-default truncate-lines t)

; force use of spaces
(setq-default indent-tabs-mode nil)

; remove trailing whitespace from the entire buffer
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; turn on highlight matching brackets when cursor is on one
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)

; complete brackets automatically
(electric-pair-mode 1)
; but not in the minibuffer
(defun pvj/inhibit-electric-pair-mode (char) (minibufferp))
(setq electric-pair-inhibit-predicate #'pvj/inhibit-electric-pair-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; SETTINGS IMPACTING PERFORMANCE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; fix showing question marks with line-mode enabled
; https://emacs.stackexchange.com/questions/3824/what-piece-of-code-in-emacs-makes-line-number-mode-print-as-line-number-i
(setq line-number-display-limit-width 2000000) ; invisible impact on performance

; line numbers
(global-linum-mode t) ; performance issue with long lines
(setq linum-format "%5i   \u2502 ")

; highlight current line
(global-hl-line-mode 1) ; performance issue with long lines
