# Emacs Configuration

My configuration for Emacs, may not be useful for you.


## Getting Started

Clone the repository into the `~/.emacs.d/` directory and run the Emacs.
When you clone the repository or pull new changes please recompile the elisp
files. You can execute the `recompile-elisp` command.


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

Current configuration will try to detect markdown processor, but in some cases you will have to point markdown-command to the preferred Markdown executable on your system, eg:

```
(setq markdown-command "pandoc")
```


### Custom configuration

Custom user configuration could be stored in the `~/.emacs.d/user-settings.d/` directory.

Example `150-example-configuration.el` file:

```
; configuration executed on start

; disable line numbers to increase performance
(global-linum-mode -1)

; disable highlight current line to increase performance
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


## Frequently asked questions

Q: (Swipper) How do I enter an input that matches one of the candidates instead
   of this candidate? Example: create a file `bar` when a file
   `barricade` exists in the current directory.

A: Press <kbd>C-M-j</kbd>. Alternatively, you can make the prompt line selectable with `(setq ivy-use-selectable-prompt t)`.
