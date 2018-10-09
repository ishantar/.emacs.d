
(customize-set-value 'gc-cons-threshold 268435456) ;; temporary init-time value 

(custom-set-variables
  '(package-enable-at-startup 't)
  '(package-quickstart 't)
  '(package-user-dir "~/.emacs.d/elpa")
  '(package-quickstart-file "~/.emacs.d/package-quickstart.el")
  '(package-load-list '(all))
  '(sp-clojure-modes
     '('cider-repl-mode 'clojure-mode 'clojurec-mode 'clojurescript-mode 'clojurex-mode 'inf-clojure-mode 'cider-clojure-interaction-mode))
  
  '(sp-lisp-modes
     '('cider-repl-mode 'clojure-mode 'clojurec-mode 'clojurescript-mode 'clojurex-mode 'common-lisp-mode 'emacs-lisp-mode 'eshell-mode 'geiser-repl-mode 'gerbil-mode 'inf-clojure-mode 'inferior-emacs-lisp-mode 'inferior-lisp-mode 'inferior-scheme-mode 'lisp-interaction-mode 'lisp-mode 'monroe-mode 'racket-mode 'racket-repl-mode 'scheme-interaction-mode 'scheme-mode 'slime-repl-mode 'stumpwm-mode 'cider-clojure-interaction-mode))
 
 )
