

;; (require 'package)

(let* (  (no-ssl (and (memq system-type '(windows-nt ms-dos))
                      (not (gnutls-available-p)) ))
         (proto (if no-ssl "http" "https")) )
      (add-to-list 'package-archives
         (cons "melpa" (concat proto "://melpa.org/packages/")) t)
      (when  (< emacs-major-version 24)
         (add-to-list 'package-archives
            '("gnu" . (concat proto "://elpa.gnu.org/packages/"))) )  )

       ; (add-to-list 'package-archives
       ; (cons "melpa-stable" (concat proto"://stable.melpa.org/packages/")) t))
 
;; (package-initialize)

(unless (directory-files "/tmp/" '() "emacs" ) (mkdir "/tmp/emacs"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-show-menu 0.4)
 '(ac-auto-start 1)
 '(ac-use-fuzzy t)
 '(ansi-color-faces-vector
    [default default default italic underline success warning error])
 '(ansi-color-for-comint-mode t)
 '(ansi-color-names-vector
    ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(async-bytecomp-package-mode t)
 '(backup-directory-alist '(("." . "~/.emacs.d/auto-backup-list/")))
 '(baud-rate 38400)
 '(beacon-blink-when-focused t)
 '(beacon-mode t)
 '(blink-cursor-delay 0.45)
 '(blink-cursor-interval 0.45)
 '(buffer-face-mode-face 'fixed-pitch)
 '(c-backslash-column 62)
 '(c-backslash-max-column 92)
 '(c-basic-offset 3)
 '(c-block-comment-prefix "")
 '(c-default-style
    '((c-mode . "linux")
       (java-mode . "java")
       (awk-mode . "awk")
       (other . "gnu")))
 '(c-font-lock-extra-types
    '("\\sw+_t" "bool" "complex" "imaginary" "FILE" "lconv" "tm" "va_list" "jmp_buf" "Lisp_Object" "\"\\\\<\\\\(\\\\(?:u\\\\|\\\\)int\\\\(?:8\\\\|16\\\\|32\\\\|64\\\\)_t\\\\)\\\\>\""))
 '(c-max-one-liner-length 102)
 '(c-mode-hook
    '((lambda nil
        (add-hook 'kill-buffer-hook 'call-c-eldoc-cleanup))
       semantic-idle-summary-mode completion-c-mode-hook macrostep-c-mode-hook cwarn-mode flycheck-mode electric-pair-mode c-turn-on-eldoc-mode checkdoc-minor-mode) t)
 '(c-tab-always-indent nil)
 '(cider-allow-jack-in-without-project 'warn)
 '(cider-auto-mode 't)
 '(cider-auto-select-error-buffer t)
 '(cider-auto-test-mode t)
 '(cider-clojure-cli-global-options " -R:repl ")
 '(cider-comment-postfix "  ;; ")
 '(cider-comment-prefix "  ;;")
 '(cider-connected-hook
    '(cljr--init-middleware eldoc-mode company-mode flycheck-mode flycheck-clojure-setup yas-minor-mode semantic-mode semantic-idle-summary-mode))
 '(cider-debug-display-locals t)
 '(cider-default-repl-command "clojure")
 '(cider-eldoc-display-context-dependent-info t)
 '(cider-enlighten-mode t)
 '(cider-eval-result-prefix "~> ")
 '(cider-font-lock-dynamically 't)
 '(cider-font-lock-max-length nil)
 '(cider-jack-in-auto-inject-clojure "1.9.0")
 '(cider-jack-in-default "clojure")
 '(cider-jdk-src-paths '("/usr/lib/jvm/java-10-openjdk/"))
 '(cider-preferred-build-tool nil)
 '(cider-repl-history-size 4096)
 '(cider-repl-scroll-on-output nil)
 '(cider-repl-use-clojure-font-lock t)
 '(cider-result-use-clojure-font-lock t)
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
 '(company-auto-complete ''company-explicit-action-p)
 '(company-auto-complete-chars '(95 40 41 46))
 '(company-backends
    '(company-clang company-cmake
       (company-dabbrev-code company-gtags company-keywords company-etags)
       company-capf company-c-headers company-files company-semantic company-elisp company-oddmuse company-dabbrev company-oddmuse company-nxml company-bbdb company-css company-eclim company-abbrev))
 '(company-cmake-executable '/usr/bin/cmake)
 '(company-dabbrev-code-everywhere t)
 '(company-lighter-base "company")
 '(company-minimum-prefix-length 2)
 '(company-statistics-mode t)
 '(confirm-kill-emacs 'y-or-n-p)
 '(cua-mode t nil (cua-base))
 '(cua-normal-cursor-color "light grey")
 '(cursor-in-non-selected-windows 'hollow)
 '(custom-safe-themes
    '("eae2f15748f64497a99475889f650151964bb6f1d408e9e6730bb89f55a613c4" "bd736b2cfe8c5e8bae6213ea64a1259f001c2c58824474f10c6c8728017bcbb9" "1d6281fda54c6cf76ff730d315c804bf511fa7e760f046db83a96ea98f823e3b" "6aa15287ed7f2ddf73e6177a03308488f2928f3763f7809da60294ef212c008a" "04294d4d1e38081f2d2f0f2781f8f05b9b3f8a46dba083ba59278c4cb22dfa23" "8e87db652bb1e95e2e474bfdd83d62b4edef1bb73f6f5b390dc5f43850fe86b0" "29a47a1805a9a763f0bfe04306b6a3fdc3801f8b4d55fbc01521b1421d0b25d0" "c1f975bd275528dcb916cb4bfdec66f04162ab2d4cf9554635ce9d6dc795e67c" default))
 '(dired-hide-details-hide-information-lines nil)
 '(dired-hide-details-hide-symlink-targets nil)
 '(dired-listing-switches "-alh")
 '(dired-mode-hook
    '(dired-hide-details-mode visual-line-mode toggle-truncate-lines))
 '(display-line-numbers t)
 '(display-line-numbers-width 3)
 '(dynamic-completion-mode t)
 '(eldoc-echo-area-use-multiline-p t)
 '(eldoc-idle-delay 0.25)
 '(eldoc-minor-mode-string " eldoc")
 '(electric-indent-mode nil)
 '(emacs-lisp-mode-hook '(checkdoc-minor-mode eldoc-mode edebug-x-mode))
 '(erc-insert-pre-hook '(0))
 '(erc-networks-mode nil)
 '(eterm-256color-disable-bold nil)
 '(explicit-shell-file-name nil)
 '(fci-rule-color "#073642")
 '(flycheck-clang-warnings '("all" "extra" "padded"))
 '(flycheck-color-mode-line-face-to-color 'mode-line)
 '(flycheck-display-errors-delay 0.3)
 '(flycheck-inline-mode t nil (flycheck-inline))
 '(flycheck-mode-hook
    '(flycheck-color-mode-line-mode flycheck-mode-set-explicitly))
 '(flycheck-mode-line-prefix "FlC")
 '(flycheck-pos-tip-mode t)
 '(fringe-mode '(1 . 4) nil (fringe))
 '(garbage-collection-messages nil)
 '(generic-extras-enable-list
    '(alias-generic-mode apache-conf-generic-mode apache-log-generic-mode bat-generic-mode etc-fstab-generic-mode etc-modules-conf-generic-mode etc-passwd-generic-mode etc-services-generic-mode etc-sudoers-generic-mode fvwm-generic-mode hosts-generic-mode inetd-conf-generic-mode inf-generic-mode ini-generic-mode java-manifest-generic-mode java-properties-generic-mode javascript-generic-mode mailagent-rules-generic-mode mailrc-generic-mode named-boot-generic-mode named-database-generic-mode prototype-generic-mode rc-generic-mode resolve-conf-generic-mode samba-generic-mode show-tabs-generic-mode vrml-generic-mode x-resource-generic-mode xmodmap-generic-mode))
 '(global-company-mode t)
 '(global-eldoc-mode t)
 '(global-hl-line-mode t)
 '(global-hl-line-sticky-flag t)
 '(global-linum-mode nil)
 '(global-paren-face-mode t)
 '(global-semantic-highlight-func-mode t)
 '(global-semantic-idle-completions-mode t nil (semantic/idle))
 '(global-semantic-idle-summary-mode t)
 '(global-visual-line-mode t)
 '(gnus-init-file "~/.emacs.d/.gnus")
 '(gnus-secondary-select-methods '((nntp "news.gnus.org")))
 '(gnus-select-method '(nntp "news.gnus.org"))
 '(gnus-startup-file "~/.emacs.d/.newsrc.gnus")
 '(hl-line-face 'hl-line)
 '(hl-line-sticky-flag t)
 '(ielm-mode-hook '(eldoc-mode irony-eldoc))
 '(indent-tabs-mode nil)
 '(inf-clojure-generic-cmd "clojure -r -R:repl")
 '(inf-clojure-project-type 'nil)
 '(inf-clojure-source-modes '(clojure-mode cider-mode))
 '(initial-buffer-choice t)
 '(line-number-display-limit-width 14)
 '(line-spacing 0.11)
 '(linum-format "%4d")
 '(lisp-body-indent 3)
 '(lisp-indent-offset 2)
 '(lisp-interaction-mode-hook '(eldoc-mode))
 '(mc/edit-lines-empty-lines 'ignore)
 '(mm-external-terminal-program "eterm-color")
 '(normal-erase-is-backspace t)
 '(overline-margin 0)
 '(package-enable-at-startup t)
 '(package-hidden-regexps
    '("\\(.\\+available[^-]\\)" "\\(.\\+available[^-]\\+\\)" "available\\t" "' available '"))
 '(package-pinned-packages '((multiple-cursors . "melpa")))
 '(package-quickstart t)
 '(package-quickstart-file "~/.emacs.d/package-quickstart.el")
 '(package-selected-packages
    '(company-lsp replace-pairs replace-symbol sayid sed-mode sexp-move slime slime-company smart-jump smartscan sr-speedbar symbol-overlay syntactic-close tab-jump-out undo-tree yasnippet-classic-snippets yasnippet-snippets frame-tabs flycheck-pos-tip flycheck-posframe discover-clj-refactor sotclojure walkclj lisp-extra-font-lock picolisp-mode jdecomp lsp-clangd lsp-ui lsp-rust lsp-mode cargo flycheck-rust flymake-rust racer rust-mode rust-playground rustic trie srefactor flycheck-joker cider clj-refactor cljr-helm cljsbuild-mode clomacs ejc-sql el-autoyas helm-clojuredocs parinfer parseclj typed-clojure-mode 4clojure eldoc-overlay mc-extras ac-cider cider-decompile cider-eval-sexp-fu cider-spy evalator-clojure javap-mode nrepl-eval-sexp-fu cider-hydra clojars clojure-cheatsheet clojure-quick-repls flycheck-clojure nrepl-sync monroe eterm-256color align-cljlet clojure-mode clojure-mode-extra-font-locking clojure-snippets inf-clojure foreign-regexp unkillable-scratch visual-regexp visual-regexp-steroids hungry-delete delim-kill company-math company-statistics counsel-etags ac-capf auto-minor-mode beacon better-shell readline-complete repl-toggle shell-command ssh ssh-agency ssh-config-mode ssh-tunnels test-simple undercover undohist yafolding ac-c-headers build-helper build-status company-erlang diffview edts egg flycheck flycheck-dialyzer flycheck-swiftlint flymake-shell function-args git git-attr git-auto-commit-mode git-command git-commit git-commit-insert-issue git-dwim git-io git-lens git-link git-messenger git-msg-prefix git-timemachine git-wip-timemachine gitconfig gitconfig-mode gited ido-at-point ipretty ivy-dired-history ivy-erlang-complete json-mode makefile-executor math-symbol-lists math-symbols matlab-mode modern-cpp-font-lock package-safe-delete pcmpl-args pcmpl-git popup-complete company-c-headers company window-layout window-purpose vkill with-simulated-input xterm-frobs xterm-title paren-face scheme-complete shell-switcher shell-toggle signal smart-comment smart-compile smart-cursor-color smart-forward snippet sotlisp strace-mode stream string-edit sudo-edit sudo-ext tco iedit lfe-mode list-packages-ext macro-math macrostep manage-minor-mode maxframe mic-paren minimal-session-saver mmt es-lib eval-expr eval-in-repl eval-sexp-fu flycheck-rebar3 flycheck-rtags heap highlight-defined highlight-escape-sequences highlight-function-calls highlight-indent-guides highlight-indentation highlight-operators highlight-parentheses highlight-quoted highlight-refontification highlight-stages highlight-symbol highlight-thing highlight-unique-symbol hippie-exp-ext hippie-namespace ctable ctags-update dash-functional db discover discover-my-major dr-racket-like-unicode eacl ecb ede-compdb edebug-x eide el-sprunge elf-mode elisp-lint elisp-sandbox elmacro auto-compile auto-complete-chunk auto-complete-distel auto-highlight-symbol auto-shell-command autodisass-llvm-bitcode bshell c-eldoc cd-compile cedit cff chapel-mode charmap cl-format cl-generic cl-lib cl-lib-highlight cl-print codebug codesearch comint-intercept commenter common-lisp-snippets auto-complete-c-headers google-c-style malinka opencl-mode preproc-font-lock basic-c-compile cpputils-cmake flycheck-pkg-config flycheck-tip flycheck-title flymake-cursor ivy-hydra language-detection mark-multiple scheme-here term+ term+mux term-manager test-c test-case-mode tree-mode xterm-color xterm-keybinder xtest quack isend-mode racket-mode hlinum golden-ratio-scroll-screen font-lock-studio font-lock+ flyparens flymake-cppcheck flycheck-inline flycheck-cstyle flycheck-color-mode-line flycheck-clangcheck flycheck-clang-tidy flycheck-clang-analyzer flycheck-checkbashisms cmake-project cmake-font-lock clang-format auto-complete-clang-async auto-complete-clang ac-clang))
 '(package-user-dir "~/.emacs.d/elpa")
 '(prog-mode-hook
    '(semantic-mode flycheck-mode eldoc-mode company-mode yas-minor-mode egg-minor-mode))
 '(rtags-display-summary-as-tooltip t)
 '(scalable-fonts-allowed t)
 '(scheme-program-name "racket")
 '(scheme-source-modes '(scheme-mode racket-mode racket-repl))
 '(semantic-default-submodes
    '(global-semantic-idle-scheduler-mode global-semanticdb-minor-mode global-semantic-idle-local-symbol-highlight-mode global-semantic-show-unmatched-syntax-mode))
 '(semantic-lex-spp-use-headers-flag t)
 '(semantic-update-mode-line nil nil (semantic/util-modes))
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
 '(speedbar-directory-unshown-regexp "")
 '(speedbar-file-unshown-regexp "")
 '(tab-always-indent 'nil)
 '(tab-width 4)
 '(temporary-file-directory "/tmp/emacs/")
 '(term-buffer-maximum-size 8192)
 '(term-char-mode-point-at-process-mark nil)
 '(term-default-bg-color nil)
 '(term-file-prefix nil)
 '(term-mode-hook nil)
 '(term-suppress-hard-newline nil)
 '(text-scale-mode-step 1.0)
 '(tls-checktrust 'ask)
 '(tool-bar-mode nil)
 '(tramp-terminal-prompt-regexp "\\(^.[0-9].* [$#] \\)")
 '(tramp-terminal-type "eterm-color")
 '(underline-minimum-offset 3)
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
 '(visible-bell t))



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )







;; Handwritten section.

(load-theme 'local-faces)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;

(defun  term-window-setup  ()
   (interactive)
   (progn
     (setenv "LINES" (string (- (window-height) 8) ))
     (setenv "COLUMNS" (string (- (window-width) 4) ))
     (shell-command "PS1=$(echo '[$?] [${PWD}] $ \n' )")
     (shell-command "stty rows `echo $LINES` cols `echo $COLUMNS`") )
 )

;; ;

(defun lk-windowsize          (HORIZONTAL?  TOP/LEFT?  AMOUNT)
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
;; ;  
(fset 'yes-or-no-p 'y-or-n-p)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;   key mapping section
;;


; ;  hacking unicode
 (fset  'λ (symbol-function 'lambda) )

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
   (λ () (interactive)      (mc/create-fake-cursor-at-point)
                            (mc/freeze-fake-cursors)
                            (previous-line) ))
 (global-set-key         (kbd "M-s-<down>")
   (λ () (interactive)      (mc/create-fake-cursor-at-point)
                            (mc/freeze-fake-cursors)
                            (next-line) ))
 (global-set-key         (kbd "M-s-<right>")
   (λ () (interactive)      (mc/unfreeze-fake-cursors)
                            (mc/cycle-backward)
                            (mc/remove-current-cursor)
                            (mc/freeze-fake-cursors) ))
 (global-set-key         (kbd "M-s-<left>")
   (λ () (interactive)      (mc/unfreeze-fake-cursors)
                            (mc/remove-current-cursor) ))
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








(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
