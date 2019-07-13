;;; morlock-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "morlock" "morlock.el" (0 0 0 0))
;;; Generated autoloads from morlock.el

(autoload 'morlock-mode "morlock" "\
Highlight more font-lock keywords.

If called interactively, enable Morlock mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(defvar global-morlock-mode nil "\
Non-nil if Global Morlock mode is enabled.
See the `global-morlock-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-morlock-mode'.")

(custom-autoload 'global-morlock-mode "morlock" nil)

(autoload 'global-morlock-mode "morlock" "\
Toggle Morlock mode in all buffers.
With prefix ARG, enable Global Morlock mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Morlock mode is enabled in all buffers where
`turn-on-morlock-mode-if-desired' would do it.
See `morlock-mode' for more information on Morlock mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "morlock" '("morlock-" "turn-on-morlock-mode-if-desired")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; morlock-autoloads.el ends here
