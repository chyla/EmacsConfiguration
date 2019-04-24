(message "Loading yasnippet settings...")

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
        "~/.emacs.d/yasnippets"               ;; foo-mode and bar-mode snippet collection
        ))

(yas-global-mode 1)

(message "Loading yasnippet settings... Done.")
