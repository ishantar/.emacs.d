;;; typed-clojure-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "typed-clojure-error-mode" "typed-clojure-error-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from typed-clojure-error-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "typed-clojure-error-mode" '("typed-clojure-error-mode")))

;;;***

;;;### (autoloads nil "typed-clojure-mode" "typed-clojure-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from typed-clojure-mode.el

(autoload 'typed-clojure-mode "typed-clojure-mode" "\
The official minor mode for editing Typed Clojure. Provides
namespace typechecking, error navigation, display of type data,
and annotation snippets.

If called interactively, enable Typed-Clojure mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\\{typed-clojure-mode-map}

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "typed-clojure-mode" '("typed-clojure-")))

;;;***

;;;### (autoloads nil nil ("typed-clojure-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; typed-clojure-mode-autoloads.el ends here
