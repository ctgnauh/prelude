;;; personal-git --- git.custom
;;; Commentary:
;;; Code:

(cond
 ((string-equal system-type "cygwin")
  (set-variable 'magit-emacsclient-executable "/usr/bin/emacsclient-w32")))

(provide 'personal-git)
;;; personal-git.el ends here
