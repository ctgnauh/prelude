;;; personal-font.el --- font custom
;;; Commentary:
;;; Code:

(defvar personal-font "Terminus")
(defvar personal-font-size 10)
(defvar personal-cjk-font "WenQuanYi Bitmap Song")
(defvar personal-cjk-font-size 16)


(cond
 ((string-equal system-type "darwin")
  (setq personal-font "Monaco")
  (setq personal-font-size 13)
  (setq personal-cjk-font "Heiti SC")
  (setq personal-cjk-font-size 16))
 ((string-equal system-type "cygwin")
  (setq personal-cjk-font "simsun"))
 ((string-equal system-type "windows-nt")
  (setq personal-cjk-font "simsun"))
 ((string-equal system-type "gnu/linux")
  nil))


(defun personal-default-font ()
  "set my personal default font"
  (interactive)
  (when window-system
    (set-frame-font (concat
                     personal-font
                     "-"
                     (number-to-string personal-font-size)))
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        (font-spec :family personal-cjk-font
                                   :size personal-cjk-font-size)))))


(add-hook 'after-make-frame-functions
           (lambda (new-frame)
             (select-frame new-frame)
             (personal-default-font)))
(personal-default-font)


(provide 'personal-font)
;;; personal-font.el ends here
