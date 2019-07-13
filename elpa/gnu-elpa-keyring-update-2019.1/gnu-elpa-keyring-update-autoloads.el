;;; gnu-elpa-keyring-update-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gnu-elpa-keyring-update" "gnu-elpa-keyring-update.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from gnu-elpa-keyring-update.el

(defvar gnu-elpa-keyring-update--keyring (let ((kr (expand-file-name "etc/gnu-elpa-keyring.gpg" (file-name-directory load-file-name)))) (if (and load-file-name (file-readable-p kr)) kr "etc/gnu-elpa-keyring.gpg")))

(autoload 'gnu-elpa-keyring-update "gnu-elpa-keyring-update" "\
Import new GNU ELPA keys (if any) into package.el's keyring." nil nil)
 (eval-after-load 'package
  `(and (bound-and-true-p package-user-dir)
        (file-directory-p package-user-dir)
        (let ((okr (expand-file-name
                    "pubring.gpg"
                    (or (bound-and-true-p package-gnupghome-dir)
                        (expand-file-name "gnupg"
                                          package-user-dir))))
              (nkr gnu-elpa-keyring-update--keyring))
          (and (file-writable-p okr)
               (file-readable-p nkr)
               (file-newer-than-file-p nkr okr)
               (gnu-elpa-keyring-update)))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gnu-elpa-keyring-update" '("gnu-elpa-keyring-update--keyring")))

;;;***

;;;### (autoloads nil nil ("gnu-elpa-keyring-update-pkg.el") (0 0
;;;;;;  0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gnu-elpa-keyring-update-autoloads.el ends here
