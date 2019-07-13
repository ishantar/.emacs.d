;;; xterm-keybinder-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "xterm-keybinder" "xterm-keybinder.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from xterm-keybinder.el

(autoload 'xterm-keybinder-setup "xterm-keybinder" "\
Enable Emacs keybinds even in the xterm terminal Emacs." t nil)

(autoload 'urxvt-keybinder-insert "xterm-keybinder" "\
Insert urxvt setting." t nil)

(autoload 'urxvt-change-font-size "xterm-keybinder" "\
Change font size in URxvt.

OFFSET is a variable to increase/decrease the font size from
current font size.

Optional variable FONT is the font name and as the default value,
this functions uses the value that you will set in
‘urxvt-keybinder-setup’.

If you set optional ABSOLUTE-SIZE variable, this function priors
the size than OFFSET and sets the ABSOLUTE-SIZE.

\(fn OFFSET &optional FONT ABSOLUTE-SIZE)" nil nil)

(autoload 'urxvt-keybinder-setup "xterm-keybinder" "\
Setup function for URxvt.
You can also set FONT name and the SIZE.

If you set BOTH FONT and SIZE, you can use ‘text-scale-increase’
and ‘text-scale-decrease’ functions to adjust font size inside
URxvt frame.

\(fn &optional FONT SIZE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "xterm-keybinder" '("urxvt-font-" "xterm-keybinder-")))

;;;***

;;;### (autoloads nil nil ("xterm-keybinder-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; xterm-keybinder-autoloads.el ends here
