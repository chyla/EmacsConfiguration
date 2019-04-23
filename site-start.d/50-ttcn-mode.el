; TTCN-3 Support
; https://github.com/dholm/ttcn-el

(message "Loading TTCN-3 support...")

(add-to-list 'load-path "~/.emacs.d/extensions/ttcn-el")
(require 'ttcn3)

(autoload 'ttcn-3-mode "ttcn-3-mode" "TTCN3 editing mode." t)
(setq auto-mode-alist (cons '("\\.ttcn3?" . ttcn-3-mode) auto-mode-alist))

(message "Loading TTCN-3 support... Done.")

