;; sagnik3's emacs config for competitive programming and windows


(setq inhibit-startup-screen t)

(menu-bar-mode 0)
(tool-bar-mode 0)

;; using iosevka as default font , font size 12
(set-frame-font "Iosevka-10")

;;setup line numbers in emacs
(global-display-line-numbers-mode)

;;bracket autocomplete, electric pair mode
(electric-pair-mode 1)


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(markdown-preview-mode rainbow-delimiters writeroom-mode markdown-mode monokai-theme spacemacs-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'monokai t)

;; adding rainbow-delimtiers mode
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
