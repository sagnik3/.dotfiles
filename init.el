;; sagnik.3 's emacs config file
;;made on Mar 3 ,2022
;; configure features by setting variables
;; enable or disbale features by calling functions

;; setting configuration varibales:- (setq inhibit-startup-message t) --> dont show the splash screen
;; list of expressions (wrapped in parentheses) that represents "call" to a function named setq

;; An expression is an unit of code that can be evaluated to produce an result. A list is an ordered collection of expression:symbols,varibales,lists. 

(setq inhibit-startup-message t)
;;disable bell in emacs
(setq visible-bell t)

;;remove old ui

(menu-bar-mode -1)
(tool-bar-mode -1)

;;add line numbers
(global-display-line-numbers-mode 1)

;;adding a custom color them
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;;load custom theme
(load-theme 'darcula t)


;;adding global hl-line mode
(global-hl-line-mode 1)


;;some c config

;;setting "gnu" style indenting for c
(setq c-default-style "linux"
      c-basic-offset 4)

;; turn on electric pair mode for bracket pair matching
(electric-pair-mode 1)

;;python
;;add indentation for 4 spaces
(setq-default indent-tabs-mode nil)
(defun indentk()
  setq c-basic-offset 4
  add-hook 'c-mode-hook' 'indentk)
