;;; personal-init.el --- init
;;; Commentary:
;;; Code:

;;(setq server-use-tcp t)
(require 'server)
(unless (server-running-p)
  (server-start))

(provide 'personal-init)
;;; personal-init.el ends here
