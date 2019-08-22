;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(elpy-enable)

(require 'use-package)
(require 'package)
(add-to-list 'package-archives ' ("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives ' ("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives ' ("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/lisp/")




(defvar myPackages
  '(better-defaults
    elpy
    emacs-c-ide-demo))
  


(setq inhibit-startup-message t)
(global-linum-mode t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" default)))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (auto-package-update magit treemacs page-break-lines async which-key powerline ada-mode solarized-theme python-mode bash-completion rust-mode evil latex-extra markdown-mode elpy sed-mode sql-indent go-mode org-edna auctex php-mode chess emamux js2-mode haskell-mode s better-defaults)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c8805d801780")
     (60 . "#bec073400bc0")
     (80 . "#b58900")
     (100 . "#a5008e550000")
     (120 . "#9d0091000000")
     (140 . "#950093aa0000")
     (160 . "#8d0096550000")
     (180 . "#859900")
     (200 . "#66aa9baa32aa")
     (220 . "#57809d004c00")
     (240 . "#48559e556555")
     (260 . "#392a9faa7eaa")
     (280 . "#2aa198")
     (300 . "#28669833af33")
     (320 . "#279993ccbacc")
     (340 . "#26cc8f66c666")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(put 'view-lossage 'isearch-scroll t)


(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq x-select-enable-clipboard t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(global-prettify-symbols-mode t)

(setq electric-pairs-pairs '(
			     (?\{ . ?\})
			     (?\( . ?\))
			     (?\[ . ?\])
			     (?\" . ?\")
			     ))
(electric-pair-mode t)

(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

(defalias 'yes-or-no-p 'y-or-n-p)

(use-package auto-package-update
	     :defer nil
	     :ensure t
	     :config
	     (setq auto-package-update-delete-old-versions t)
	     (setq auto-package-update-hide-results t)
	     (auto-package-update-maybe))

(use-package powerline
	     :ensure t
	     :init
	     (spaceline-spacemacs-theme)
	     :hook
	     ('after-init-hook) . 'powerline-reset)

(use-package which-key
	     :ensure t
	     :diminish which-key-mode
	     :init
	     (which-key-mode))

;;(use-package evil
;;	     :ensure t
;;	     :defer nil
;;	     :init
;;	     (setq evil-want-keybinding nil)
;;	     (setq evil-want-C-u-scroll t)
;;	     :config
;;	     (evil-mode 1))

(use-package async
	     :ensure t
	     :init
	     (dired-async-mode 1))

(use-package page-break-lines
	     :ensure t
	     :diminish (page-break-lines-mode visual-line-mode))

(use-package undo-tree
	     :ensure t
	     :diminish undo-tree-mode)

(use-package eldoc
	     :diminish eldoc-mode)

(use-package abbrev
	     :diminish abbrev-mode)

(use-package company
	     :ensure t
	     :diminish (meghanda-mode company-mode irony-mode)
	     :config
	     (setq company-idle-delay 0)
	     (setq company-minimum-prefix-length 3)
	     (define-key company-active-map (kbd "M-n") nil)
	     (define-key company-active-map (kbd "M-p") nil)
	     (define-key company-active-map (kbd "C-n") nil)
	     (define-key company-active-map (kbd "c-p") nil)
	     (define-key company-active-map (kbd "SPC") nil)
	     :hook
	     ((java-mode c-mode c++-mode rust-mode go-mode) . company-mode))


	     
