;; 关闭出错时的提示声
(setq visible-bell t)

;; (add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(setq make-backup-files nil)
(setq auto-save-default nil)

(recentf-mode 1)
(setq recentf-max-menu-items 10)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(provide 'init-better-defaults)
