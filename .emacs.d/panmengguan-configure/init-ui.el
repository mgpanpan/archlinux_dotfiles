;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 设置主题
;; (load-theme 'zenburn 1)
;; (load-theme 'material-light-pmg 1)
;; (load-theme 'leuven-pmg 1)
(load-theme 'monokai 1)

;; (load-theme 'apropospriate-dark t)
;; (load-theme 'base16-tomorrow 1)
;; (load-theme 'base16-github 1)
;; (load-theme 'twilight-bright 1)

;; (load-theme 'twilight-anti-bright 1)
;; (load-theme 'dakrone-light-theme 1)
;; (load-theme 'basic 1)

;;(load-theme 'farmhouse-light 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 设置字体
;; (set-face-attribute 'default nil
;;                     :font "Courier New 12")

(set-face-attribute 'default nil
		    :font "Source Code Pro 10")

;; (set-face-attribute 'default nil
;; 		    :font "Consolas 12")

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec
                     :family "wqy-zenhei"
                     :size 12)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 对默认外观作的修改
(tool-bar-mode -1)

;; 取消滚动栏
(scroll-bar-mode -1)

;; 设置标题栏为buffer的内容
(setq frame-title-format "emacs@%b")

;; 关闭emacs启动时的画面
;; (setq inhibit-startup-message t)

;; 设置启动时的画面
;; (setq initial-buffer-choice "recentf")

;; 关闭gnus启动时的画面
;; (setq gnus-inhibit-startup-message t)

(setq-default cursor-type 'bar)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(global-hl-line-mode 1)

;; (set-face-background 'hl-line "systemhilight")

;; (global-linum-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; powerline
(require 'powerline)
(powerline-default-theme)

;; (require 'all-the-icons)
;; (all-the-icons-ivy-setup)

;; (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; (add-to-list 'load-path "/some/path/neotree")
;; (require 'neotree)
;; (global-set-key [f8] 'neotree-toggle)

;; (require 'spaceline-all-the-icons)
;; (spaceline-all-the-icons-theme)
;; (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; (require 'telephone-line)
;; (telephone-line-mode 1)
;; (setq telephone-line-primary-left-separator 'telephone-line-gradient
;;       telephone-line-secondary-left-separator 'telephone-line-nil
;;       telephone-line-primary-right-separator 'telephone-line-gradient
;;       telephone-line-secondary-right-separator 'telephone-line-nil)
;; (setq telephone-line-height 24
;;       telephone-line-evil-use-short-tag t)

(beacon-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ivy 补全
(require 'ivy)
(ivy-mode t)
(global-set-key "\C-s" 'swiper)

(require 'which-key)
(which-key-mode)

(provide 'init-ui)

