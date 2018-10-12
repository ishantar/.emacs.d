;; (require 'package)


(let* ( (no-ssl (and (memq system-type '(windows-nt ms-dos))
                      (not (gnutls-available-p)) ))
        (proto (if no-ssl "http" "https")) )
     (add-to-list 'package-archives 
        (cons "melpa" (concat proto "://melpa.org/packages/")) t)
;     (add-to-list 'package-archives
;        (cons "melpa-stable" (concat proto"://stable.melpa.org/packages/")) t)
      (when  (< emacs-major-version 24)
         (add-to-list 'package-archives
            '("gnu" . (concat proto "://elpa.gnu.org/packages/"))) )  )

       ; 
 
;; (package-initialize)


(unless (directory-files "/tmp/" '() "emacs" ) (mkdir "/tmp/emacs"))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Info-breadcrumbs-depth 6)
 '(ac-auto-show-menu 0.25)
 '(ac-auto-start nil)
 '(ac-candidate-limit nil)
 '(ac-delay 0.25)
 '(ac-dictionary-directories
    '("/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/"))
 '(ac-dictionary-files
    '("/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/ada-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/c++-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/c-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/caml-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/clojure-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/clojurescript-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/coq-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/css-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/erlang-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/ess-julia-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/go-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/haskell-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/java-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/js-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/julia-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/lua-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/nim-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/objc-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/octave-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/php-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/python-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/qml-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/ruby-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/scala-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/scheme-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/sclang-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/sh-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/swift-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/tcl-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/ts-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/tuareg-mode" "/home/lk/.emacs.d/elpa/auto-complete-20170125.245/dict/verilog-mode"))
 '(ac-etags-requires 1)
 '(ac-expand-on-auto-complete t)
 '(ac-flycheck-poll-completion-end-interval 0.5)
 '(ac-modes
    '(emacs-lisp-mode lisp-mode lisp-interaction-mode slime-repl-mode nim-mode c-mode cc-mode c++-mode objc-mode swift-mode go-mode java-mode malabar-mode clojure-mode clojurescript-mode cider-repl-node scala-mode scheme-mode ocaml-mode tuareg-mode coq-mode haskell-mode agda-mode agda2-mode perl-mode cperl-mode python-mode ruby-mode lua-mode tcl-mode ecmascript-mode javascript-mode js-mode js-jsx-mode js2-mode js2-jsx-mode coffee-mode php-mode css-mode scss-mode less-css-mode elixir-mode makefile-mode sh-mode fortran-mode f90-mode ada-mode xml-mode sgml-mode web-mode ts-mode sclang-mode verilog-mode qml-mode apples-mode))
 '(ac-non-trigger-commands
    '(*table--cell-self-insert-command electric-buffer-list newline))
 '(ac-quick-help-delay 1.0)
 '(ac-stop-flymake-on-completing t)
 '(ac-trigger-commands
    '(widget-forward indent-for-tab-command insert-tab indent-relative-maybe))
 '(ac-trigger-key nil)
 '(ac-use-fuzzy t)
 '(ac-use-menu-map t)
 '(ac-use-overriding-local-map nil)
 '(ahs-face-check-include-overlay t)
 '(ahs-idle-interval 1.2)
 '(ahs-inhibit-face-list
    '(font-lock-comment-delimiter-face font-lock-comment-face font-lock-doc-face font-lock-doc-string-face font-lock-string-face font-lock-builtin-face font-lock-keyword-face font-lock-type-face font-lock-constant-face))
 '(ansi-color-faces-vector
    [default default default italic underline success warning error])
 '(ansi-color-for-comint-mode t)
 '(ansi-color-names-vector
    ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(async-bytecomp-package-mode t)
 '(auto-compile-on-save-mode nil)
 '(backup-directory-alist '(("." . "~/.emacs.d/auto-backup-list/")))
 '(baud-rate 38400)
 '(beacon-blink-when-focused t)
 '(beacon-lighter "")
 '(beacon-mode t)
 '(blink-cursor-delay 0.45)
 '(blink-cursor-interval 0.45)
 '(buffer-face-mode-face 'fixed-pitch)
 '(c-backslash-column 62)
 '(c-backslash-max-column 92)
 '(c-basic-offset 3)
 '(c-block-comment-prefix 'set-from-style)
 '(c-default-style
    '((c-mode . "linux")
       (java-mode . "java")
       (awk-mode . "awk")
       (other . "gnu")))
 '(c-font-lock-extra-types
    '("\\sw+_t" "bool" "complex" "imaginary" "FILE" "lconv" "tm" "va_list" "jmp_buf" "Lisp_Object" "\"\\\\<\\\\(\\\\(?:u\\\\|\\\\)int\\\\(?:8\\\\|16\\\\|32\\\\|64\\\\)_t\\\\)\\\\>\""))
 '(c-macro-shrink-window-flag t)
 '(c-max-one-liner-length 102)
 '(c-mode-common-hook nil)
 '(c-mode-hook
    '(macrostep-c-mode-hook semantic-default-c-setup irony-mode irony-eldoc flycheck-clang-analyzer-setup flycheck-cstyle-setup flycheck-irony-setup cwarn-mode ac-etags-setup ac-etags-ac-setup ac-setup c-turn-on-eldoc-mode highlight-operators-mode) t)
 '(c-tab-always-indent nil)
 '(cargo-process--command-flags "+stable")
 '(cargo-process--enable-rust-backtrace 1)
 '(ccls-member-hierarchy-qualified t)
 '(ccls-sem-highlight-method 'overlay)
 '(checkdoc-autofix-flag 'query)
 '(checkdoc-force-docstrings-flag nil)
 '(cider-allow-jack-in-without-project 'warn)
 '(cider-auto-mode 't)
 '(cider-auto-select-error-buffer t)
 '(cider-auto-test-mode nil)
 '(cider-clojure-cli-global-options " -R:repl ")
 '(cider-comment-postfix "  ;; ")
 '(cider-comment-prefix "  ;;")
 '(cider-connected-hook
    '(cljr--init-middleware flycheck-clojure-setup ac-cider-setup ac-capf-setup cider-enlighten-mode))
 '(cider-debug-display-locals t)
 '(cider-default-repl-command "clojure")
 '(cider-eldoc-display-context-dependent-info t)
 '(cider-eldoc-max-class-names-to-display 5)
 '(cider-eldoc-ns-function 'cider-abbreviate-ns)
 '(cider-eval-result-duration 5)
 '(cider-eval-result-prefix " ~>  ")
 '(cider-font-lock-dynamically 't)
 '(cider-font-lock-max-length nil)
 '(cider-jack-in-auto-inject-clojure "1.9.0")
 '(cider-jack-in-default "clojure")
 '(cider-jdk-src-paths '("/usr/lib/jvm/java-10-openjdk/"))
 '(cider-preferred-build-tool nil)
 '(cider-repl-history-highlight-current-entry t)
 '(cider-repl-history-size 4096)
 '(cider-repl-pop-to-buffer-on-connect 'display-only)
 '(cider-repl-result-prefix "------------------------
 ~>  ")
 '(cider-repl-scroll-on-output nil)
 '(cider-repl-use-clojure-font-lock t)
 '(cider-repl-use-pretty-printing t)
 '(cider-result-use-clojure-font-lock t)
 '(cider-scratch-initial-message
    ";; This buffer is for Clojure experiments and evaluation.
;; Press C-j to evaluate the last expression.

")
 '(cider-use-overlays nil)
 '(clojure-build-tool-files
    '("project.clj" "build.boot" "build.gradle" "deps.edn" "shadow-cljs.edn" "tools.deps" "tools.deps.alpha"))
 '(clojure-comment-regexp clojure--comment-macro-regexp)
 '(clojure-docstring-fill-column 55)
 '(column-number-mode t)
 '(comint-completion-autolist t)
 '(comint-prompt-read-only t)
 '(comint-scroll-show-maximum-output nil)
 '(comint-terminfo-terminal "eterm-color")
 '(comint-use-prompt-regexp nil)
 '(company-auto-complete nil)
 '(company-auto-complete-chars '(32 95 40))
 '(company-begin-commands t)
 '(company-c-headers-path-user '(".."))
 '(company-clang-executable "clang")
 '(company-cmake-executable "/usr/bin/cmake")
 '(company-dabbrev-code-everywhere t)
 '(company-dabbrev-minimum-length 2)
 '(company-idle-delay 0.25)
 '(company-lighter-base "company")
 '(company-minimum-prefix-length 1)
 '(company-posframe-mode t nil (company-posframe))
 '(company-require-match nil)
 '(company-show-numbers t)
 '(company-statistics-mode t)
 '(company-tooltip-idle-delay 0.25)
 '(completion-styles '(basic partial-completion emacs22 substring))
 '(completions-merging-modes '(lisp c emacs-lisp))
 '(confirm-kill-emacs 'y-or-n-p)
 '(cua-mode t nil (cua-base))
 '(cua-normal-cursor-color "light grey")
 '(cursor-in-non-selected-windows 'hollow)
 '(custom-raised-buttons t)
 '(custom-safe-themes
    '("147cae96a3477db25d2dfaaabbaded8fc20086f55b35af6ab91cb66240a3c62d" default))
 '(dash-enable-fontlock t)
 '(default-frame-alist '((left-fringe . 8) (right-fringe . 4)))
 '(dired-hide-details-hide-information-lines nil)
 '(dired-hide-details-hide-symlink-targets nil)
 '(dired-listing-switches "-alh")
 '(dired-mode-hook '(visual-line-mode toggle-truncate-lines))
 '(display-line-numbers t)
 '(display-line-numbers-width 3)
 '(dynamic-completion-mode t)
 '(eldoc-echo-area-use-multiline-p t)
 '(eldoc-idle-delay 0.25)
 '(eldoc-in-minibuffer-mode t)
 '(eldoc-in-minibuffer-mode-lighter " :eld")
 '(eldoc-in-minibuffer-own-frame-p nil)
 '(eldoc-in-minibuffer-show-fn 'eldoc-show-in-mode-line)
 '(eldoc-minor-mode-string " :eld")
 '(eldoc-mode-line-stop-rolling-on-input nil)
 '(eldoc-show-in-mode-line-delay 15)
 '(electric-indent-mode nil)
 '(electric-pair-preserve-balance nil)
 '(emacs-lisp-mode-hook
    '(semantic-default-elisp-setup checkdoc-minor-mode edebug-x-mode))
 '(erc-insert-pre-hook '(0))
 '(erc-networks-mode nil)
 '(eterm-256color-disable-bold nil)
 '(eval-expr-error-message-delay 18)
 '(eval-expr-print-length 18)
 '(eval-expr-print-level 6)
 '(eval-expr-use-echo-area-or-buffer t)
 '(explicit-shell-file-name nil)
 '(fci-rule-color "#073642")
 '(flycheck-c/c++-clang-tidy-executable "\"clang-tidy\"")
 '(flycheck-cargo-check-args '("+stable"))
 '(flycheck-checkers
    '(c/c++-clang-tidy c/c++-clang c/c++-gcc c/c++-cppcheck irony clang-analyzer cstyle llvm-llc nil emacs-lisp clojure-cider-eastwood clojure-cider-kibit clojure-cider-typed rust-cargo rust rust-clippy rustic-clippy cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint css-stylelint cwl d-dmd dockerfile-hadolint fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck go-unconvert go-megacheck groovy haml handlebars haskell-stack-ghc haskell-ghc haskell-hlint html-tidy javascript-eslint javascript-jshint javascript-standard json-jsonlint json-python-json jsonnet less less-stylelint lua-luacheck lua markdown-markdownlint-cli markdown-mdl nix perl perl-perlcritic php php-phpmd php-phpcs processing proselint protobuf-protoc pug puppet-parser puppet-lint python-flake8 python-pylint python-pycompile python-mypy r-lintr racket rpm-rpmlint rst-sphinx rst ruby-rubocop ruby-reek ruby-rubylint ruby ruby-jruby scala scala-scalastyle scheme-chicken scss-lint scss-stylelint sass/scss-sass-lint sass scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim slim-lint sql-sqlint systemd-analyze tcl-nagelfar tex-chktex tex-lacheck texinfo typescript-tslint verilog-verilator vhdl-ghdl xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby asciidoc asciidoctor ada-gna))
 '(flycheck-clang-tidy "nil")
 '(flycheck-clang-warnings '("all" "extra" "padded"))
 '(flycheck-color-mode-line-face-to-color 'mode-line)
 '(flycheck-cppcheck-checks '("all"))
 '(flycheck-cstyle-config nil)
 '(flycheck-disabled-checkers '(c/c++-clang-tidy))
 '(flycheck-display-errors-delay 0.5)
 '(flycheck-display-errors-function 'flycheck-display-error-messages-unless-error-list)
 '(flycheck-emacs-lisp-initialize-packages 'auto)
 '(flycheck-emacs-lisp-load-path 'inherit)
 '(flycheck-idle-change-delay 1)
 '(flycheck-inline-mode t nil (flycheck-inline))
 '(flycheck-mode-hook
    '(rustic-flycheck-setup flycheck-clang-analyzer-setup flycheck-clang-tidy-setup flycheck-irony-setup flycheck-cstyle-setup flycheck-clojure-setup flycheck-color-mode-line-mode flycheck-inline-mode))
 '(flycheck-mode-line-prefix "FlC")
 '(flycheck-pos-tip-mode t)
 '(flycheck-rust-args '("+stable"))
 '(flycheck-rust-clippy-executable nil)
 '(flycheck-rustic-clippy-executable nil)
 '(flymake-error-bitmap '(hollow-right-triangle compilation-error))
 '(flymake-fringe-indicator-position 'left-fringe)
 '(flymake-note-bitmap '(flymake-double-exclamation-mark flycheck-error-list-info))
 '(flymake-proc-compilation-prevents-syntax-check t)
 '(flymake-warning-bitmap '(hollow-right-triangle compilation-warning))
 '(fringe-mode nil nil (fringe))
 '(garbage-collection-messages nil)
 '(gc-cons-percentage 0.28)
 '(generic-extras-enable-list
    '(alias-generic-mode apache-conf-generic-mode apache-log-generic-mode bat-generic-mode etc-fstab-generic-mode etc-modules-conf-generic-mode etc-passwd-generic-mode etc-services-generic-mode etc-sudoers-generic-mode fvwm-generic-mode hosts-generic-mode inetd-conf-generic-mode inf-generic-mode ini-generic-mode java-manifest-generic-mode java-properties-generic-mode javascript-generic-mode mailagent-rules-generic-mode mailrc-generic-mode named-boot-generic-mode named-database-generic-mode prototype-generic-mode rc-generic-mode resolve-conf-generic-mode samba-generic-mode show-tabs-generic-mode vrml-generic-mode x-resource-generic-mode xmodmap-generic-mode))
 '(global-auto-complete-mode t)
 '(global-company-mode t)
 '(global-eldoc-mode t)
 '(global-flycheck-mode t)
 '(global-hl-line-mode t)
 '(global-hl-line-sticky-flag t)
 '(global-paren-face-mode t)
 '(global-semantic-decoration-mode nil)
 '(global-semantic-highlight-edits-mode nil)
 '(global-semantic-highlight-func-mode t)
 '(global-semantic-idle-breadcrumbs-mode nil nil (semantic/idle))
 '(global-semantic-idle-completions-mode t nil (semantic/idle))
 '(global-semantic-idle-local-symbol-highlight-mode nil nil (semantic/idle))
 '(global-semantic-idle-scheduler-mode t)
 '(global-semantic-idle-summary-mode t)
 '(global-semantic-mru-bookmark-mode t)
 '(global-semantic-stickyfunc-mode nil)
 '(global-semanticdb-minor-mode t)
 '(global-visual-line-mode t)
 '(gnus-init-file "~/.emacs.d/.gnus")
 '(gnus-secondary-select-methods '((nntp "news.gnus.org")))
 '(gnus-select-method '(nntp "news.gnus.org"))
 '(gnus-startup-file "~/.emacs.d/.newsrc.gnus")
 '(highlight-operators-regexp "\\([#!%&*+./:=<>?|~^-]\\)")
 '(hl-line-face 'hl-line)
 '(hl-line-sticky-flag t)
 '(ielm-mode-hook nil)
 '(indent-tabs-mode nil)
 '(inf-clojure-generic-cmd "clojure -r -R:repl")
 '(inf-clojure-project-type 'nil)
 '(inf-clojure-source-modes '(clojure-mode cider-mode))
 '(initial-buffer-choice t)
 '(initial-frame-alist '((fullscreen . maximized)))
 '(inline-docs-border-symbol 32)
 '(inline-docs-indicator-symbol ":/")
 '(inline-docs-prefix-symbol 32)
 '(irony-completion-trigger-commands
    '(indent-relative-maybe newline-and-indent insert-tab indent-for-tab-command ac-expand auto-complete))
 '(irony-eldoc-strip-underscores nil)
 '(irony-eldoc-use-unicode t)
 '(irony-lang-compile-option-alist
    '((c-mode . "c")
       (c++-mode . "c++")
       (objc-mode . "objective-c")))
 '(irony-lighter " irony")
 '(irony-server-build-dir "/tmp/emacs/irony-server")
 '(irony-server-install-prefix "~/bin/")
 '(irony-server-source-dir
    (funcall
      #'(lambda nil
          (concat
            (file-name-directory
              (find-library-name "irony.el"))
            "server"))))
 '(irony-supported-major-modes '(c-mode c++-mode objc-mode))
 '(line-number-display-limit-width 14)
 '(line-spacing 0.11)
 '(linum-format "%4d")
 '(lisp-body-indent 3)
 '(lisp-extra-font-lock-global-mode t)
 '(lisp-extra-font-lock-modes '(emacs-lisp-mode lisp-mode lisp-interaction-mode))
 '(lisp-indent-offset 2)
 '(lisp-interaction-mode-hook '(checkdoc-minor-mode edebug-x-mode))
 '(lisp-mode-hook '(semantic-default-elisp-setup cl-format-font-lock-mode))
 '(load-prefer-newer t)
 '(lsp-after-initialize-hook
    '(lsp-rust--set-configuration lsp-rust-set-config rust-lsp-set-configuration rustic-lsp-set-config))
 '(lsp-print-io t)
 '(lsp-project-whitelist
    '("^/home/lk/self/projects/lang_rust/tut/libtut/$" "^/home/lk/self/projects/\\([^/]\\|/.[^\\/\\.]\\|/[^.]\\)*"))
 '(lsp-rust-rls-command '("rustup" "run" "stable" "rls"))
 '(lsp-ui-doc-header t)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-max-height 25)
 '(lsp-ui-doc-max-width 95)
 '(lsp-ui-doc-position 'bottom)
 '(lsp-ui-doc-use-childframe t)
 '(lsp-ui-flycheck-live-reporting t)
 '(lsp-ui-imenu-enable nil)
 '(lsp-ui-imenu-kind-position 'left)
 '(lsp-ui-peek-enable nil)
 '(lsp-ui-peek-list-width 70)
 '(lsp-ui-sideline-delay 1.5)
 '(lsp-ui-sideline-enable t)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lsp-ui-sideline-show-code-actions t)
 '(lsp-ui-sideline-show-symbol nil)
 '(lsp-ui-sideline-update-mode 'line)
 '(lv-use-separator t)
 '(magit-auto-revert-mode nil)
 '(max-mini-window-height 0.7)
 '(mc/edit-lines-empty-lines 'ignore)
 '(minibuffer-auto-raise t)
 '(minibuffer-frame-alist '((width . 80) (height . 5)))
 '(mm-external-terminal-program "eterm-color")
 '(mml-secure-openpgp-always-trust nil)
 '(normal-erase-is-backspace t)
 '(overflow-newline-into-fringe t)
 '(overline-margin 0)
 '(package-check-signature 'allow-unsigned)
 '(package-enable-at-startup 't)
 '(package-hidden-regexps
    '("\\(.\\+available[^-]\\)" "\\(.\\+available[^-]\\+\\)" "available\\t" "' available '"))
 '(package-load-list '(all))
 '(package-pinned-packages '((multiple-cursors . "melpa")))
 '(package-quickstart 't)
 '(package-quickstart-file "~/.emacs.d/package-quickstart.el")
 '(package-selected-packages
    '(company-flx flx flx-ido flx-isearch fuzzy fn minimap flymake-gradle flymake-racket ac-racer ac-rtags anaphora auto-complete-exuberant-ctags avy-flycheck closure-lint-mode cmake-font-lock cmake-ide cmake-mode company-posframe company-racer company-rtags concurrent disaster el-get el-init el-init-viewer flycheck-popup-tip flycheck-rtags font-lock-profiler ggtags helm-c-yasnippet helm-cider helm-cider-history helm-codesearch helm-company helm-cscope helm-etags-plus helm-flycheck helm-flymake helm-frame helm-gtags helm-mode-manager helm-proc helm-rtags helm-xref isearch-symbol-at-point java-imports javadoc-lookup malinka nasm-mode nov pdf-tools peek-mode restart-emacs rtags sequences strie thingopt x509-mode x86-lookup xcscope ccls cquery ob-rust eglot yasnippet-snippets flycheck-ycmd ac-etags android-mode company-ycm company-ycmd cpputils-cmake datomic-snippets eldoc-eval elein cmake-project demangle-mode flymake-google-cpplint gnome-c-style ycm company-irony-c-headers company-irony irony-eldoc flycheck-irony company-lsp replace-pairs replace-symbol sayid sed-mode sexp-move slime slime-company smart-jump smartscan symbol-overlay syntactic-close tab-jump-out undo-tree yasnippet-classic-snippets flycheck-pos-tip flycheck-posframe discover-clj-refactor sotclojure walkclj lisp-extra-font-lock jdecomp lsp-clangd lsp-ui lsp-rust lsp-mode cargo flycheck-rust flymake-rust racer rust-mode rust-playground rustic trie srefactor flycheck-joker cider clj-refactor cljr-helm cljsbuild-mode clomacs ejc-sql el-autoyas helm-clojuredocs parinfer parseclj typed-clojure-mode mc-extras ac-cider cider-decompile cider-eval-sexp-fu cider-spy evalator-clojure javap-mode nrepl-eval-sexp-fu cider-hydra clojars clojure-cheatsheet clojure-quick-repls flycheck-clojure nrepl-sync monroe eterm-256color align-cljlet clojure-mode clojure-mode-extra-font-locking clojure-snippets inf-clojure foreign-regexp unkillable-scratch visual-regexp visual-regexp-steroids delim-kill company-math company-statistics counsel-etags ac-capf auto-minor-mode beacon better-shell readline-complete repl-toggle shell-command ssh ssh-agency ssh-config-mode ssh-tunnels test-simple undercover undohist yafolding ac-c-headers build-helper build-status diffview flycheck flycheck-swiftlint flymake-shell function-args git git-attr git-auto-commit-mode git-command git-commit git-dwim git-io git-lens git-link git-messenger git-msg-prefix git-timemachine git-wip-timemachine gitconfig gitconfig-mode gited ido-at-point ipretty ivy-dired-history json-mode makefile-executor math-symbol-lists math-symbols modern-cpp-font-lock package-safe-delete pcmpl-args pcmpl-git popup-complete company-c-headers company window-layout window-purpose vkill with-simulated-input xterm-frobs xterm-title paren-face scheme-complete shell-switcher shell-toggle signal smart-comment smart-compile smart-cursor-color smart-forward snippet sotlisp strace-mode stream string-edit sudo-edit sudo-ext tco iedit list-packages-ext macro-math macrostep manage-minor-mode maxframe mic-paren minimal-session-saver mmt es-lib eval-expr eval-in-repl eval-sexp-fu heap highlight-defined highlight-escape-sequences highlight-function-calls highlight-operators highlight-parentheses highlight-quoted highlight-refontification highlight-stages highlight-symbol highlight-thing highlight-unique-symbol hippie-exp-ext hippie-namespace ctable ctags-update dash-functional db discover discover-my-major dr-racket-like-unicode eacl ecb ede-compdb edebug-x eide el-sprunge elf-mode elisp-lint elisp-sandbox elmacro auto-compile auto-complete-chunk auto-highlight-symbol auto-shell-command autodisass-llvm-bitcode bshell c-eldoc cd-compile cedit cff chapel-mode charmap cl-format cl-generic cl-lib cl-lib-highlight cl-print codebug codesearch comint-intercept commenter common-lisp-snippets auto-complete-c-headers google-c-style opencl-mode preproc-font-lock basic-c-compile flycheck-pkg-config flycheck-tip flymake-cursor ivy-hydra language-detection mark-multiple scheme-here term+ term+mux term-manager test-c test-case-mode tree-mode xterm-color xterm-keybinder xtest quack racket-mode golden-ratio-scroll-screen font-lock-studio font-lock+ flyparens flymake-cppcheck flycheck-inline flycheck-cstyle flycheck-color-mode-line flycheck-clangcheck flycheck-clang-tidy flycheck-clang-analyzer flycheck-checkbashisms clang-format auto-complete-clang-async auto-complete-clang ac-clang))
 '(package-user-dir "~/.emacs.d/elpa")
 '(paren-face-modes
    '(lisp-mode emacs-lisp-mode lisp-interaction-mode ielm-mode scheme-mode inferior-scheme-mode clojure-mode cider-repl-mode nrepl-mode arc-mode inferior-arc-mode c-mode rust-mode rustic-mode))
 '(paren-face-regexp "[][(){}]")
 '(proced-after-send-signal-hook '(proced-revert))
 '(proced-tree-flag t)
 '(prog-mode-hook
    '(auto-complete-mode flycheck-mode yas-minor-mode symbol-overlay-mode paren-face-mode))
 '(quick-peek-position 'above)
 '(rtags-display-summary-as-tooltip t)
 '(rust-always-locate-project-on-open t)
 '(rustic-always-locate-project-on-open t)
 '(rustic-cargo-arguments '("+stable"))
 '(rustic-compilation-warning-face '((t (:inherit (warning)))))
 '(rustic-compile-backtrace "")
 '(rustic-format-on-save nil)
 '(rustic-indent-where-clause t)
 '(rustic-rls-pkg 'lsp-mode)
 '(save-completions-file-name "~/.emacs.d/completions")
 '(save-completions-flag nil)
 '(save-completions-retention-time 128)
 '(scalable-fonts-allowed t)
 '(scheme-program-name "racket")
 '(scheme-source-modes '(scheme-mode racket-mode racket-repl))
 '(semantic-analyze-summary-function 'semantic-format-tag-summarize-with-file)
 '(semantic-c-dependency-system-include-path '("/usr/include" "/usr/local/include"))
 '(semantic-complete-inline-analyzer-displayor-class 'semantic-displayor-ghost)
 '(semantic-complete-inline-analyzer-idle-displayor-class 'semantic-displayor-ghost)
 '(semantic-completion-displayor-format-tag-function 'semantic-format-tag-summarize-with-file)
 '(semantic-decoration-styles
    '(("semantic-decoration-on-includes")
       ("semantic-decoration-on-protected-members")
       ("semantic-decoration-on-private-members")
       ("semantic-tag-boundary" . t)))
 '(semantic-default-submodes
    '(global-semantic-idle-completions-mode global-semantic-idle-scheduler-mode global-semanticdb-minor-mode global-semantic-idle-summary-mode global-semantic-mru-bookmark-mode global-cedet-m3-minor-mode global-semantic-highlight-edits-mode))
 '(semantic-displayor-tooltip-mode 'verbose)
 '(semantic-elisp-store-documentation-in-tag t)
 '(semantic-ia-completion-format-tag-function 'semantic-format-tag-summarize-with-file)
 '(semantic-ia-completion-menu-format-tag-function 'semantic-format-tag-summarize-with-file)
 '(semantic-idle-breadcrumbs-format-tag-function 'semantic-format-tag-summarize-with-file)
 '(semantic-idle-breadcrumbs-format-tag-list-function 'semantic-idle-breadcrumbs--format-innermost-first)
 '(semantic-idle-breadcrumbs-header-line-prefix ":   ")
 '(semantic-idle-scheduler-idle-time 1)
 '(semantic-idle-scheduler-verbose-flag nil)
 '(semantic-idle-scheduler-work-idle-time 20)
 '(semantic-idle-summary-function 'semantic-format-tag-summarize-with-file)
 '(semantic-idle-truncate-long-summaries nil)
 '(semantic-idle-work-parse-neighboring-files-flag nil)
 '(semantic-idle-work-update-headers-flag t)
 '(semantic-imenu-auto-rebuild-directory-indexes t)
 '(semantic-imenu-summary-function 'semantic-format-tag-summarize-with-file)
 '(semantic-lex-debug-analyzers t)
 '(semantic-lex-spp-use-headers-flag t)
 '(semantic-mode t)
 '(semantic-mode-line-prefix "S." nil (semantic/util-modes))
 '(semantic-new-buffer-setup-functions
    '((c-mode . semantic-default-c-setup)
       (c++-mode . semantic-default-c-setup)
       (emacs-lisp-mode . semantic-default-elisp-setup)
       (lisp-interaction-mode . semantic-default-elisp-setup)
       (html-mode . semantic-default-html-setup)
       (java-mode . wisent-java-default-setup)
       (js-mode . wisent-javascript-setup-parser)
       (python-mode . wisent-python-default-setup)
       (scheme-mode . semantic-default-scheme-setup)
       (srecode-template-mode . srecode-template-setup-parser)
       (texinfo-mode . semantic-default-texi-setup)
       (makefile-automake-mode . semantic-default-make-setup)
       (makefile-gmake-mode . semantic-default-make-setup)
       (makefile-makepp-mode . semantic-default-make-setup)
       (makefile-bsdmake-mode . semantic-default-make-setup)
       (makefile-imake-mode . semantic-default-make-setup)
       (makefile-mode . semantic-default-make-setup)))
 '(semantic-sb-button-format-tag-function 'semantic-format-tag-summarize-with-file)
 '(semantic-sb-info-format-tag-function 'semantic-format-tag-summarize-with-file)
 '(semantic-stickyfunc-indent-string "\"~ \"")
 '(semantic-stickyfunc-show-only-functions-p nil)
 '(semantic-symref-auto-expand-results t)
 '(semantic-symref-results-summary-function 'semantic-format-tag-summarize-with-file)
 '(semantic-update-mode-line nil nil (semantic/util-modes))
 '(semantic-which-function-use-color t)
 '(semanticdb-find-default-throttle '(local project unloaded system))
 '(senator-step-at-tag-classes '(nil))
 '(shell-prompt-pattern "'^.* [$#] '")
 '(shell-switcher-ansi-term-shell "/bin/bash")
 '(shell-switcher-mode t)
 '(shell-switcher-new-shell-function 'shell-switcher-make-ansi-term)
 '(show-paren-delay 0.06)
 '(show-paren-mode t)
 '(show-paren-style 'mixed)
 '(show-paren-when-point-in-periphery t)
 '(show-paren-when-point-inside-paren t)
 '(smart-cursor-color-mode t nil (smart-cursor-color))
 '(sp-clojure-modes
    '(cider-repl-mode clojure-mode clojurec-mode clojurescript-mode clojurex-mode inf-clojure-mode cider-clojure-interaction-mode))
 '(sp-lisp-modes
    '(cider-repl-mode clojure-mode clojurec-mode clojurescript-mode clojurex-mode common-lisp-mode emacs-lisp-mode eshell-mode geiser-repl-mode gerbil-mode inf-clojure-mode inferior-emacs-lisp-mode inferior-lisp-mode inferior-scheme-mode lisp-interaction-mode lisp-mode monroe-mode racket-mode racket-repl-mode scheme-interaction-mode scheme-mode slime-repl-mode stumpwm-mode cider-clojure-interaction-mode))
 '(tab-always-indent 'nil)
 '(tab-width 4)
 '(temp-buffer-resize-mode t)
 '(temporary-file-directory "/tmp/emacs/")
 '(term-buffer-maximum-size 8192)
 '(term-char-mode-point-at-process-mark t)
 '(term-default-bg-color nil)
 '(term-file-prefix nil)
 '(term-mode-hook nil)
 '(term-suppress-hard-newline nil)
 '(text-scale-mode-step 1.0)
 '(tls-checktrust 'ask)
 '(tool-bar-mode nil)
 '(tooltip-resize-echo-area t)
 '(tramp-terminal-prompt-regexp "\\(^.[0-9].* [$#] \\)")
 '(tramp-terminal-type "eterm-color")
 '(underline-minimum-offset 4)
 '(unkillable-scratch t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
    '((20 . "#dc322f")
       (40 . "#cb4b16")
       (60 . "#b58900")
       (80 . "#859900")
       (100 . "#2aa198")
       (120 . "#268bd2")
       (140 . "#d33682")
       (160 . "#6c71c4")
       (180 . "#dc322f")
       (200 . "#cb4b16")
       (220 . "#b58900")
       (240 . "#859900")
       (260 . "#2aa198")
       (280 . "#268bd2")
       (300 . "#d33682")
       (320 . "#6c71c4")
       (340 . "#dc322f")
       (360 . "#cb4b16")))
 '(vc-annotate-very-old-color nil)
 '(visible-bell t)
 '(widget-menu-minibuffer-flag nil)
 '(wisent-parse-verbose-flag t)
 '(x-use-underline-position-properties nil)
 '(ycmd-idle-change-delay 0.5)
 '(ycmd-mode-line-prefix "ycm")
 '(ycmd-parse-conditions '(save new-line idle-change mode-enabled buffer-focus))
 '(ycmd-rust-src-path
    "~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/")
 '(ycmd-startup-timeout 7))



;;(with-eval-after-load 'company
;;  (company-flx-mode +1))

(load-theme 'local-faces)



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-template-field ((t (:background "#305e5b" :foreground "#262e1b"))))
 '(company-tooltip ((t (:background "#407b7b" :foreground "#222a19")))))





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;  window adjustment


(defun lk-windowsize     (HORIZONTAL?  TOP/LEFT?  AMOUNT)
  "Resizes the window of the current buffer by moving one of its edges.

    If HORIZONTAL? evaluates to true, a horizontal edge will be chosen.
    If TOP/LEFT? evaluates to true, the appropriate edge is selected.
    If the above specify a frame border, the command wraps to the window's opposite edge.

    AMOUNT specifies the movement distance (in lines/columns).  Positive values specify downard/rightward motion, and negative values specify leftward/upward motion."
 (interactive)
    (adjust-window-trailing-edge
         (window-in-direction
                 (or  (and  HORIZONTAL? 'left) 'above)
                 (and  TOP/LEFT? (window-in-direction
                                   (or  (and HORIZONTAL? 'right) 'below) )) )
         AMOUNT  HORIZONTAL? ) )


(defun winlk-top-up  (&optional DISTANCE)
  (interactive "P")
  (lk-windowsize  'nil  'nil  (* '-1 (or DISTANCE 1)) ))
 ;
(defun winlk-top-down  (&optional DISTANCE)
  (interactive "P")
  (lk-windowsize  'nil  'nil  (or DISTANCE 1) ))
 ;
(defun winlk-bottom-up  (&optional DISTANCE)
  (interactive "P")
  (lk-windowsize  'nil  't  (* '-1 (or DISTANCE 1)) ))
 ;
(defun winlk-bottom-down  (&optional DISTANCE)
  (interactive "P")
  (lk-windowsize  'nil  't  (or DISTANCE 1)) )
 ;
(defun winlk-left-out  (&optional DISTANCE)
  (interactive "P")
  (lk-windowsize  't  'nil  (* '-1 (or DISTANCE 1)) ))
 ;
(defun winlk-left-in  (&optional DISTANCE)
  (interactive "P")
  (lk-windowsize  't  'nil  (or DISTANCE 1)) )
 ;
(defun winlk-right-out  (&optional DISTANCE)
  (interactive "P")
  (lk-windowsize  't  't  (or DISTANCE 1) ))
 ;
(defun winlk-right-in  (&optional DISTANCE)
  (interactive "P")
  (lk-windowsize  't  't  (* '-1 (or DISTANCE 1)) ))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;  ghetto mode management

(defun clj-minor-modes ()
 (interactive)
   (mapc 'funcall 
           '(ac-cider-setup
              cider-eldoc-setup
              clojure-font-lock-setup
              clojure-paredit-setup
              flycheck-clojure-setup
              cider-mode)))


(defun c-minor-modes () 
 (interactive)
    (mapc 'funcall 
           '(cwarn-mode 
             irony-mode
             irony-eldoc
             flycheck-clang-analyzer-setup 
             flycheck-cstyle-setup 
             flycheck-irony-setup 
             ac-etags-setup 
             ac-etags-ac-setup
             ac-setup
             c-turn-on-eldoc-mode))) 

(defun rustic-hook-manual () 
  (interactive)
  (mapc 'funcall '(racer-mode cargo-minor-mode lsp-mode lsp-rust-enable lsp-ui-mode lsp-ui-sideline-mode lsp-ui-doc-mode rustic-flycheck-setup flycheck-rust-setup flycheck-mode flymake-mode symbol-overlay-mode)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ; compiled-init automation 

(defun compile-init ()
  (interactive)
  (byte-compile-file "~/.emacs.d/init.el"))

(add-hook 'kill-emacs-hook 'compile-init)

(defalias 'λ 'lambda)
;(fset 'λ (symbol-function 'lambda ))

(fset 'yes-or-no-p 'y-or-n-p)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;  mapping hotkeys


; ;  lambda
 (global-set-key         (kbd "s-("  )
   (λ () (interactive)     (insert-char #x03BB) ))


; ;  managing windows
 (global-set-key         (kbd "M-s-1")
   (λ () (interactive)      (split-window-right) ))
 (global-set-key         (kbd "M-s-2")
   (λ () (interactive)      (split-window-below) ))
 (global-set-key         (kbd "C-s-2")
   (λ () (interactive)      (make-frame) ))
;
 (global-set-key         (kbd "M-s-3")
   (λ () (interactive)      (delete-window (next-window)) ))
 (global-set-key         (kbd "M-s-`")
   (λ () (interactive)      (delete-window) ))
 (global-set-key         (kbd "C-s-`")
   (λ () (interactive)      (delete-frame (selected-frame)) ))
;
 (global-set-key         (kbd "s-w")
   (λ () (interactive)      (select-window (next-window)) ))
 (global-set-key         (kbd "s-q")
   (λ () (interactive)      (select-window (previous-window)) ))
 (global-set-key         (kbd "s-e")
   (λ () (interactive)      (other-frame 1) ))
 


; ;  managing buffers
 (global-set-key         (kbd "M-s-q")
   (λ () (interactive)      (next-buffer) ))
 (global-set-key         (kbd "M-s-w")
   (λ () (interactive)      (previous-buffer) ))
 (global-set-key         (kbd "M-s-s")
   (λ () (interactive)      (bury-buffer) ))
 (global-set-key         (kbd "M-s-a")
   (λ () (interactive)      (kill-this-buffer) ))
 (global-set-key         (kbd "M-s-d")
   (λ () (interactive)      (kill-buffer-and-window) ))

; ;  rectangles/multiple cursors
 (global-set-key         (kbd "C-s-z")
   (λ () (interactive)      (rectangle-mark-mode) ))

 (require 'multiple-cursors)
 (define-key mc/keymap (kbd "<return>") 'nil)
 (global-set-key         (kbd "M-s-<up>")
   (λ () (interactive)      (progn 
                               (mc/create-fake-cursor-at-point)
                               (mc/freeze-fake-cursors)
                               (forward-line -1) )))
                               ;;(previous-line) )))
 (global-set-key         (kbd "M-s-<down>")
   (λ () (interactive)      (progn
                               (mc/create-fake-cursor-at-point)
                               (mc/freeze-fake-cursors)
                               (forward-line 1) )))
                               ;;(next-line) )))
 (global-set-key         (kbd "M-s-<right>")
   (λ () (interactive)      (progn 
                               (mc/unfreeze-fake-cursors)
                               (mc/cycle-backward)
                               (mc/remove-current-cursor)
                               (mc/freeze-fake-cursors) )))
 (global-set-key         (kbd "M-s-<left>")
   (λ () (interactive)      (progn 
                               (mc/unfreeze-fake-cursors)
                               (mc/remove-current-cursor) )))
 (global-set-key         (kbd "M-s-<kp-1>")
   (λ () (interactive)      (mc/freeze-fake-cursors) ))
 (global-set-key         (kbd "M-s-<kp-0>")
   (λ () (interactive)      (mc/unfreeze-fake-cursors) ))
 (global-set-key         (kbd "M-s-<kp-2>")
                            'mc/mark-more-like-this-extended )



; ;  kmacro
 (global-set-key         (kbd "M-s-'")     
   (λ () (interactive)      (kmacro-start-macro 'nil) ))
 (global-set-key         (kbd "M-s-\\")     
   (λ () (interactive)      (kmacro-end-macro 1) ))
 (global-set-key         (kbd "s-\\")     
   (λ () (interactive)      (kmacro-call-macro 1) ))
 (global-set-key         (kbd "s-\]")     
   (λ () (interactive)      (kmacro-call-macro 2) ))
 (global-set-key         (kbd "s-\[")     
   (λ () (interactive)      (kmacro-call-macro 3) ))



; ;  window-resize (now with real defun)
 (global-set-key    (kbd "C-s-<kp-3>")    'winlk-right-out)
 (global-set-key    (kbd "C-s-<kp-1>")    'winlk-right-in)
 (global-set-key    (kbd "C-s-<kp-0>")    'winlk-bottom-down)
 (global-set-key    (kbd "C-s-<kp-2>")    'winlk-bottom-up)
;
 (global-set-key    (kbd "C-s-<kp-6>")    'winlk-left-in)
 (global-set-key    (kbd "C-s-<kp-4>")    'winlk-left-out)
 (global-set-key    (kbd "C-s-<kp-8>")    'winlk-top-up)
 (global-set-key    (kbd "C-s-<kp-5>")    'winlk-top-down)


; ;  autocompletion?
 (global-set-key    (kbd "C-<tab>")   'company-complete)




; ;  reduce from init-time value (set in early-init.el)
(customize-set-value 'gc-cons-threshold 8388608) 
