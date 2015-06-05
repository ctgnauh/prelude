;;; personal-markdown.el --- markdown custom
;;; Commentary:
;;; Code:

(setq markdown-command "markdown_py")

(defun cleanup-org-tables ()
  (save-excursion
    (goto-char (point-min))
    (while (search-forward "-+-" nil t) (replace-match "-|-"))
    ))

(add-hook 'markdown-mode-hook 'orgtbl-mode)
(add-hook 'markdown-mode-hook
          (lambda()
            (add-hook 'after-save-hook 'cleanup-org-tables  nil 'make-it-local)))

(provide 'personal-markdown)
;;; personal-markdown.el ends here
