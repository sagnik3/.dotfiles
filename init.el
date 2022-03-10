;; .emacs.d/init.el
;; Sagnik's emacs config

;; basic editing and theme setup


(setq inhibit-startup-message t)

(scroll-bar-mode -1) ;disable visible scrollbar
(tool-bar-mode -1) ;disable the toolbar
(tooltip-mode -1) ; disable tooltips
(set-fringe-mode 10) ;give some breathing room

(menu-bar-mode -1) ;disable the menu bar

;; setup the visible bell
(setq visible-bell t)

;;adding line numbers alwas
(global-display-line-numbers-mode)


;;adding font and height
(set-face-attribute 'default nil :font "JetBrains Mono " :height 160)

;;loading a temporary theme
;; (load-theme 'tango-dark)
;; using doom-themes ; refer below


;;making escape quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)


;;adding MELPA support
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

;;init packages
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;;Initialize use-package on non-Linux platform
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;;;;;;;;;;;;;;;;;;;;;;
;;; dont edit this part !!!!1
;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (visual-fill-column org-bullets rainbow-delimiters doom-themes markdown-mode rust-mode doom-modeline ivy use-package proof-general  magit  blacken better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; completion engine for emacs
(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)	
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

;;adding custom theme
(use-package doom-themes
  :init (load-theme 'doom-dark+ t))



;;brackets pair mode
(electric-pair-mode 1)
(setq electric-pair-preserve-balance nil)

;;rainbow brackets 
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))


;;doom-modeline for emacs
;; also adding all the icons with it
(use-package all-the-icons)
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))



;;; Python Developement

;;virtualenv setup

(use-package pyvenv
  :config
  (pyvenv-mode 1))



;; Rust Developement

(require 'rust-mode)

;; indentation for Rust mode
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

;; code formatting
(setq rust-format-on-save t)

;;prettifying
(add-hook 'rust-mode-hook
          (lambda () (prettify-symbols-mode)))


;;markdown for writing better docs

;;nicer heading bullets

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("â" "â" "â" "â" "â" "â" "â")))


;; org-mode visual-fill setup


(defun efs/org-mode-visual-fill ()
  (setq visual-fill-column-width 100
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

(use-package visual-fill-column
  :hook (org-mode . efs/org-mode-visual-fill))

