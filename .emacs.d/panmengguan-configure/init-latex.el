;; LaTeX 相关设置

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CDLaTeX 模式的 TAB 有时会冲突，起码和平时用 TAB 进行缩进冲突
;; (add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; LaTeX 补全，使用company及相关的backends
(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

;; (add-to-list 'company-backends 'company-math-symbols-unicode)

;; (add-to-list 'company-backends 'company-math-symbols-latex)

(add-to-list 'company-backends 'company-latex-commands)

(add-to-list 'company-backends 'company-bibtex)

(setq company-bibtex-bibliography
      (list (concat my-work-directory "pmg_bib/panmengguan.bib")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; bibtex-completion    ivy bibtex or helm bibtex
(autoload 'ivy-bibtex "ivy-bibtex" "" t)
(autoload 'helm-bibtex "helm-bibtex" "" t)
(setq bibtex-completion-bibliography
      (list (concat my-work-directory "pmg_bib/panmengguan.bib")))

(setq bibtex-completion-library-path (list (concat my-work-directory "pdf")))

(setq bibtex-completion-notes-path (concat my-work-directory "notes.org"))

;; (setq bibtex-completion-pdf-field "file")

(setq bibtex-completion-pdf-open-function
  (lambda (fpath)
    (call-process "FoxitReader.exe" nil 0 nil fpath)))
;; 另外，在 customize 窗口中修改了 bibtex-completion-display-formats 以及 bibtex-completion-notes-template-one-file

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; reftex 最有用的命令：reftex-reference 插入交叉引用
(add-hook 'TeX-mode (reftex-mode t))
(add-hook 'org-mode (reftex-mode t))
(setq reftex-default-bibliography (list (concat my-work-directory "pmg_bib/panmengguan.bib")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-ref
(require 'org-ref)

;; see org-ref for use of these variables
(setq org-ref-bibliography-notes (concat my-work-directory "notes.org")
      org-ref-default-bibliography (list (concat my-work-directory "pmg_bib/panmengguan.bib"))
      org-ref-pdf-directory (concat my-work-directory "pdf"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ebib
(setq ebib-preload-bib-files (list (concat my-work-directory "pmg_bib/panmengguan.bib")))

;; (global-set-key "\C-ce" 'ebib)

;; (setq ebib-use-timestamp t)

;; (setq ebib-autogenerate-keys t)

;; (setq ebib-notes-use-single-file (concat my-work-directory "notes.org"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; bibtex-utils
(require 'bibtex-utils)
(setq bu-pdf-dir (concat my-work-directory "pdf/"))
(setq bu-pdf-viewer "FoxitReader.exe")
;; (global-set-key "\C-ck" 'bu-open-doc)
;; (global-set-key "\C-cj" 'ebib-ivy-insert-citation)

(provide 'init-latex)

;; 参考文献引用相关汇总：
;; 用 company + company-bibtex 后端实现输入 \cite后的自动补全
;; 用 reftex 的 C-c [ 在 LaTeX 环境下实现 \cite 的输入
;; 用 ivy-bibtex (C-c i) 实现 \cite 的输入以及更复杂的参考文献管理
;; 用 ebib 实现参考文献输入 将ebib-ivy-insert-citation 绑定为 C-c j ebib-ivy-insert-citation 必须在ebib打开的情况下才可用
