;;; personal-global-keybindings.el --- global keybindings custom
;;; Commentary:
;;; Code:

;; 避免Mark Set与输入法冲突
(global-set-key (kbd "C-c m") 'set-mark-command)

;; 保存所有buffer并关闭daemon
(global-set-key (kbd "C-c q") 'save-client-and-kill-server)

;; 默认备忘录
(global-set-key (kbd "C-c c")
                (lambda () (interactive) (org-capture nil "d")))

(prelude-require-package 'ace-window)
(key-chord-define-global "jw" 'ace-window)


(provide 'personal-global-keybindings)
;;; personal-global-keybindings.el ends here
