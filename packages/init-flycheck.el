(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers
                '(
                  ;; The documentaion specific checker is really annoying
                  ;; because it hits all el files including the ones that are
                  ;; not packages or modules or whatever they're called
                  emacs-lisp-checkdoc

                  ;; from the looks of it ruby-lint can't actually revolve
                  ;; external dependencies and fails really hard on anything
                  ;; that is not a simple ruby script
                  ruby-rubylint
                  )))

(global-flycheck-mode)
