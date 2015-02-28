(require 'smartparens)
(add-to-list 'sp--lisp-modes 'geiser-mode)
(add-to-list 'sp--lisp-modes 'geiser-repl-mode)

(require 'smartparens-config)
(setq sp-cancel-autoskip-on-backward-movement nil)
(setq sp-autoskip-closing-pair t)
(setq sp-autoescape-string-quote t)
(setq sp-highlight-pair-overlay nil)

(smartparens-global-mode t)

