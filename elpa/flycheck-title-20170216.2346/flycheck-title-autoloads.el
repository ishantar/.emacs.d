;;; flycheck-title-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "flycheck-title" "flycheck-title.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from flycheck-title.el

(defvar flycheck-title-mode nil "\
Non-nil if Flycheck-Title mode is enabled.
See the `flycheck-title-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `flycheck-title-mode'.")

(custom-autoload 'flycheck-title-mode "flycheck-title" nil)

(autoload 'flycheck-title-mode "flycheck-title" "\
Global minor mode for showing flycheck errors in the frame title.

If called interactively, enable Flycheck-Title mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "flycheck-title" '("flycheck-title--")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; flycheck-title-autoloads.el ends here
