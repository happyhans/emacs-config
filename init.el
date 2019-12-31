;; emacs cheatsheet
;;
;; Common window commands (also called a frame in emacs)
;; C-x 0 delete the current window
;; C-x 1 maximize the current window
;; C-x 2 split the current window horizontally
;; C-x 3 split the current window vertically
;; C-x ^ make selected window taller
;; C-x } make selected window wider
;; C-x - shrink window if larger than buffer

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

;; Set internal emacs info.
(setq user-full-name "Hans Allendorfer"
      user-mail-address "hansallendorfer@yahoo.com")

;; Highlight indentation levels.
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'column)

;; Turn off menu bar.
(menu-bar-mode -1)

;; Turn off scroll bar.
(toggle-scroll-bar -1)

;; Turn off tool bar.
(tool-bar-mode -1)

;; Turn off blinking cursor.
(blink-cursor-mode -1)

;; Toggle line highlighting in all buffers.
(global-hl-line-mode +1)
(set-face-background 'hl-line "#330")

;; Show the current line and column number in the mode line.
(line-number-mode +1)
(column-number-mode t)

;; Show line numbers in all buffers.
(global-display-line-numbers-mode 1)

;; Use spaces instead of tabs when indenting.
(setq-default indent-tabs-mode nil)

;; Default tab-size
(setq-default tab-width 2)

;; Theming
(require 'powerline)
(require 'moe-theme)
(moe-theme-set-color 'orange)
(moe-light)
(powerline-moe-theme)

;; Typography
(set-face-attribute 'default nil
                    :family "Fira Code Light"
                    :height 160
                    :weight 'normal
                    :width 'normal)

;; Windmove settings
;; Move from frame to frame using shift + arrow keys
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Ruby-related settings
;; Files with the following extensions should open in ruby-mode
(require 'ruby-mode)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(require 'ruby-end)
;; https://github.com/rejeep/ruby-tools.el
(require 'ruby-tools)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company ruby-end yard-mode ruby-tools moe-theme powerline highlight-indent-guides highlight-indentation use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
