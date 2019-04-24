(message "Loading flycheck settings...")

(global-flycheck-mode 1)

; when installed from Debian/Ubuntu packages
(setq flycheck-rst-executable "rst2pseudoxml")

; disable checkers
(setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-gcc))

(message "Loading flycheck settings... Done.")
