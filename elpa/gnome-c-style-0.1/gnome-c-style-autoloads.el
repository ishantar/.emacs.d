;;; gnome-c-style-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gnome-c-align" "gnome-c-align.el" (0 0 0 0))
;;; Generated autoloads from gnome-c-align.el

(autoload 'gnome-c-align-arglist-at-point "gnome-c-align" "\
Reformat argument list at point, aligning argument to the right end.

\(fn &optional IDENTIFIER-START-COLUMN)" t nil)

(autoload 'gnome-c-align-set-column "gnome-c-align" "\
Set alignment column of SYMBOL.

\(fn SYMBOL)" t nil)

(autoload 'gnome-c-align-guess-optimal-columns "gnome-c-align" "\
Compute the optimal alignment rule from the declarations in BEG and END.

This sets `gnome-c-align-identifier-start-column',
`gnome-c-align-arglist-start-column', and
`gnome-c-align-arglist-identifier-start-column'.

\(fn BEG END)" t nil)

(autoload 'gnome-c-align-guess-columns "gnome-c-align" "\
Guess the existing alignment rule from the declarations in BEG and END.

This sets `gnome-c-align-identifier-start-column',
`gnome-c-align-arglist-start-column', and
`gnome-c-align-arglist-identifier-start-column'.

\(fn BEG END)" t nil)

(autoload 'gnome-c-align-decls-region "gnome-c-align" "\
Reformat function declarations in the region between BEG and END.

\(fn BEG END)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gnome-c-align" '("gnome-c-align-")))

;;;***

;;;### (autoloads nil "gnome-c-snippet" "gnome-c-snippet.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from gnome-c-snippet.el

(autoload 'gnome-c-snippet-insert-package_class "gnome-c-snippet" "\
Insert the class name before the current point.

\(fn PACKAGE CLASS)" t nil)

(autoload 'gnome-c-snippet-insert-PACKAGE_CLASS "gnome-c-snippet" "\
Insert the class name before the current point.

\(fn PACKAGE CLASS)" t nil)

(autoload 'gnome-c-snippet-insert-PackageClass "gnome-c-snippet" "\
Insert the class name (in CamelCase) before the current point.

\(fn PACKAGE CLASS)" t nil)

(autoload 'gnome-c-snippet-insert "gnome-c-snippet" "\


\(fn SNIPPET)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gnome-c-snippet" '("gnome-c-snippet-")))

;;;***

;;;### (autoloads nil "gnome-c-style" "gnome-c-style.el" (0 0 0 0))
;;; Generated autoloads from gnome-c-style.el

(autoload 'gnome-c-style-mode "gnome-c-style" "\
A minor-mode for editing GNOME-style C source code.

If called interactively, enable GNOME-C-Style mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gnome-c-style" '("gnome-c-style-mode-map")))

;;;***

;;;### (autoloads nil "gnome-c-tests" "gnome-c-tests.el" (0 0 0 0))
;;; Generated autoloads from gnome-c-tests.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gnome-c-tests" '("gnome-c-test-program-")))

;;;***

;;;### (autoloads nil nil ("gnome-c-style-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gnome-c-style-autoloads.el ends here
