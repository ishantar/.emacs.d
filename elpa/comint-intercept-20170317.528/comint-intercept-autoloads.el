;;; comint-intercept-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "comint-intercept" "comint-intercept.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from comint-intercept.el

(autoload 'comint-intercept-mode "comint-intercept" "\
Intercept comint input and send it to other buffers or run some functions.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "comint-intercept" '("comint-intercept-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; comint-intercept-autoloads.el ends here
