;;; personal-javascript.el --- javascript custom
;;; Commentary:
;;; Code:

;; ac-js2
(prelude-require-package 'ac-js2)
(add-hook 'js2-mode-hook 'ac-js2-mode)

;; ternjs
;; (prelude-require-packages '(tern tern-auto-complete))
;; (add-hook 'js2-mode-hook (lambda ()
;;                            (auto-complete-mode)
;;                            (tern-mode t)))
;; (setq tern-command (cons (executable-find "tern") '()))
;; (eval-after-load 'tern
;;   '(progn
;;      (require 'tern-auto-complete)
;;      (tern-ac-setup)))

(provide 'personal-javascript)
;;; personal-javascript.el ends here
