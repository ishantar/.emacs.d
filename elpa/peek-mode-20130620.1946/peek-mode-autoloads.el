;;; peek-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "peek-mode" "peek-mode.el" (0 0 0 0))
;;; Generated autoloads from peek-mode.el

(autoload 'peek-mode "peek-mode" "\
Serves the buffer live over HTTP.

If called interactively, enable Peek mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "peek-mode" '("peek-")))

;;;***

;;;### (autoloads nil nil ("peek-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; peek-mode-autoloads.el ends here
