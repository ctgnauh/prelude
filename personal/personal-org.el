;;; personal-org.el --- org custom
;;; Commentary:
;;; Code:

;;; 主要笔记
(setq org-agenda-files (list "~/org/work.org"
                             "~/org/home.org"
                             "~/org/school.org"))

;;; 日记
(setq org-capture-templates (quote (("d" "diary" entry (file+datetree "~/org/diary.org") "* %? %U"))))


;;; 解决粗体不明显的问题
;;; http://www.zhihu.com/question/28830039
(defface hi-red-b '((t (:foreground "#e50062"))) t)
(defun org-bold-highlight ()
  (interactive)
  (hi-lock-mode)
  (highlight-regexp "[ \\t]\\(\\*\\(\\S-[^*]+\\S-\\|[^*]\\{1,2\\}\\)\\*\\)[ \\t\\n]*" 'hi-red-b))
(add-hook 'org-mode-hook 'org-bold-highlight)


;;; org to jekyll
(add-to-list 'load-path "~/.emacs.d/personal/site-lisp/")
(require 'ox-jekyll)
(require 'ox-jekyll-subtree)
;; (autoload 'endless/export-to-blog "jekyll-once")
(setq org-jekyll-use-src-plugin t)
;; Obviously, these two need to be changed for your blog.
(setq endless/blog-base-url "http://ctgnauh.github.io/")
(setq endless/blog-dir (expand-file-name "~/org/blog/"))


;;; latex设置
;; org-mode export to latex
(require 'ox-latex)
(setq org-export-latex-listings t)
;; org-mode source code setup in exporting to latex
(add-to-list 'org-latex-listings '("" "listings"))
(add-to-list 'org-latex-listings '("" "color"))
(add-to-list 'org-latex-packages-alist '("" "hyperref" t))
(add-to-list 'org-latex-packages-alist '("" "xcolor" t))
(add-to-list 'org-latex-packages-alist '("" "listings" t))
(add-to-list 'org-latex-packages-alist '("" "fontspec" t))
(add-to-list 'org-latex-packages-alist '("" "indentfirst" t))
(add-to-list 'org-latex-packages-alist '("" "xunicode" t))
(add-to-list 'org-latex-packages-alist '("" "amsmath"))
(add-to-list 'org-latex-packages-alist '("" "graphicx" t))
;; org-mode latex class - my-org-book-zh
(add-to-list 'org-latex-classes '("my-org-book-zh"
                                  "
\\documentclass{book}
\\usepackage[slantfont, boldfont]{xeCJK}
% chapter set
\\usepackage[Lenny]{fncychap}
[NO-DEFAULT-PACKAGES]
[PACKAGES]
\\setCJKmainfont{宋体-简} % 设置缺省中文字体
\\parindent 2em
\\setmainfont{DejaVu Serif} % 英文衬线字体
\\setsansfont{DejaVu Sans} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono} % 英文等宽字体
\\defaultfontfeatures{Mapping=tex-text} %解决特殊字符无法正常使用问题
% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
% 代码设置
\\lstset{numbers=left, 
numberstyle= \\tiny, 
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50}, 
frame=shadowbox, 
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}} 
[EXTRA]"
                                  ("\\chapter{%s}" . "\\chapter*{%s}")
                                  ("\\section{%s}" . "\\section*{%s}")
                                  ("\\subsection{%s}" . "\\subsection*{%s}")
                                  ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                                  ("\\paragraph{%s}" . "\\paragraph*{%s}")
                                  ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
;; org-mode latex class - my-org-article-zh
(add-to-list 'org-latex-classes '("my-org-article-zh"
                                  "
\\documentclass{article}
\\usepackage[slantfont, boldfont]{xeCJK}
[NO-DEFAULT-PACKAGES]
[PACKAGES]
\\setCJKmainfont{宋体-简} % 设置缺省中文字体
\\parindent 2em
\\setmainfont{DejaVu Serif} % 英文衬线字体
\\setsansfont{DejaVu Sans} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono} % 英文等宽字体
%\\punctstyle{DejaVu Sans} % 开明式标点格式
\\defaultfontfeatures{Mapping=tex-text} %解决特殊字符无法正常使用问题
% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
% 代码设置
\\lstset{numbers=left, 
numberstyle= \\tiny, 
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50}, 
frame=shadowbox, 
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}} 
[EXTRA]"
                                  ("\\section{%s}" . "\\section*{%s}")
                                  ("\\subsection{%s}" . "\\subsection*{%s}")
                                  ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                                  ("\\paragraph{%s}" . "\\paragraph*{%s}")
                                  ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
;; latex to pdf
(setq org-latex-pdf-process
      '("xelatex -interaction nonstopmode %b"
        "xelatex -interaction nonstopmode %b"))


;; 其他
(setq org-src-fontify-natively t)
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
truncate-lines


(provide 'personal-org)
;;; personal-org.el ends here
