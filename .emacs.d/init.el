(package-initialize)

(add-to-list 'load-path "~/.emacs.d/panmengguan-configure/")

(add-to-list 'custom-theme-load-path "~/.emacs.d/panmengguan-configure/themes/")

(setenv "PATH" 
        (getenv "PATH"))

(setq my-work-directory "E:/Workspace/Work/work_note/")

;; init-packages 中为从 elpa 库中下载的 package 的相关配置
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'init-org)
(require 'alpha-window)
(require 'init-latex)
(require 'init-dictionaries)

(setq custom-file (expand-file-name "panmengguan-configure/custom.el" user-emacs-directory))

(load-file custom-file)

(server-start)

