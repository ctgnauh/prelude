;;; personal-irc --- irc-custom
;;; Commentary:
;;; Code:

(load "~/.erc-auth.gpg")

(setq erc-default-nick "ctgnauh")
(setq erc-default-full-name "Tristan Huang")
(setq erc-default-server "irc.freenode.net")
(setq erc-default-port 8000)

(setq erc-autojoin-channels-alist nil)

(defun start-freenode ()
  "Connect to Freenode"
  (interactive)
  (erc
   :server "irc.freenode.net"
   :port 8000
   :nick erc-default-nick
   :password erc-default-password))

(provide 'personal-irc)
;;; personal-irc.el ends here
