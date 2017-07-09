(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "xelatex")
 '(TeX-PDF-mode t)
 '(TeX-engine (quote xetex))
 '(asm-comment-char 35)
 '(bibtex-completion-display-formats
   (quote
    ((t . "${=key=:20} ${author:20} ${title:*} ${year:4} ${=has-pdf=:1}${=has-note=:1} ${=type=:7} ${keywords:21}"))))
 '(bibtex-completion-notes-template-one-file
   "
* TODO ${=key=}: ${title}
:PROPERTIES:
:Custom_ID: ${=key=}
:AUTHOR:    ${author}
:JOURNAL:   ${journal}
:YEAR:      ${year}
:TITLE:     ${title}
:VOLUME:    ${volume}
:PAGES:     ${pages}
:DOI:      ${doi}
:URL:       ${url}
:END:

cite:${=key=}  [[./pdf/${=key=}.pdf]]

")
 '(c-basic-offset 4)
 '(c-default-style
   (quote
    ((c-mode . "linux")
     (java-mode . "bsd")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(custom-safe-themes
   (quote
    ("ab0950f92dc5e6b667276888cb0cdbc35fd1c16f667170a62c15bd3ed5ae5c5a" default)))
 '(display-time-mode t)
 '(indent-tabs-mode nil)
 '(ivy-height 10)
 '(mdx-dictionary-python "python")
 '(org-agenda-files
   (quote
    ("e:/Workspace/Work/work_note/PhD_work/PhD_work.org" "E:/Workspace/Work/work_note/journal.org" "E:/Workspace/Work/work_note/notes.org" "E:/Workspace/Work/work_note/personal.org")))
 '(org-bullets-bullet-list (quote ("⊙" "●" "○" "■" "●" "※" "▲" "□" "〓")))
 '(org-html-mathjax-options
   (quote
    ((path "E:/Workspace/Work/work_note/MathJax-master/MathJax.js?config=TeX-MML-AM_CHTML")
     (scale "100")
     (align "center")
     (font "TeX")
     (linebreaks "false")
     (autonumber "AMS")
     (indent "0em")
     (multlinewidth "85%")
     (tagindent ".8em")
     (tagside "right"))))
 '(org-startup-indented t)
 '(package-selected-packages
   (quote
    (zenburn-theme youdao-dictionary yasnippet wordnut which-key warm-night-theme twilight-bright-theme twilight-anti-bright-theme telephone-line sdcv request powerline org-ref org-dashboard org-bullets org-board monokai-theme monokai-alt-theme material-theme magit ivy-bibtex farmhouse-theme ebib dashboard darkokai-theme dakrone-light-theme company-math company-bibtex cdlatex bing-dict bibtex-utils beacon basic-theme base16-theme auctex apropospriate-theme all-the-icons-ivy)))
 '(scheme-program-name "mit-scheme")
 '(scroll-bar-mode nil)
 '(scroll-conservatively 10000)
 '(scroll-margin 3)
 '(scroll-step 1)
 '(tab-width 4)
 '(text-mode-hook (quote (text-mode-hook-identify)))
 '(truncate-lines nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
