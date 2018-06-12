;;; test-kitchen-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "test-kitchen" "test-kitchen.el" (0 0 0 0))
;;; Generated autoloads from test-kitchen.el

(autoload 'test-kitchen-destroy "test-kitchen" "\
Run chef exec kitchen destroy in a different buffer.

\(fn INSTANCE)" t nil)

(autoload 'test-kitchen-destroy-all "test-kitchen" "\
Run chef exec kitchen destroy in a different buffer.

\(fn)" t nil)

(autoload 'test-kitchen-list-bare "test-kitchen" "\
Run chef exec kitchen list.

\(fn)" nil nil)

(autoload 'test-kitchen-list "test-kitchen" "\
Run chef exec kitchen list in a different buffer.

\(fn)" t nil)

(autoload 'test-kitchen-test "test-kitchen" "\
Run chef exec kitchen test in a different buffer.

\(fn INSTANCE)" t nil)

(autoload 'test-kitchen-test-all "test-kitchen" "\
Run chef exec kitchen test in a different buffer.

\(fn)" t nil)

(autoload 'test-kitchen-converge "test-kitchen" "\
Run chef exec kitchen converge selected VM in a different buffer.

\(fn INSTANCE)" t nil)

(autoload 'test-kitchen-converge-all "test-kitchen" "\
Run chef exec kitchen converge in a different buffer.

\(fn)" t nil)

(autoload 'test-kitchen-verify "test-kitchen" "\
Run chef exec kitchen verify in a different buffer.

\(fn INSTANCE)" t nil)

(autoload 'test-kitchen-verify-all "test-kitchen" "\
Run chef exec kitchen verify in a different buffer.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "test-kitchen" '("test-kitchen-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; test-kitchen-autoloads.el ends here
