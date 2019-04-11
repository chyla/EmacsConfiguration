(message "Loading MELPA settings...")

(require 'package) ; start package.el with emacs

; add MELPA to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

; initialize package.el
(package-initialize)

(message "Loading MELPA settings... Done.")
