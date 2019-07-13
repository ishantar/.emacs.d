;;; thingopt-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "thingopt" "thingopt.el" (0 0 0 0))
;;; Generated autoloads from thingopt.el

(autoload 'kill-thing "thingopt" "\


\(fn THING)" t nil)

(autoload 'copy-thing "thingopt" "\


\(fn THING)" t nil)

(autoload 'mark-thing "thingopt" "\


\(fn THING)" t nil)

(autoload 'upward-mark-thing "thingopt" "\
Marks the first type of thing in `upward-mark-thing-list' at
point.  When called successively, it marks successive types of
things in `upward-mark-thing-list'.  It is recommended to put
smaller things (e.g. word, symbol) before larger
things (e.g. list, paragraph) in `upward-mark-thing-list'.  When
this is called enough times to get to the end of the list, it
wraps back to the first type of thing." t nil)

(autoload 'upward-isearch-thing "thingopt" "\
Much like `upward-mark-thing', but adds THING to the isearch string.
This should be invoked while isearch is active.  Clobbers the current isearch string." t nil)

(autoload 'kill-region-dwim "thingopt" nil t nil)

(autoload 'kill-ring-save-dwim "thingopt" nil t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "thingopt" '("backward-" "bounds-of-up-list-at-point" "define-thing-commands" "forward-" "kill-" "list-thing" "read-thing" "reset-upward-bounds-of-thing" "string-face-p" "thing" "upward-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; thingopt-autoloads.el ends here
