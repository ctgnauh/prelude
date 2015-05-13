;;; personal-fairy-tale.el --- fairy tale
;;; Commentary:
;;; Code:

;; Mirror mirror
(defun mirror-mirror ()
  "Mirror, mirror upon the wall, Who is the most handsome man in the world?"
  (interactive)
  (message "%s is the most handsome man in the world." user-full-name))

(provide 'personal-fairy-tale)
;;; personal-fairy-tale.el ends here
