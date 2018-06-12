;;; outrespace-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "outrespace" "outrespace.el" (23292 46926 882615
;;;;;;  269000))
;;; Generated autoloads from outrespace.el

(autoload 'outrespace-goto-namespace-next "outrespace" "\
Move point to the next start of a valid namespace.

\(fn)" t nil)

(autoload 'outrespace-goto-namespace-previous "outrespace" "\
Move point to the prior start of a valid namespace.

\(fn)" t nil)

(autoload 'outrespace-change-enclosing-ns-name "outrespace" "\
Change the name of the enclosing namespace, if one exists.

\(fn)" t nil)

(autoload 'outrespace-delete-enclosing-ns "outrespace" "\
Delete the enclosing namespace, if one exists.
This removes the tags and delimiters, not the content.

\(fn)" t nil)

(autoload 'outrespace-jump-to-ns "outrespace" "\
Jump to a namespace in current buffer, selected by name.

\(fn)" t nil)

(autoload 'outrespace-change-ns-name "outrespace" "\
Select a namespace, then change its name.

\(fn)" t nil)

(autoload 'outrespace-delete-ns-by-name "outrespace" "\
Select a namespace, then delete it (though not its content).

\(fn)" t nil)

(autoload 'outrespace-highlight-ns-by-name "outrespace" "\
Select a namespace, then highlight it.

\(fn)" t nil)

(autoload 'outrespace-print-enclosing-ns-name "outrespace" "\
Print the closest namespace surrounding point, if any.

\(fn)" t nil)

(autoload 'outrespace-wrap-namespace-region "outrespace" "\
Surround the region (START, END) with a namespace NAME.

\(fn START END NAME)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; outrespace-autoloads.el ends here
