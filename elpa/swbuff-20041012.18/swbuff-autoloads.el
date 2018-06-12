;;; swbuff-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "swbuff" "swbuff.el" (0 0 0 0))
;;; Generated autoloads from swbuff.el

(autoload 'swbuff-switch-to-previous-buffer "swbuff" "\
Switch to the previous buffer in the buffer list.

\(fn)" t nil)

(autoload 'swbuff-switch-to-next-buffer "swbuff" "\
Switch to the next buffer in the buffer list.

\(fn)" t nil)

(autoload 'swbuff-kill-this-buffer "swbuff" "\
Kill the current buffer.
And update the status window if showing.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "swbuff" '("swbuff-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; swbuff-autoloads.el ends here
