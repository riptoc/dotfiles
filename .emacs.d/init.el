;;; Riptoc's emacs file.

;; Temp bugfix, should be fixed soon
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Packages
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))
(require 'package)
(package-initialize)

;; Uncomment to reinstall packages on a new setup
;; (package-refresh-contents)

(setq my-packages
      '(markdown-mode
	csv-mode
	lua-mode
	yasnippet-snippets
	yasnippet
	move-text
	powerline
	flycheck
	auto-complete))

(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))


;; Plugin settings
(require 'auto-complete)
(global-auto-complete-mode t) ;; Autocomplete always on
(require 'powerline)
(powerline-center-theme)
(require 'yasnippet)
(yas-global-mode 1)
(require 'move-text)
(move-text-default-bindings)
;;

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
(set-face-font 'default "Inconsolata-12")

;; Trim whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Ido
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
;; Display certain extensions first in minibuffer
(setq ido-file-extensions-order '(".el" ".lua" ".py" ".org" ".c" ".h" ".cpp"))

(provide 'init)
;;; init.el ends here

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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
    (lua-mode yasnippet-snippets powerline move-text markdown-mode flycheck csv-mode auto-complete))))
;;(setq next-line-add-newlines t)
