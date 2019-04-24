# Emacs Configuration

My configuration for Emacs, may not be useful for you.


## Getting Started

Clone the repository into the ~/.emacs.d/ directory and run the Emacs.


### Overview

Custom user configuration could be stored in the ~/.emacs.d/user-settings.d/ directory.

Example 150-example-configuration.el file:

```
; configuration executed on start

; line numbers
(global-linum-mode -1)

; highlight current line
(global-hl-line-mode -1)


; configuration loaded when executed by user
(defun example-configuration () (interactive)
       ; find-file-in-project
       (setq ffip-project-root "/path/to/directory/")

       ; multi-compile
       (setq multi-compile-alist `(
                                   ("\\.*" . (("compilation-name" . ,(concat "compilation command"))
                                              ("other-compilation-name" . ,(concat "second compilation command"))
                                              ))
                                   ))
)
```
