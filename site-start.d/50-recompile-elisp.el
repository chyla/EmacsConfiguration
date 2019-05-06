(message "Loading recompilation settings...")

(defun recompile-elisp ()
  "Recompile the *.el files in the ~/.emacs.d/"
  (interactive)
  (byte-recompile-directory (expand-file-name "~/.emacs.d") 0)
  )

(message "Loading recompilation settings... Done.")
