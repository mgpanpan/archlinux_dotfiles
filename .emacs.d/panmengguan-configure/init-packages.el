(require 'cl)

(when (>= emacs-major-version 24)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; (defvar panmengguan/packages '(
;;                                ;; monokai-theme
;;                                powerline
;;                                ;; ivy
;;                                ;; counsel
;;                                ;; smartparens
;;                                ;; exec-path-from-shell
;;                                )  "Default packages")

;; (setq package-selected-packages panmengguan/packages)

;; (defun panmengguan/packages-installed-p ()
;;   (loop for pkg in panmengguan/packages
;; 	when (not (package-installed-p pkg)) do (return nil)
;; 	finally (return t)))

;; (unless (panmengguan/packages-installed-p)
;;   (message "%s" "Refreshing package database...")
;;   (package-refresh-contents)
;;   (dolist (pkg panmengguan/packages)
;;     (when (not (package-installed-p pkg))
;;       (package-install pkg))))

(provide 'init-packages)

