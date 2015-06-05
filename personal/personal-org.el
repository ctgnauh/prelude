;;; personal-org.el --- org custom
;;; Commentary:
;;; Code:

(setq org-agenda-files (list "~/org/work.org"
                             "~/org/home.org"
                             "~/org/school.org"))

(setq org-capture-templates (quote (("d" "diary" entry (file+datetree "~/org/diary.org") "* %? %U"))))

(setq org-src-fontify-natively t)

(defun org-insert-src-block (src-code-type)
  "Insert a `SRC-CODE-TYPE' type source code block in org-mode."
  (interactive
   (let ((src-code-types
          '("emacs-lisp" "python" "C" "sh" "java" "js" "clojure" "C++" "css"
            "calc" "asymptote" "dot" "gnuplot" "ledger" "lilypond" "mscgen"
            "octave" "oz" "plantuml" "R" "sass" "screen" "sql" "awk" "ditaa"
            "haskell" "latex" "lisp" "matlab" "ocaml" "org" "perl" "ruby"
            "scheme" "sqlite" "html")))
     (list (ido-completing-read "Source code type: " src-code-types))))
  (progn
    (newline-and-indent)
    (insert (format "#+BEGIN_SRC %s\n" src-code-type))
    (newline-and-indent)
    (insert "#+END_SRC\n")
    (previous-line 2)
    (org-edit-src-code)))


(defface hi-red-b '((t (:foreground "#e50062"))) t)

(defun org-bold-highlight ()
  (interactive)
  (hi-lock-mode)
  (highlight-regexp "[ \\t]\\(\\*\\(\\S-[^*]+\\S-\\|[^*]\\{1,2\\}\\)\\*\\)[ \\t\\n]*" 'hi-red-b))


(add-hook 'org-mode-hook 'org-bold-highlight)
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook
          (lambda ()
            (setq truncate-lines nil)
            (local-set-key (kbd "C-x y s")
                           'org-insert-src-block)))


(provide 'personal-org)
;;; personal-org.el ends here
