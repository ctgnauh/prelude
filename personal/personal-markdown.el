;;; personal-markdown.el --- markdown custom
;;; Commentary:
;;; Code:

(prelude-require-packages '(markdown-mode markdown-preview-eww))

(setq markdown-command "markdown_py -x gfm")

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
