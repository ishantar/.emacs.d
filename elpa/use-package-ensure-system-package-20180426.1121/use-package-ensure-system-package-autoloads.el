;;; use-package-ensure-system-package-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "use-package-ensure-system-package" "use-package-ensure-system-package.el"
;;;;;;  (23285 42129 972990 415000))
;;; Generated autoloads from use-package-ensure-system-package.el

(autoload 'use-package-normalize/:ensure-system-package "use-package-ensure-system-package" "\
Turn `arg' into a list of cons-es of (`package-name' . `install-command').

\(fn NAME-SYMBOL KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:ensure-system-package "use-package-ensure-system-package" "\
Execute the handler for `:ensure-system-package' keyword in `use-package'.

\(fn NAME KEYWORD ARG REST STATE)" nil nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; use-package-ensure-system-package-autoloads.el ends here
