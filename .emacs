
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (robe flycheck ag yaml-mode magit inf-ruby zeal-at-point yasnippet scss-mode coffee-mode angular-snippets angular-mode))))
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

;; For MAC keyboard
(setq mac-option-modifier nil mac-command-modifier 'meta x-select-enable-clipboard t)

;; Open maximized
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; Disable bars
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Hide column number and Show line number
(setq column-number-mode t)
(global-linum-mode 1)

;; Open files in text mode by default (like if they were .txt)
(setq text-mode-hook (quote (text-mode-hook-identify)))

;; Tab key configuration and auto-tabify
;;(setq tab-stop-list (number-sequence 2 58 2))
;;(setq cua-auto-tabify-rectangles nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Don't show startup message
(setq inhibit-startup-message t)

;; Not to create temp files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Cua Mode (C-c, C-x, C-v)
(cua-mode t)

;; Estilo
;; Coloreado de sinaxsis
(global-font-lock-mode 1)

;; Colorea parentesis
(show-paren-mode 1)

;; Background, color and size Font
(set-background-color "Black")
(set-foreground-color "white")
(set-face-attribute 'default nil :height 150)

;; colored format for ruby files
(add-to-list 'auto-mode-alist '("\\.jbuilder\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Capfile\\'" . ruby-mode))
;;(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(setq ruby-insert-encoding-magic-comment nil)

;; MELPA (packages for emacs)
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Installed (melpa) packages
;; angularjs-yasnippet
;; coffee-mode
;; magit
;; magit-push-remote
;; scss-mode
;; yasnippet
;; zeal-at-point
;; flycheck
;; robe

;; Yasnippet (Auto-complete code)
(add-to-list 'load-path ".emacs.d/elpa/yasnippet-20170923.1646/")
(require 'yasnippet)
(yas-global-mode 1)
 
;; Magit status (Plugin for GIT)
(autoload 'magit-status "magit" nil t)
(global-set-key "\M-m" 'magit-status)

 
;; Zeal docset binding key
(global-set-key "\C-cz" 'zeal-at-point)
 
;; Coffee-mode (Coffeescript style)
(add-to-list 'load-path ".emacs.d/elpa/coffee-mode-20170324.240/")
(require 'coffee-mode)
 
;; scss-mode (SCSS style)
(add-to-list 'load-path ".emacs.d/elpa/scss-mode-20150107.1400/")
(setq scss-compile-at-save nil)
(require 'scss-mode)

;; Ignore MAC system filesx
(add-to-list 'completion-ignored-extensions ".DS_Store")
(add-to-list 'completion-ignored-extensions "._.DS_Store")
(require 'dired-x)
(setq-default dired-omit-files-p t) ; Buffer-local variable
(setq dired-omit-files (concat dired-omit-files "\\|^\\.DS_Store$"))

;; PATH
(push "/usr/local/bin" exec-path)

;; rbenv
(setq exec-path (cons "/usr/local/bin" exec-path))
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))

(setq exec-path (cons "~/.rbenv/bin" exec-path))
(setenv "PATH" (concat "~/.rbenv/bin" ":" (getenv "PATH")))
(setq exec-path (cons "~/.rbenv/shims" exec-path))
(setenv "PATH" (concat "~/.rbenv/shims" ":" (getenv "PATH")))

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq-default flycheck-disabled-checkers '(html-tidy))

;; robe
(add-hook 'ruby-mode-hook 'robe-mode)
