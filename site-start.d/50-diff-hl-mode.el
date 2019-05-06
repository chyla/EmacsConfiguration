(message "Loading diff-hl-mode settings...")

;; move status to the right in terminal
;; on the left we have linum-mode
(unless (display-graphic-p)
  (progn
    (diff-hl-margin-mode 1)
    (setq-default diff-hl-margin-side 'right)
    )
  )

(global-diff-hl-mode)

(message "Loading diff-hl-mode settings... Done.")
