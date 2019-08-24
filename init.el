;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(elpy-enable)

(setq gc-cons-threshold 402653184
	  gc-cons-percentage 0.6)

(defvar startup/file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

(defun startup/revert-file-name-handler-alist ()
  (setq file-name-handler-alist startup/file-name-handler-alist))

(defun startup/reset-gc ()
  (setq gc-cons-threshold 16777216
		gc-cons-percentage 0.1))

(add-hook 'emacs-startup-hook 'startup/revert-file-name-handler-alist)
(add-hook 'emacs-startup-hook 'startup/reset-gc)



(require 'package)
(add-to-list 'package-archives ' ("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives ' ("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives ' ("melpa-stable" . "https://stable.melpa.org/packages/"))
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))


(require 'use-package)
(require 'spaceline-config)
(spaceline-spacemacs-theme)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))


(defvar myPackages
  '(better-defaults
    elpy
    emacs-c-ide-demo))
  


(setq inhibit-startup-message t)



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
 '(custom-enabled-themes (quote (misterioso)))
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
	(htmlize mvn company-irony irony meghanada company-c-headers beacon switch-window swiper orgalist auto-package-update magit treemacs page-break-lines async which-key powerline ada-mode solarized-theme python-mode bash-completion rust-mode evil latex-extra markdown-mode elpy sed-mode sql-indent go-mode org-edna auctex php-mode chess emamux js2-mode haskell-mode s better-defaults)))
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

(show-paren-mode 1)

(setq x-select-enable-clipboard t)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq scroll-conservatively 100)

(setq ring-bell-function 'ignore)

(setq-default tab-width 4)
(setq-default standard-indent 4)
(setq c-basic-offset tab-width)
(setq-default electric-indent-inhibit t)
(setq-default indent-tabs-mode t)
(setq backward-delete-char-untabify-method 'nil)

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

(global-set-key (kbd "s-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "s-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "s-C-<down>") 'shrink-window)
(global-set-key (kbd "s-C-<up>") 'enlarge-window)

(global-hl-line-mode t)

(setq use-package-always-defer t)

(use-package auto-package-update
	     :defer nil
	     :ensure t
	     :config
	     (setq auto-package-update-delete-old-versions t)
	     (setq auto-package-update-hide-results t)
	     (auto-package-update-maybe))

(use-package org
  :config
  (add-hook 'org-mode-hook 'org-indent-mode)
  (add-hook 'org-mode-hook
	    '(lambda ()
	       (visual-line-mode 1))))

(use-package org-indent
  :diminish org-indent-mode)

(use-package htmlize
  :ensure t)

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

(use-package avy
  :ensure t
  :bind
  ("M-s" . avy-goto-char))

(use-package beacon
  :ensure t
  :diminish beacon-mode
  :init
  (beacon-mode 1))

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

(use-package swiper
  :ensure t
  :bind ("C-s" . 'swiper))

(use-package switch-window
  :ensure t
  :config
  (setq switch-window-input-style 'minibuffer)
  (setq switch-window-increase 4)
  (setq switch-window-threshold 2)
  (setq switch-window-shortcut-style 'qwerty)
  (setq switch-window-qwerty-shortcuts
	'("a" "s" "d" "f" "j" "k" "l"))
  :bind
  ([remap other-window] . switch-window))

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
	     ((java-mode c-mode c++-mode) . company-mode))

(use-package company-c-headers
  :defer nil
  :ensure t)

(use-package company-irony
  :defer nil
  :ensure t
  :config
  (setq company-backends '((company-c-headers
                            company-dabbrev-code
                            company-irony))))
(use-package irony
  :defer nil
  :ensure t
  :config
  :hook
  ((c++-mode c-mode) . irony-mode)
  ('irony-mode-hook) . 'irony-cdb-autosetup-compile-options)

(use-package meghanada
  :ensure t
  :defer nil
  :config
  (add-hook 'java-mode-hook
			(lambda ()
			  (meghanada-mode t)))
  (setq meghanada-java-path "java")
  (setq meghanada-maven-path "mvn"))


(setq eshell-prompt-regexp "^[^αλ\n]*[αλ] ")
(setq eshell-prompt-function
      (lambda nil
        (concat
         (if (string= (eshell/pwd) (getenv "HOME"))
             (propertize "~" 'face `(:foreground "#99CCFF"))
           (replace-regexp-in-string
            (getenv "HOME")
            (propertize "~" 'face `(:foreground "#99CCFF"))
            (propertize (eshell/pwd) 'face `(:foreground "#99CCFF"))))
         (if (= (user-uid) 0)
             (propertize " α " 'face `(:foreground "#FF6666"))
         (propertize " λ " 'face `(:foreground "#A6E22E"))))))

(setq eshell-highlight-prompt nil)

(defalias 'open 'find-file-other-window)
(defalias 'clean 'eshell/clear-scrollback)


(defun erc-cmd-FAITH (&rest ignore)
  "Post faith in the current channel."
  (interactive)
  (require 'faith)
  (erc-send-message
   (mapconcat 'identity (split string (faith-quote) "\n") " ")))
