;;; personal-editor.el --- prelude editor custom
;;; Commentary:
;;; Code:

;; whitespace
(setq prelude-whitespace nil)

;; flyspell
(setq prelude-flyspell nil)

;; close flycheck
(global-flycheck-mode nil)
(remove-hook 'prog-mode 'flycheck-mode)

(provide 'personal-editor)
;;; personal-editor.el ends here
