;;; personal-company.el --- company custom
;;; Commentary:
;;; Code:

;; js
(prelude-require-package 'company-tern)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-tern))

(prelude-require-package 'slime-company)
(slime-setup '(slime-fancy slime-company))

(provide 'personal-company)
;;; personal-company.el ends here
