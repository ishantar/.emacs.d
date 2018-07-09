;;; helm-clojuredocs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-clojuredocs" "helm-clojuredocs.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from helm-clojuredocs.el

(autoload 'helm-clojuredocs "helm-clojuredocs" "\
Preconfigured `helm' for searching in clojuredocs.org

\(fn)" t nil)

(autoload 'helm-clojuredocs-at-point "helm-clojuredocs" "\
Preconfigured `helm' for searching in clojuredocs.org with symbol at point

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-clojuredocs" '("helm-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-clojuredocs-autoloads.el ends here
