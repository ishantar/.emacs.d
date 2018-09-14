;;; replace-symbol-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "replace-symbol" "replace-symbol.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from replace-symbol.el

(autoload 'replace-symbol-in-sexp "replace-symbol" "\
Replace the symbol FROM with TO in the sexp following the point.
If RECURSIVE is true, do not announce the number of replacements.

\(fn FROM TO &optional RECURSIVE)" t nil)

(autoload 'replace-symbol-in-buffer "replace-symbol" "\
Replace the symbol FROM with TO in the entire buffer.

\(fn FROM TO)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "replace-symbol" '("replace-symbol-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; replace-symbol-autoloads.el ends here
