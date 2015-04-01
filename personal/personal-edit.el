;;; personal-edit.el --- edit custom
;;; Commentary:
;;; Code:

;; 自动保存
(setq auto-save-default nil)
;; 临时文件
(setq make-backup-files nil)

;; 行距
(setq line-spacing 1)

;; 页宽
(setq fill-column 70)

;; 缺省模式
(setq major-mode 'text-mode)

;; 最大kill-ring纪录
(setq kill-ring-max 200)

;; 空行结束
(setq require-final-newline t)

;; 共享剪贴板
(setq x-select-enable-clipboard t)

;; 平滑滚动
(setq scroll-margin 5
      scroll-conservatively 10000)

;; 鼠标粘贴在光标处
(setq mouse-yank-at-point t)

(provide 'personal-edit)
;;; personal-edit.el ends here
