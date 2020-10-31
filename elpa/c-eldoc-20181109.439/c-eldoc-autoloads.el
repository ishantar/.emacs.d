;;; c-eldoc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "c-eldoc" "c-eldoc.el" (0 0 0 0))
;;; Generated autoloads from c-eldoc.el

(autoload 'call-c-eldoc-cleanup "c-eldoc" nil nil nil)

(autoload 'c-turn-on-eldoc-mode "c-eldoc" "\
Enable c-eldoc-mode" t nil)

(autoload 'c-eldoc-print-current-symbol-info "c-eldoc" "\
Returns documentation string for the current symbol." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "c-eldoc" '("c-eldoc-")))

;;;***

;;;### (autoloads nil nil ("c-eldoc-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; c-eldoc-autoloads.el ends here
