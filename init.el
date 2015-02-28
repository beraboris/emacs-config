;; figure out the dir for the config file
(setq config-dir (file-name-directory load-file-name))

;; load or install el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; add own recipies to recipies path
(add-to-list 'el-get-recipe-path (expand-file-name "recipes" config-dir))

;; set package config dir
(setq el-get-user-package-directory (expand-file-name "packages/" config-dir))

;; sync packages
(load-file (expand-file-name "packages.el" config-dir))

;; set editing defaults
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq evil-shift-width 2)

;; theme
(load-theme 'Darkula t)

;; editor preferences
(setq line-number-mode t)
(setq column-number-mode t)
(global-linum-mode t)
(global-hl-line-mode t)
(pending-delete-mode t)

;; no filthy startup screen, menus or toolbars
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)

;; fonts and colors
(set-face-attribute 'default nil :height 100 :family "Source Code Pro")
(set-face-attribute 'hl-line nil :background "#363636")

;; custom commands
(load-file (expand-file-name "commands.el" config-dir))
(global-set-key (kbd "S-<return>") 'newline-anywhere)
