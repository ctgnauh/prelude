;;; personal-gnus.el --- gnus configs
;;; Commentary:
;;; Code:

(setq user-full-name "Tristan Huang")
(setq user-mail-address "huangtc@outlook.com")

(setq gnus-select-method '(nnimap "Outlook"
                                  (nnimap-address "imap-mail.outlook.com")
                                  (nnimap-server-port 993)
                                  (nnimap-stream ssl)
                                  (nnimap-expunge-on-close always)))

(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp-mail.outlook.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp-mail.outlook.com" 587 "huangtc@outlook.com" nil))
      smtpmail-default-smtp-server "smtp-mail.outlook.com"
      smtpmail-smtp-server "smtp-mail.outlook.com"
      smtpmail-smtp-service 587
      smtpmail-local-domain "aquallor.org")

(setq gnus-novice-user nil)
(setq gnus-expert-user t)
(setq gnus-show-threads t)
(setq gnus-interactive-exit nil)

(provide 'personal-gnus)
;;; personal-gnus.el ends here
