;;; personal-auto-complete --- ac-custom
;;; Commentary:
;;; Code:

(prelude-require-packages '(popup auto-complete))
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/dicts")
;;(ac-config-default)
(setq ac-auto-start 2)
(setq ac-auto-show-menu 1)
(set-default 'ac-sources
             '(ac-source-filename
               ac-source-words-in-buffer
               ac-source-words-in-all-buffer
               ac-source-dictionary
               ))
;;(set-face-font 'ac-candidate-face "fontset-dejavu")
;;(set-face-font 'ac-selection-face "fontset-dejavu")

(provide 'personal-auto-complete)
;;; personal-auto-complete.el ends here
