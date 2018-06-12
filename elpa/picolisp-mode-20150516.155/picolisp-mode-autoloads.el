;;; picolisp-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "picolisp-mode" "picolisp-mode.el" (0 0 0 0))
;;; Generated autoloads from picolisp-mode.el

(autoload 'picolisp-mode "picolisp-mode" "\
Major mode for PicoLisp programming. Derived from lisp-mode.

\\{picolisp-mode-map}

\(fn)" t nil)

(autoload 'picolisp-repl-mode "picolisp-mode" "\
Major mode for `pil' REPL sessions. Derived from comint-mode.

\\{picolisp-repl-mode-map}

\(fn)" t nil)

(autoload 'picolisp-repl "picolisp-mode" "\
Start a `pil' session in a new `picolisp-repl-mode' buffer.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "picolisp-mode" '("picolisp-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; picolisp-mode-autoloads.el ends here
