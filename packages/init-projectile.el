(projectile-global-mode)
(global-set-key (kbd "C-S-o") 'projectile-find-file)
(global-set-key (kbd "C-S-p") 'projectile-switch-project)

(require 'helm-projectile)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

