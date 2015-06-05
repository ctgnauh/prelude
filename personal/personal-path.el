;;; personal-path --- path.custom
;;; Commentary:
;;; Code:

(defvar personal-themes-dir (expand-file-name "themes" prelude-dir))
(add-to-list 'custom-theme-load-path personal-themes-dir)

(provide 'personal-path)
;;; personal-path.el ends here
