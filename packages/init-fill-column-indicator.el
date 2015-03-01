(setq fci-rule-color "#666666")
(setq fci-rule-width 1)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
