; Robot Framework Support
; https://github.com/sakari/robot-mode

(message "Loading robot-mode settings...")

(load-file "~/.emacs.d/extensions/robot-mode/robot-mode.el")
(add-to-list 'auto-mode-alist '("\\.robot\\'" . robot-mode))

(define-key robot-mode-map [remap xref-find-definitions] 'robot-mode-find-kw)

(message "Loading robot-mode settings... Done.")

