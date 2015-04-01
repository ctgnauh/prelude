;;; personal-font.el --- font custom
;;; Commentary:
;;; Code:

(defvar personal-font "Terminus 10")
(defvar personal-cjk-font "WenQuanYi Bitmap Song")
(defvar personal-cjk-font-size 16)


(cond
 ((string-equal system-type "darwin")
  (setq personal-font "Monaco 13")
  (setq personal-cjk-font "Heiti SC")
  (setq personal-cjk-font-size 16))
 ((string-equal system-type "cygwin")
  (setq personal-cjk-font "simsun"))
 ((string-equal system-type "gnu/linux")
  nil))

(when window-system
  (set-default-font personal-font)
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family personal-cjk-font
                                 :size personal-cjk-font-size))))

(provide 'personal-font)
;;; personal-font.el ends here
