(message "Setting global shortcuts...")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Override existing shortcuts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-x o") 'ace-window)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; Custom shortcuts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c = f f") 'find-file-in-project)
(global-set-key (kbd "C-c = f a") 'find-file-in-project-at-point)
(global-set-key (kbd "C-c = c") 'multi-compile-run)
(global-set-key (kbd "C-c = v") 'magit-status)
(global-set-key (kbd "C-c = e") 'list-flycheck-errors)
(global-set-key (kbd "C-c = h") 'highlight-symbol)
(global-set-key (kbd "C-c = l") 'goto-last-change)

(message "Setting global shortcuts... Done.")
