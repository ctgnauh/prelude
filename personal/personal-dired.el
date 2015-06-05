;;; personal-dired --- dired custom
;;; Commentary:
;;; Code:

(defun dired-open-file-in-external-app ()
  "In dired, open the file named on this line."
  (interactive)
  (let* ((file (dired-get-filename)))
    (message "Opening %s..." file)
    (cond
     ((string-equal system-type "windows-nt")
      (w32-shell-execute nil (expand-file-name file default-directory)))
     ((string-equal system-type "cygwin")
      (call-process "cygstart" nil 0 nil file))
     ((string-equal system-type "gnu/linux")
;      (call-process "gvfs-open" nil 0 nil file)))
      (call-process "kde-open" nil 0 nil file))
     ((string-equal system-type "darwin")
      (call-process "open" nil 0 nil file)))
    (message "Opening %s done" file)))

(add-hook 'dired-mode-hook (lambda ()
                             (local-set-key "o" 'dired-open-file-in-external-app)))

(provide 'personal-dired)
;;; personal-dired.el ends here
