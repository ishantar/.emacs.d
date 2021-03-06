;;; build-status-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "build-status" "build-status.el" (0 0 0 0))
;;; Generated autoloads from build-status.el
 (put 'build-status-mode-line-string 'risky-local-variable t)

(autoload 'build-status-mode "build-status" "\
Monitor the build status of the buffer's project.

If called interactively, enable Build-Status mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "build-status" '("build-status-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; build-status-autoloads.el ends here
