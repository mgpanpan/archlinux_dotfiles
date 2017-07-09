;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 设置sdcv字典
;; (require 'sdcv)
;; (setq sdcv-dictionary-simple-list        ;; a simple dictionary list
;;       '(
;;         "牛津现代英汉双解词典"
;;         ))
;; (setq sdcv-dictionary-complete-list      ;; a complete dictionary list
;;       '(
;;         "牛津现代英汉双解词典"
;;         ))

;; ;; C-c+d设置为查词典的快捷键 并将结果通过showtip显示出来
;; (global-set-key (kbd "C-c d") 'sdcv-search-pointer+)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 设置 wordnut 词典 可用 但是 wordnet 的概念不太理解，且可找一找有无中文解释
(if (eq 'windows-nt system-type)
 	(progn
 	  (setq wordnut-cmd "c:/Program Files/WordNet/3.0/bin/wn.exe")
 	  (require 'wordnut)
	  ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 在线词典
(require 'youdao-dictionary)
(require 'bing-dict)

(provide 'init-dictionaries)
