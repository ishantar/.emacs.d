;;; highlight-refontification-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "highlight-refontification" "highlight-refontification.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from highlight-refontification.el

(autoload 'highlight-refontification-mode "highlight-refontification" "\
Minor mode that highlight bad whitespace and out-of-place characters.

If called interactively, enable Highlight-Refontification mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "highlight-refontification" '("highlight-refontification-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; highlight-refontification-autoloads.el ends here
