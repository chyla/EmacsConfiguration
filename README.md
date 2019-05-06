# Emacs Configuration

My configuration for Emacs, may not be useful for you.


## Getting Started

Clone the repository into the `~/.emacs.d/` directory and run the Emacs.


### Recomended software

#### Flycheck

Install your favorite checkers for Flycheck, eg:

* cppcheck - a static analysis tool for C/C++ code (http://cppcheck.sourceforge.net/)
* pylint - code analysis for Python (https://www.pylint.org/)
* flake8 - Your Tool For Style Guide Enforcement (http://flake8.pycqa.org/en/latest/)
* docutils - Documentation Utilities - Written in Python, for General- and Special-Purpose Use (http://docutils.sourceforge.net/)

You can verify installed checkers with `flycheck-verify-checker` command.

#### Markdown Mode

Install your favorite Markdown processor, eg:

* Markdown.pl
* MultiMarkdown
* Pandoc

Current configuration will try to detect markdown processor, but in some cases you will have to pint markdown-command to the preferred Markdown executable on your system, eg:

(setq markdown-command "pandoc")


### Custom configuration

Custom user configuration could be stored in the `~/.emacs.d/user-settings.d/` directory.

Example `150-example-configuration.el` file:

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
