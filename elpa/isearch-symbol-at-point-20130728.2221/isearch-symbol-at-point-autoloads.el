;;; isearch-symbol-at-point-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "isearch-symbol-at-point" "isearch-symbol-at-point.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from isearch-symbol-at-point.el

(autoload 'isearch-symbol-at-point "isearch-symbol-at-point" "\
Incremental search forward with symbol under point.

  Prefixed with \\[universal-argument] will find all partial
  matches.

\(fn &optional PARTIALP)" t nil)

(autoload 'isearch-backward-symbol-at-point "isearch-symbol-at-point" "\
Incremental search backward with symbol under point.

  Prefixed with \\[universal-argument] will find all partial
  matches.

\(fn &optional PARTIALP)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "isearch-symbol-at-point" '("isearch-yank-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; isearch-symbol-at-point-autoloads.el ends here
