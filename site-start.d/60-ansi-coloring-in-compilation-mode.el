; ANSI Coloring in Compilation Mode
; https://stackoverflow.com/questions/13397737/ansi-coloring-in-compilation-mode

(message "Setting ANSI coloring in compilation mode...")

(ignore-errors
  (require 'ansi-color)
  (defun my-colorize-compilation-buffer ()
    (when (eq major-mode 'compilation-mode)
      (ansi-color-apply-on-region compilation-filter-start (point-max))))
  (add-hook 'compilation-filter-hook 'my-colorize-compilation-buffer))

(message "Setting ANSI coloring in compilation mode... Done.")
