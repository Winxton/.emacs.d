;; general configurations
(global-linum-mode 1)
(global-auto-revert-mode t)
(column-number-mode 1)

;; tab to four spaces
(setq-default c-basic-offset 4)
(setq c-default-style "linux"
          c-basic-offset 4)

(define-key global-map (kbd "RET") 'newline-and-indent)

;; No splash screen
(setq inhibit-startup-message t)

;; backup in different directory
;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Save point position between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

;; Set path to dependencies
;; .emacs.d/, .emacs.d/site-lisp
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

;;(require 'appearance)

(require 'better-defaults)
(load "movement.el")

;; Load stuff on demand
(autoload 'auto-complete-mode "auto-complete" nil t)

;; autocomplete

(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
