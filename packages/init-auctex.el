(setq TeX-PDF-mode t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)

(add-hook 'TeX-mode-hook
	  (lambda ()
	    (define-key TeX-mode-map (kbd "C-SPC") 'TeX-complete-symbol)
	    (add-to-list 'TeX-command-list
			 '("xelatexmk"
			   "latexmk --xelatex --interaction=nonstopmode"
			   TeX-run-command t t :help "Run latexmk with xelatex"))
	    (add-to-list 'TeX-command-list
			 '("lualatexmk"
			   "latexmk --lualatex --interaction=nonstopmode"
			   TeX-run-command t t :help "Run latexmk with lualatex"))
	    (setq TeX-command-default "lualatexmk")))
