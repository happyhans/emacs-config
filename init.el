(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

;; -----------------------------------------------------------------------------
;; Appearance
;; -----------------------------------------------------------------------------
;; Line numbering, using relative line numbers.
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

;; Turn off tool bar.
(tool-bar-mode -1)

;; Turn off menu bar.
(menu-bar-mode -1)

;; Show the current line and column number in the mode line.
(line-number-mode +1)
(column-number-mode t)

;; Display current time.
(display-time-mode 1)

;; Theme
(load-theme 'seoul256)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(require 'powerline)
(powerline-default-theme)


;; -----------------------------------------------------------------------------
;; Usability
;; -----------------------------------------------------------------------------
;; Use spaces instead of tabs when indenting.
(setq-default indent-tabs-mode nil)

;; Default tab-size
(setq-default tab-width 2)

;; ripgrep (quicker grep)
;; Use keybinding C-c s
(require 'rg)
(rg-enable-default-bindings)

;; Company mode
(add-hook 'prog-mode-hook 'company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(setq company-show-numbers 1) ;; show quick access numbers on the left
(setq company-selection-wrap-around t)

;; Flycheck
(add-hook 'prog-mode-hook 'flycheck-mode)
(add-hook 'ruby-mode-hook 'robe-mode)
(eval-after-load 'company '(push 'company-robe company-backends))

;; Projectile
(projectile-mode t)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Ido (interactive do)
(require 'ido)
(ido-mode t)

;; Change "yes or no" to "y or n"
(fset 'yes-or-no-p 'y-or-n-p)

;; Windmove: Shift + Arrow Keys to move windows.
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Magit (git interface)
(global-set-key (kbd "C-x g") 'magit-status)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("845489fb9f7547e6348a80f942402fc7ac7c6854b0accabc49aeddd8cd4a2bd9" default))
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages
   '(smart-mode-line robe flycheck magit rg company rainbow-delimiters seoul256-theme powerline)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
