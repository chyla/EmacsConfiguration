(message "Loading ivy settings...")

(ivy-mode 1)

; add recent files and bookmarks to `ivy-switch-buffer'
(setq ivy-use-virtual-buffers t)

;While you =swiper= buffer-1, you can switch out of the minibuffer into
;buffer-2 and call =swiper= again. Exiting the second minibuffer will
;restore the first minibuffer.
; (setq enable-recursive-minibuffers t)

(message "Loading ivy settings... Done.")
