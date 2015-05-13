;;; personal-ui.el --- ui custom
;;; Commentary:
;;; Code:

(tool-bar-mode -1)
;;(menu-bar-mode -1)
(scroll-bar-mode -1)
;;(set-fringe-style 1)

(setq inhibit-startup-message -1)

;;(set-face-bold 'bold nil)

;;(setq initial-frame-alist '( (width . 80) (height . 80)))

(setq ring-bell-function 'ignore)

(auto-image-file-mode)

(provide 'personal-ui)
;;; personal-ui.el ends here
