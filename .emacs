

;; sagnik3's emacs config
;; mainly for haskell ,coq and other things for research
;; Made on Apr 24, 2022
;; start emacs using emacs -nw <filename>


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq inhibit-startup-screen t)

(menu-bar-mode 0)
(tool-bar-mode 0)

;; using Iosevka font for it , font size 12

(set-default-font "Iosevka-12")

;; default theme --> some dark theme to not blind oneself
(load-theme 'tango-dark)
;;fallback theme when melpa not present in system or some error occured ;
;; else using the doom theme package 


;; set-up line numbers in emacs
(global-display-line-numbers-mode)


;; make backup files into seperate file
(setq backup-directory-alist '(("." . "~/.backup")))

;; enable clipboard to copy-paste stuff
;; Cut text: C-w
;; COpy the text : M-w
;; Paste the text:C-y

(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (doom-themes dracula-theme writeroom-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Doom themes loading : https://github.com/doomemacs/themes

(load-theme 'doom-material t)
