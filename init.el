
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(require 'package)
(add-to-list 'package-archives ' ("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives ' ("org" . "http://orgmode.org/elpa"))
(add-to-list 'load-path "~/.emacs.d/lisp")

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
 '(package-selected-packages
   (quote
    (org-edna auctex php-mode chess emamux js2-mode haskell-mode s better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



