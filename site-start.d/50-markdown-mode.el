(message "Loading markdown-mode settings...")

(if (executable-find "markdown")
    (progn
      (message "markdown command found")
      (setq markdown-command "markdown")
      )

  (progn
    (message "Not found markdown command")
    (if (executable-find "pandoc")
        (progn
          (message "pandoc command found")
          (setq markdown-command "pandoc")
          )
      (message "Not found pandoc command")
      )
    )
  )

(if (boundp 'markdown-command)
    (message "Current markdown command: %s" markdown-command)
  (message "WARN: Markdown command not detected.")
  )

(message "Loading markdown-mode settings... Done.")
