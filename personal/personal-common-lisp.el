;;; personal-common-lisp.el --- cl custom
;;; Commentary:
;;; Code:

;; roswell
(load (expand-file-name "~/.roswell/lisp/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "ros -L ccl -Q -l ~/.ccl-init.lisp run")
(setf slime-lisp-implementations
      `((ccl ("ccl" "--dynamic-space-size" "2000"))
        (sbcl ("sbcl" "--dynamic-space-size" "2000"))
        (roswell ("ros" "dynamic-space-size=2000" "-Q" "-l" "~/.sbclrc" "run"))))
(setf slime-default-lisp 'roswell)


(provide 'personal-common-lisp)
;;; personal-common-lisp.el ends here
