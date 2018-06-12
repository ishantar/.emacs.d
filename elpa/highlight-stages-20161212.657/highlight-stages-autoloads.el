;;; highlight-stages-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "highlight-stages" "highlight-stages.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from highlight-stages.el

(autoload 'highlight-stages-mode "highlight-stages" "\
Highlight staged (quasi-quoted) expressions

\(fn &optional ARG)" t nil)

(defvar highlight-stages-global-mode nil "\
Non-nil if Highlight-Stages-Global mode is enabled.
See the `highlight-stages-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `highlight-stages-global-mode'.")

(custom-autoload 'highlight-stages-global-mode "highlight-stages" nil)

(autoload 'highlight-stages-global-mode "highlight-stages" "\
Toggle Highlight-Stages mode in all buffers.
With prefix ARG, enable Highlight-Stages-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Highlight-Stages mode is enabled in all buffers where
`(lambda nil (highlight-stages-mode 1))' would do it.
See `highlight-stages-mode' for more information on Highlight-Stages mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "highlight-stages" '("highlight-stages-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; highlight-stages-autoloads.el ends here
