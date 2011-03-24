(add-to-list 'load-path "~/.libemacs/lib/icicles")
(add-to-list 'load-path "~/.libemacs/lib/")
(autoload 'js2-mode "js2" nil t)
(require 'fuzzy-match)
(require 'synonyms)
(require 'icicles)
(require 'color-theme)
(require 'zenburn)

(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-zenburn)))

(set-face-attribute 'mode-line nil :box nil)
(fset 'yes-or-no-p 'y-or-n-p)

(show-paren-mode t)
; (show-ws-toggle-show-hard-spaces)
; (show-ws-toggle-show-tabs)
; (show-ws-toggle-show-trailing-whitespace)

(setq-default backup-inhibited t)
(setq-default haskell-program-name "ghci \"+.\"")
(setq-default indent-tabs-mode nil)
(setq-default auto-save-default nil)
(setq-default tab-width 4)
(setq-default blink-matching-paren t)
(setq-default inhibit-startup-screen t)
(setq-default modeline-shadow-thickness 0)
(setq-default cua-toggle-set-mark nil)
(setq-default cua-enable-cua-keys nil)
(setq-default ido-enable-flex-matching t)
(setq-default c-default-style "bsd")
(setq-default c-basic-offset 2)
(setq-default sh-basic-offset 2)
(setq-default sgml-basic-offset 2)
(setq-default comment-multi-line t)
(setq-default mail-from-style 'angles)
(setq-default erc-kill-buffer-on-part t)
(setq-default kill-whole-line t)
(setq-default erc-kill-queries-on-quit t)
(setq-default erc-kill-server-buffer-on-quit t)
(setq-default erc-track-exclude-types (quote ("JOIN" "NICK" "PART" "QUIT" "MODE" "324" "329" "332" "333" "353" "477")))
(setq-default erc-timestamp-right-align-by-pixel t)
(setq-default erc-nick (quote ("dsouza" "_dsouza_" "__dsouza__")))

(global-font-lock-mode t)
(global-linum-mode t)
(global-hl-line-mode)
(line-number-mode t)
(column-number-mode t)
(cua-mode t)
;(ido-mode t)
(icy-mode t)
; (tool-bar-mode nil)
; (menu-bar-mode nil)
; (scroll-bar-mode nil)

; (add-hook 'text-mode-hook 'auto-fill-mode t)
(add-hook 'text-mode-hook 'flyspell-mode t)
; (add-hook 'mail-mode-hook 'turn-on-auto-fill)
(add-hook 'mail-mode-hook 'flyspell-mode t)

; (global-set-key (kbd "C-c a") 'align-string)
; (global-set-key (kbd "C-c i") 'ispell-buffer)
(global-set-key (kbd "C-c q") 'view-mode)
(global-set-key (kbd "C-c t") 'icicle-find-file-in-tags-table)
(global-set-key (kbd "C-c q") 'delete-frame)
(global-set-key (kbd "C-c w") 'server-edit)
(global-set-key (kbd "S-<f8>") 'compile)
(global-set-key (kbd "S-<f9>") 'ispell-change-dictionary)
(global-set-key (kbd "S-<f10>") 'viper-mode)
(global-set-key (kbd "S-<f11>") 'whitespace-mode)
(global-set-key (kdb "S-<f7>") 'toggle-truncate-lines)
(global-set-key (kbd "C-k") 'kill-whole-line)
(global-set-key (kbd "C-x C-k") 'kill-line)
(global-set-key (kbd "C-x C-d") 'kill-region)

(put 'erase-buffer 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(put 'scroll-left 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq auto-mode-alist (cons '("/tmp/mutt.*$" . post-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/backlot.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
