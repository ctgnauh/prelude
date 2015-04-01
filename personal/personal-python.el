;;; personal-python.el --- python custom
;;; Commentary:
;;; Code:

;; JEDI
(prelude-require-package 'jedi)

(setq jedi:complete-on-dot t)
(setq jedi:setup-keys t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'hs-minor-mode)


(provide 'personal-python)
;;; personal-python.el ends here
