;; .emacs.d/init.el

;; ===================================
;; MELPA Package Support
;; ===================================
;; Enables basic packaging support
(require 'package)

;; Adds the Melpa archive to the list of available repositories
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; Initializes the package infrastructure
(package-initialize)

;; If there are no archived package contents, refresh them
(when (not package-archive-contents)
  (package-refresh-contents))


;; Installs packages
;;
;; myPackages contains a list of package names
(defvar myPackages
  '(better-defaults                 ;; Set up some better Emacs defaults
    material-theme                  ;; Theme
    elpy                             ;; emacs lisp python environmetn
    flycheck                        ;;for on the fly syntax checking in python
    blacken                         ;;black foramtting on save
    magit                           ;;for git support 
    proof-general                   ;;for coq proofs
    )
  )

;; Scans the list in myPackages
;; If the package listed is not already installed, install it
(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      myPackages)


;; ===================================
;; Basic Customization
;; ===================================

(setq inhibit-startup-message t)    ;; Hide the startup message
(load-theme 'material t)            ;; Load material theme
(global-linum-mode t)               ;; Enable line numbers globally
(set-face-attribute 'default nil :font "JetbrainsMono-11")
(menu-bar-mode -1)                  ;;disable menu bar mode
(tool-bar-mode -1)                  ;;disable tool bar mode


;; User-Defined init.el ends here


;; ====================================
;; Development Setup --> Python
;; ====================================
;; Enable elpy

(elpy-enable)

;; User-Defined init.el ends here

;; Enable Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; ==========================================
;; Developement Setup --> C
;; ==========================================

(setq c-default-style "linux"
      c-basic-offset 4)

;;eletric pair mode
(electric-pair-mode 1)


;; ==============================================
;; Developement Setup --> OCaml
;;================================================
;; install the following :- opam instsall caml-mode merlin opc-indent
; shift tab to complete
(global-set-key (kbd "S-<tab>") 'company-complete)

; Shell, needed to get correct env
(setq shell-command-switch "-lc")
(setq explicit-bash-args '("--login" "-i"))

; locate opam's site-lisp
(setq opam-share
      (substring (shell-command-to-string
                  "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))

; Compilation mode
(require 'compile)
(setq compilation-scroll-output 'first-error)
(setq compilation-always-kill t)
(setq next-error-highlight t)

; Company mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(define-key company-active-map [tab] 'company-complete-selection)
(setq company-idle-delay nil)

; caml-mode
(add-to-list 'auto-mode-alist '("\\.ml[iylp]?$" . caml-mode))
(autoload 'caml-mode "caml" "Major mode for editing OCaml code." t)
(autoload 'run-caml "inf-caml" "Run an inferior OCaml process." t)
(autoload 'camldebug "camldebug" "Run ocamldebug on program." t)
(add-to-list 'interpreter-mode-alist '("ocamlrun" . caml-mode))
(add-to-list 'interpreter-mode-alist '("ocaml" . caml-mode))
(if window-system
    (progn
      (require 'caml-font)
      (set-face-foreground 'caml-font-doccomment-face "#cb4b16")))

; merlin
(require 'merlin)
(require 'caml-types)
(require 'merlin-company)
;(add-to-list 'company-backends 'merlin-company-backend)
(add-hook 'caml-mode-hook 'merlin-mode t)
(setq merlin-use-auto-complete-mode 'easy)
(setq merlin-command 'opam)
(setq merlin-error-on-single-line t)

; ocp-indent
(require 'ocp-indent)
(setq ocp-indent-path
     (concat
      (replace-regexp-in-string "\n$" ""
          (shell-command-to-string "opam config var bin")) "/ocp-indent"))
(setq ocp-indent-config "strict_with=always,match_clause=4,strict_else=never")

;;adding tuareg mode






;; ==============================================
;; Developement Setup --> Coq (Proof Master)
;; ==============================================
;;use proof genrela downloaded from elpa
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (proof-general magit blacken flycheck material-theme elpy better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
