(require 'org)

;; org 中代码添加语法高亮
(setq org-src-fontify-natively t)

;; 循环添加一个目录下的所有 org 文件
;; (load-library "find-lisp")
;;(setq org-agenda-files (find-lisp-find-files "E:/Workspace/Work/work_note" "\.org$"))

(setq org-agenda-files (list my-work-directory (concat my-work-directory "./PhD_work")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org bullets 具体使用的 bullets 在 customize 窗口中配置
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-capture 配置
;; 默认 Capture 的内容放在 journal.org （日志）中
(setq org-default-notes-file (concat my-work-directory "journal.org"))

(setq org-capture-templates
      (quote (("j" "简单日志" entry (file+datetree (concat my-work-directory "journal.org"))
                "* %T%?\n"))))

(setq org-todo-keywords
      (quote ((sequence "TODO" "DONE")
              (sequence "CANCELLED"))))

(setq org-todo-keyword-faces
      (quote (("CANCELLED" :foreground "orange" :weight bold))))

(add-hook 'org-mode-hook (lambda () (visual-line-mode 1)))

(require 'org-dashboard)

(provide 'init-org)
