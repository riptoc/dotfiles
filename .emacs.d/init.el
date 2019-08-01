;;; Riptoc's emacs file.

;; Temp bugfix, should be fixed soon
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Packages
(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Custom set stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   (quote
    (markdown-mode csv-mode yasnippet-snippets yasnippet move-text powerline flycheck auto-complete)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;

;; Plugin settings
(require 'auto-complete)
(global-auto-complete-mode t) ;; Autocomplete always on
(require 'powerline)
(powerline-center-theme)
(require 'yasnippet)
(yas-global-mode 1)
(require 'move-text)
(move-text-default-bindings)

;; Global flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Disable C-z and accidentally suspending the frame
(global-unset-key (kbd "C-z"))

;; Disable stuff nobody needs
;; (customize-set-variable 'inhibit-startup-screen t) ; no splash screen on start
(tool-bar-mode -1)   ; no tool bar with icons
(scroll-bar-mode -1) ; no scroll bars
(menu-bar-mode -1)   ; no menu bar

;; Don't let Emacs hurt your ears
(setq visible-bell t)

;; Margins
(setq-default left-margin-width 2 right-margin-width 2)
(global-display-line-numbers-mode 1) ; line number in margin

;; Backups
(setq backup-by-copying t)
(setq backup-directory-alist `(("." . "~/.emacs-backups")))

;; Font
(set-face-font 'default "Inconsolata-11")

;; Trim whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Ido
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
;; Display certain extensions first in minibuffer
(setq ido-file-extensions-order '(".emacs" ".org" ".c" ".h" ".cpp"))

;; Add new lines with C-n at last line
(setq next-line-add-newlines t)

(provide '.emacs)
;;; .emacs ends here
