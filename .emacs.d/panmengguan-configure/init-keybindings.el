;; 设置M-/作为MARK标志位，默认的是C-@来setmark，C-@不太好用
(global-set-key (kbd "M-/") 'set-mark-command)

(global-set-key (kbd "<f2>") 'open-init-file)

(global-set-key (kbd "<f11>") 'loop-alpha)

;; (global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
;; (global-set-key "\C-cb" 'org-iswitchb)

(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key "\C-cr" 'reftex-reference)

(global-set-key (kbd "C-c b") 'bing-dict-brief)

(global-set-key [f12] 'youdao-dictionary-search-at-point-tooltip)

;; (global-set-key [f12] 'wordnut-search)
;; (global-set-key [(control f12)] 'wordnut-lookup-current-word)

(global-set-key "\C-ci" 'ivy-bibtex)
(global-set-key "\C-cI" 'ivy-bibtex-with-local-bibliography)

(global-set-key "\C-ch" 'helm-bibtex)
(global-set-key "\C-cH" 'helm-bibtex-with-local-bibliography)

(provide 'init-keybindings)
