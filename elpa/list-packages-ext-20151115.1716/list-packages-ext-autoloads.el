;;; list-packages-ext-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "list-packages-ext" "list-packages-ext.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from list-packages-ext.el

(autoload 'lpe:edit-package-notes "list-packages-ext" "\
Opens a buffer where the user can enter notes about PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'list-packages-ext-mode "list-packages-ext" "\
Some extras for the *Packages* buffer (see `list-packages').
Provides:
- package tagging
- package hiding (with the tag 'hidden'
- package filtering by tag expressions/regexp
- package annotations
\\{list-packages-ext-mode-map}

If called interactively, enable List-Packages-Ext mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'lpe:tag "list-packages-ext" "\
Applies the tags in TAGLIST to the package at the current
line, or to the packages in the active region.

When called interactively, it prompts the user for the list of
comma separated tags to apply to the package at the current line
or to the packages in the active region.

When called on a region, or on a single line with prefix argument,
the command will work in 'Modify' mode: the tags entered by the user
will be merged with the already present tags; a tag can be removed
from a package applying it in its negated form. The negation of a
tag is expressed prepending `!' to the tag,
e.g. to remove a tag 'foo', one would tag the package with '!foo'.

If calling it with no active region, or to the active region with
a prefix command, the command works in 'Set' mode: the tags
entered by the user will substitute the current tag set of the
package, or list of packages if the region is active.

\(fn TAGLIST &optional ADD)" t nil)

(autoload 'lpe:hide-package "list-packages-ext" "\
Hides a package from the package list (applying the 'hidden' tag)." t nil)

(autoload 'lpe:apply-last-tags "list-packages-ext" "\
Apply the last tags applied with `lpe:tag'." t nil)

(autoload 'lpe:star "list-packages-ext" "\
Toggles the starred tag to the current package or the packages in region if it is active." t nil)

(autoload 'lpe:show-hidden-toggle "list-packages-ext" "\
Toggles showing of hidden packages." t nil)

(autoload 'lpe:filter-by-tag-expr "list-packages-ext" "\
Filters the list of packages with FILTER-STR.
When called interactively, it prompts the user for a tag filter expression.
A tag filter like
  (tag1 AND tag2 AND NOT tag3) or tag4
is expressed as (using the default operator syntax)
  tag1,tag2,!tag3/tag4
The syntax for the operators can be controlled binding
`lpe::*tag-expr-and*', `lpe::*tag-expr-or*' and `lpe::*tag-expr-not*' 

\(fn FILTER-STR)" t nil)

(autoload 'lpe:filter-with-regex "list-packages-ext" "\
Filters the packages using regex. By default, only the packages name are searched.
To activate searching in the package summary, see `lpe:search-in-summary-toggle'.

\(fn REGEX)" t nil)

(autoload 'lpe:search-in-summary-toggle "list-packages-ext" "\
Toggles searching in package summary with `lpe:filter-with-regex'." t nil)

(autoload 'lpe:filters-history-forward "list-packages-ext" "\
Goes forward to the next search in the search history." t nil)

(autoload 'lpe:filters-history-backward "list-packages-ext" "\
Goes back to the previous search." t nil)

(autoload 'lpe:refresh "list-packages-ext" "\
Refreshes the buffer." t nil)

(autoload 'lpe::post-command-hook "list-packages-ext" nil nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "list-packages-ext" '("list-packages-ext-mode-" "lpe:")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; list-packages-ext-autoloads.el ends here
