;;; ede-compdb-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ede-compdb" "ede-compdb.el" (0 0 0 0))
;;; Generated autoloads from ede-compdb.el

(autoload 'ede-compdb-load-project "ede-compdb" "\
Create an instance of option `ede-compdb-project' for DIR.

\(fn DIR)" nil nil)

(autoload 'ede-ninja-load-project "ede-compdb" "\
Create an instance of option `ede-ninja-project' for DIR.

\(fn DIR)" nil nil)

(eval-after-load "ede/auto" '(ede-add-project-autoload (ede-project-autoload "compdb" :name "Compilation DB" :file 'ede-compdb :proj-file "compile_commands.json" :load-type 'ede-compdb-load-project :class-sym 'ede-compdb-project)))

(eval-after-load "ede/auto" '(ede-add-project-autoload (ede-project-autoload "ninja" :name "Ninja" :file 'ede-compdb :proj-file "build.ninja" :load-type 'ede-ninja-load-project :class-sym 'ede-ninja-project)))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ede-compdb" '("compdb-entry" "current-co" "ede-" "ff-other-file-list" "get-" "initialize-instance" "insert-compdb" "other-file-list" "parse-command-line" "project-" "set-configuration-directory")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ede-compdb-autoloads.el ends here
