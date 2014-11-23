;; auto-complete settings
(setq popup-dir "~/.emacs.d/popup-el/")
(add-to-list 'load-path popup-dir)
(setq ac-dir "~/.emacs.d/auto-complete/")
(add-to-list 'load-path ac-dir)
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories (concat ac-dir "dict/"))
(global-set-key "\M-/" 'ac-start)

;; ;; cl-lib
;; (setq cl-lib-dir "~/.emacs.d/cl-lib/")
;; (add-to-list 'load-path cl-lib-dir)
;; (require 'cl-lib)

;; Select by C-n/C-p
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

;; Show line and column nuber
(global-set-key "\M-n" 'linum-mode)

(setq linum-format "%4d")
(line-number-mode t)
(column-number-mode t)

;; Highlight in bracket
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)

;; Highlight color
(set-face-background 'show-paren-match-face "#500")

;; Show function name
(which-function-mode 1)

;; Tab replace by whitespaces                                                              
(setq-default indent-tabs-mode nil)

;; Tab width
(custom-set-variables '(tab-width 4))

;; Color source code                                     
(global-font-lock-mode t)

;; Not show *scrach* buffer at the first
(setq inhibit-startup-screen t)

;; Key binds
(global-set-key (kbd "C-z") 'undo)

;; backspace
(global-set-key (kbd "C-h") 'delete-backward-char)

;; goto line
(global-set-key (kbd "M-g") 'goto-line)

;; reverse C-x o
(define-key ctl-x-map "p"
  #'(lambda (arg) (interactive "p") (other-window (- arg))))
