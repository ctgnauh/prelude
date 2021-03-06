;;; personal-misc.el --- misc configs
;;; Commentary:
;;; Code:

;; multi-shell
(defun wcy-shell-mode-auto-rename-buffer (text)
  "Rename multi shell title(TEXT)."
  (if (eq major-mode 'shell-mode)
      (rename-buffer (concat "shell: " default-directory) t)))
(add-hook 'comint-output-filter-functions 'wcy-shell-mode-auto-rename-buffer)

;; minibuffer不限制深度
(defvar minibuffer-max-depth nil)

;; 优雅地关闭Daemon
(defun save-client-and-kill-server ()
  "When shutdown, save all buffer and kill daemon."
  (interactive)
  (save-some-buffers)
  (kill-emacs))

(defun change-theme-to-monokai ()
  "change theme to monokai and custom fg/bg"
  (interactive)
  (load-theme 'monokai)
  (set-foreground-color "#cccccc")
  (set-background-color "#222222"))

(defun change-theme-to-solarized ()
  "change theme to solarized dark"
  (interactive)
  (load-theme 'solarized-dark))

(provide 'personal-misc)
;;; personal-misc.el ends here
