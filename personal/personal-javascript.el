;;; personal-javascript.el --- javascript custom
;;; Commentary:
;;; Code:

;; ternjs
(prelude-require-package 'tern)
(setq tern-command (cons (executable-find "tern") '("--no-port-file")))
(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode t)))

;; js-doc
(prelude-require-package 'js-doc)
(setq js-doc-mail-address "huangtc@outlook.com"
      js-doc-author (format "ctgnauh <%s>" js-doc-mail-address)
      js-doc-url "https://github.com/ctgnauh"
      js-doc-license "MIT")

(add-hook 'js2-mode-hook
          #'(lambda ()
              (define-key js2-mode-map "@" 'js-doc-insert-tag)))

(provide 'personal-javascript)
;;; personal-javascript.el ends here
