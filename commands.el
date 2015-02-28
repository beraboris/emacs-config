;; various commands that emacs is missing

(defun newline-anywhere ()
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))
