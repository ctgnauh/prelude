;;; personal-path --- path.custom
;;; Commentary:
;;; Code:

(defvar personal-themes-dir (expand-file-name "themes" prelude-dir))
(add-to-list 'custom-theme-load-path personal-themes-dir)

(setq geiser-racket-binary "/Applications/Racket v6.5/bin/racket")

(provide 'personal-path)
;;; personal-path.el ends here
