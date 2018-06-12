;;; chapel-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "chapel-mode" "chapel-mode.el" (0 0 0 0))
;;; Generated autoloads from chapel-mode.el

(defvar chapel-mode-syntax-table nil "\
Syntax table used in chapel-mode buffers.")
 (add-to-list 'auto-mode-alist '("\\.chpl\\'" . chapel-mode))

(defvar chapel-mode-hook nil "\
*Hook called by `chapel-mode'.")

(custom-autoload 'chapel-mode-hook "chapel-mode" t)

(autoload 'chapel-mode "chapel-mode" "\
Major mode for editing Chapel code.

To see what version of CC Mode you are running, enter `\\[c-version]'.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `chapel-mode-hook'.

Key bindings:
\\{chapel-mode-map}

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "chapel-mode" '("c-font-lock-chapel-new" "cc-imenu-chapel-generic-expression" "chapel-" "running-xemacs")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; chapel-mode-autoloads.el ends here
