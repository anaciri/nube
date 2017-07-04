;-*- coding: utf-8 -*-

;; enabling modes
(cua-mode 1)
(show-paren-mode 1)
(hl-line-mode 1)

;; set variables
(setq compile-command "solc --optimize --bin " )

;;-------- keybinding ------------------------------
(global-set-key (kbd "C-j") 'other-window)
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "C-p") 'comint-previous-input)  
(global-set-key (kbd "C-x j") 'bookmark-jump)

;; prevent org mode to override clashing keys 
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-j") nil))

;;-------- settings ------------------------------
(setq python-shell-interpreter "/usr/local/bin/ipython")
(setq find-file-visit-truename t)      ; dont ask if to follow git link
(setq compilation-ask-about-save nil) 
(setq compilation-auto-jump-to-first-error t) 
;;---------aliases ---------------------------------
(defalias 'mbo 'menu-bar-open)
(defalias 'ci 'vc-next-action)
(defalias 'ee 'evaluate-expression)
(defalias 'eb 'evaluate-buffer)

;;FIXME: vertical for python window
;; compile window vertical
(defadvice compile (around split-horizontally activate)
  (let ((split-width-threshold 0)
	(split-height-threshold nil))
    ad-do-it))

;; org mode
(setq org-capture-templates  
      '(("l" "lam" entry (file+headline "/home/ayle/bb/nube/exec/refile.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")
                     ))

;; python dev
(setq py-install-directory "~/.emacs.d/plugins")
(setq py-shell-name "/usr/bin/ipython")
(add-to-list 'load-path "~/.emacs.d/plugins")
;;(require 'python-mode)


;; Initialize emacs server if it is not already running
;(require 'server)
;(if (not (eq t (server-running-p server-name)))
;    (server-start))

