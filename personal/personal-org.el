;;; personal-org.el --- org custom
;;; Commentary:
;;; Code:

(setq org-agenda-files (list "~/org/work.org"
                             "~/org/home.org"
                             "~/org/school.org"))

(setq org-capture-templates (quote (("d" "diary" entry (file+datetree "~/org/diary.org") "* %? %U"))))

(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook
          (lambda ()
            (setq truncate-lines nil)))


(provide 'personal-org)
;;; personal-org.el ends here
