

(require 'package)

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
 
(package-initialize)

(unless (directory-files "/tmp/" '() "emacs" ) (mkdir "/tmp/emacs"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-show-menu 0.4)
 '(ac-use-fuzzy t)
 '(ansi-color-faces-vector
    [default default default italic underline success warning error])
 '(ansi-color-names-vector
    ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(autopair-skip-whitespace (quote chomp))
 '(backup-directory-alist (quote (("." . "~/.emacs.d/auto-backup-list/"))))
 '(baud-rate 38400)
 '(beacon-blink-when-focused t)
 '(beacon-mode t)
 '(blink-cursor-delay 0.45)
 '(blink-cursor-interval 0.45)
 '(c-basic-offset 3)
 '(c-default-style
    (quote
      ((c-mode . "linux")
        (java-mode . "java")
        (awk-mode . "awk")
        (other . "gnu"))))
 '(c-max-one-liner-length 95)
 '(c-mode-hook
    (quote
      (completion-c-mode-hook macrostep-c-mode-hook cwarn-mode flycheck-mode electric-pair-mode)) t)
 '(c-tab-always-indent nil)
 '(cider-allow-jack-in-without-project (quote warn))
 '(cider-auto-select-error-buffer nil)
 '(cider-auto-test-mode t)
 '(cider-comment-postfix "")
 '(cider-comment-prefix " ")
 '(cider-connected-hook
    (quote
      (smartparens-mode smart-comment eldoc-mode company-mode flycheck-clojure-setup flycheck-mode yas-minor-mode)))
 '(cider-debug-display-locals t)
 '(cider-eldoc-display-context-dependent-info t)
 '(cider-jack-in-auto-inject-clojure (quote (quote latest)))
 '(cider-jdk-src-paths (quote ("/usr/lib/jvm/java-10-openjdk/bin ")))
 '(cider-repl-history-size 4096)
 '(cider-repl-scroll-on-output nil)
 '(clojure-comment-regexp (quote clojure--reader-and-comment-regexp))
 '(clojure-docstring-fill-column 55)
 '(column-number-mode t)
 '(comint-completion-autolist t)
 '(comint-prompt-read-only t)
 '(comint-scroll-show-maximum-output nil)
 '(comint-terminfo-terminal "xterm-256color")
 '(comint-use-prompt-regexp nil)
 '(company-auto-complete (quote (quote company-explicit-action-p)))
 '(company-auto-complete-chars (quote (32 95 40 41 119 46 36 124)))
 '(company-backends
    (quote
      (company-clang company-cmake
        (company-dabbrev-code company-gtags company-keywords company-etags)
        company-capf company-c-headers company-files company-semantic company-elisp company-oddmuse company-dabbrev company-oddmuse company-nxml company-bbdb company-css company-eclim company-abbrev)))
 '(company-cmake-executable (quote /usr/bin/cmake))
 '(company-dabbrev-code-everywhere t)
 '(company-irony-ignore-case (quote smart))
 '(company-lighter-base "company")
 '(company-minimum-prefix-length 2)
 '(company-statistics-mode t)
 '(confirm-kill-emacs (quote y-or-n-p))
 '(cua-mode t nil (cua-base))
 '(cua-normal-cursor-color "light grey")
 '(cursor-in-non-selected-windows (quote hollow))
 '(dired-hide-details-hide-information-lines nil)
 '(dired-hide-details-hide-symlink-targets nil)
 '(dired-listing-switches "-alh")
 '(dired-mode-hook
    (quote
      (dired-hide-details-mode visual-line-mode toggle-truncate-lines)))
 '(dynamic-completion-mode t)
 '(eldoc-echo-area-use-multiline-p t)
 '(eldoc-idle-delay 0.25)
 '(eldoc-minor-mode-string " eldoc")
 '(electric-indent-mode nil)
 '(emacs-lisp-mode-hook (quote (checkdoc-minor-mode eldoc-mode edebug-x-mode)))
 '(erc-insert-pre-hook (quote (0)))
 '(erc-networks-mode nil)
 '(explicit-shell-file-name "/bin/bash")
 '(fci-rule-color "#073642")
 '(flycheck-clang-warnings (quote ("all" "extra" "padded")))
 '(garbage-collection-messages nil)
 '(generic-extras-enable-list
    (quote
      (alias-generic-mode apache-conf-generic-mode apache-log-generic-mode bat-generic-mode etc-fstab-generic-mode etc-modules-conf-generic-mode etc-passwd-generic-mode etc-services-generic-mode etc-sudoers-generic-mode fvwm-generic-mode hosts-generic-mode inetd-conf-generic-mode inf-generic-mode ini-generic-mode java-manifest-generic-mode java-properties-generic-mode javascript-generic-mode mailagent-rules-generic-mode mailrc-generic-mode named-boot-generic-mode named-database-generic-mode prototype-generic-mode rc-generic-mode resolve-conf-generic-mode samba-generic-mode show-tabs-generic-mode vrml-generic-mode x-resource-generic-mode xmodmap-generic-mode)))
 '(global-company-mode t)
 '(global-eldoc-mode t)
 '(global-hl-line-mode t)
 '(global-hl-line-sticky-flag t)
 '(global-linum-mode t)
 '(global-paren-face-mode t)
 '(global-semantic-highlight-func-mode t)
 '(global-visual-line-mode t)
 '(hl-line-face (quote hl-line))
 '(hl-line-sticky-flag t)
 '(ielm-mode-hook (quote (eldoc-mode irony-eldoc)))
 '(indent-tabs-mode nil)
 '(initial-buffer-choice t)
 '(irony-eldoc-strip-underscores t)
 '(irony-eldoc-use-unicode t)
 '(irony-lang-compile-option-alist
    (quote
      ((c-mode . "c")
        (c++-mode . "c++")
        (objc-mode . "objective-c"))))
 '(irony-lighter " irony")
 '(line-number-display-limit-width 14)
 '(line-spacing 0.12)
 '(linum-format "%4d")
 '(lisp-body-indent 3)
 '(lisp-indent-offset 2)
 '(lisp-interaction-mode-hook (quote (eldoc-mode)))
 '(mc/edit-lines-empty-lines (quote ignore))
 '(mm-external-terminal-program "xterm-24bit")
 '(normal-erase-is-backspace t)
 '(overline-margin 1)
 '(package-enable-at-startup t)
 '(package-hidden-regexps
    (quote
      ("\\(.\\+available[^-]\\)" "\\(.\\+available[^-]\\+\\)" "available\\t" "' available '")))
 '(package-pinned-packages (quote ((multiple-cursors . "melpa"))))
 '(package-selected-packages
    (quote
      (mc-extras ac-cider cider-decompile cider-eval-sexp-fu cider-spy evalator-clojure javap-mode nrepl-eval-sexp-fu cider-hydra clojars clojure-cheatsheet clojure-quick-repls flycheck-clojure nrepl-sync smartparens monroe eterm-256color align-cljlet clojure-mode clojure-mode-extra-font-locking clojure-snippets inf-clojure foreign-regexp unkillable-scratch visual-regexp visual-regexp-steroids hungry-delete delim-kill company-math company-statistics counsel-etags ac-capf auto-minor-mode beacon better-shell readline-complete repl-toggle shell-command ssh ssh-agency ssh-config-mode ssh-tunnels test-simple undercover undohist yafolding yasnippet-snippets yatemplate ac-c-headers build-helper build-status company-erlang diffview edts egg flycheck flycheck-dialyzer flycheck-swiftlint flymake-shell function-args git git-attr git-auto-commit-mode git-command git-commit git-commit-insert-issue git-dwim git-io git-lens git-link git-messenger git-msg-prefix git-timemachine git-wip-timemachine gitconfig gitconfig-mode gited ido-at-point ipretty ivy-dired-history ivy-erlang-complete json-mode makefile-executor math-symbol-lists math-symbols matlab-mode modern-cpp-font-lock package-safe-delete pcmpl-args pcmpl-git popup-complete company-c-headers company window-layout window-purpose erlang vkill with-simulated-input xterm-frobs xterm-title paren-face scheme-complete shell-switcher shell-toggle signal smart-comment smart-compile smart-cursor-color smart-forward snippet sotlisp strace-mode stream string-edit sudo-edit sudo-ext tco iedit lfe-mode list-packages-ext macro-math macrostep manage-minor-mode maxframe mic-paren minimal-session-saver mmt es-lib eval-expr eval-in-repl eval-sexp-fu flycheck-rebar3 flycheck-rtags heap highlight-defined highlight-escape-sequences highlight-function-calls highlight-indent-guides highlight-indentation highlight-operators highlight-parentheses highlight-quoted highlight-refontification highlight-stages highlight-symbol highlight-thing highlight-unique-symbol hippie-exp-ext hippie-namespace ctable ctags-update dash-functional db discover discover-my-major dr-racket-like-unicode eacl ecb ede-compdb edebug-x eide el-sprunge elf-mode elisp-lint elisp-sandbox elmacro auto-compile auto-complete-chunk auto-complete-distel auto-highlight-symbol auto-shell-command autodisass-llvm-bitcode bshell c-eldoc cd-compile cedit cff chapel-mode charmap cl-format cl-generic cl-lib cl-lib-highlight cl-print codebug codesearch comint-intercept commenter common-lisp-snippets auto-complete-c-headers google-c-style malinka opencl-mode preproc-font-lock basic-c-compile cpputils-cmake flycheck-pkg-config flycheck-tip flycheck-title flymake-cursor ivy-hydra language-detection mark-multiple scheme-here term+ term+mux term-manager test-c test-case-mode tree-mode xterm-color xterm-keybinder xtest quack isend-mode racket-mode hlinum golden-ratio-scroll-screen font-lock-studio font-lock+ flyparens flymake-cppcheck flycheck-inline flycheck-cstyle flycheck-color-mode-line flycheck-clangcheck flycheck-clang-tidy flycheck-clang-analyzer flycheck-checkbashisms cmake-project cmake-font-lock clang-format auto-complete-clang-async auto-complete-clang ac-clang)))
 '(package-user-dir "/home/lk/.emacs.d/elpa")
 '(scalable-fonts-allowed t)
 '(scheme-program-name "racket")
 '(scheme-source-modes (quote (scheme-mode racket-mode racket-repl)))
 '(shell-prompt-pattern "'^.* [$#] '")
 '(shell-switcher-ansi-term-shell "/bin/bash")
 '(shell-switcher-mode t)
 '(shell-switcher-new-shell-function (quote shell-switcher-make-ansi-term))
 '(show-paren-delay 0.085)
 '(show-paren-mode t)
 '(show-paren-style (quote mixed))
 '(show-paren-when-point-in-periphery t)
 '(show-paren-when-point-inside-paren t)
 '(smart-cursor-color-mode t nil (smart-cursor-color))
 '(speedbar-directory-unshown-regexp "")
 '(speedbar-file-unshown-regexp "")
 '(tab-always-indent (quote nil))
 '(temporary-file-directory "/tmp/emacs/")
 '(term-buffer-maximum-size 8192)
 '(term-default-bg-color "gray8")
 '(term-file-prefix "/usr/share/emacs/26.1/lisp/term/")
 '(term-suppress-hard-newline t)
 '(text-scale-mode-step 1.0)
 '(tls-checktrust (quote ask))
 '(tool-bar-mode nil)
 '(tramp-terminal-prompt-regexp "\\(^.[0-9].* [$#] \\)" nil (tramp))
 '(tramp-terminal-type "xterm-256color" nil (tramp))
 '(unkillable-scratch t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
    (quote
      ((20 . "#dc322f")
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
        (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil)
 '(visible-bell t))



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d3743" :foreground "#c1c1c0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(comint-highlight-input ((t (:inherit highlight :weight bold))))
 '(comint-highlight-prompt ((t (:foreground "DarkOrchid3" :weight bold))))
 '(company-scrollbar-bg ((t (:background "light gray"))))
 '(company-scrollbar-fg ((t (:background "snow4"))))
 '(company-template-field ((t (:background "#34ef9a" :foreground "#414141"))))
 '(company-tooltip ((t (:background "#54efff" :foreground "#3a3a39"))))
 '(company-tooltip-common ((t (:foreground "#0000bb" :weight bold))))
 '(company-tooltip-selection ((t (:background "#bfbfff"))))
 '(cursor ((t (:background "azure1"))))
 '(dired-directory ((t (:inherit font-lock-type-face :foreground "#00bfff" :underline t :weight semi-bold :height 1.03))))
 '(dired-flagged ((t (:foreground "pink2" :box (:line-width -1 :color "gray35" :style pressed-button) :strike-through "pink3" :slant italic))))
 '(dired-header ((t (:inherit dired-directory :foreground "#2abee9" :box (:line-width 1 :color "grey45" :style released-button) :underline t :height 1.8))))
 '(dired-mark ((t (:inherit dired-flagged :foreground "indianred1" :box (:line-width 1 :color "darkorange3" :style released-button) :strike-through nil :slant normal :weight bold))))
 '(dired-symlink ((t (:foreground "#208acb" :slant italic))))
 '(font-lock-builtin-face ((t (:foreground "#23ffef" :weight extra-bold))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 '(font-lock-comment-face ((t (:foreground "#74af68" :slant italic))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :slant italic))))
 '(font-lock-keyword-face ((t (:foreground "#f68627" :weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "#f68627" :slant italic))))
 '(font-lock-regexp-grouping-construct ((t (:inherit bold))))
 '(font-lock-string-face ((t (:foreground "#5bbb35" :weight bold))))
 '(font-lock-type-face ((t (:foreground "#23afd8" :weight semi-bold))))
 '(font-lock-variable-name-face ((t (:foreground "#dbdb95"))))
 '(fringe ((t (:background "#323c47"))))
 '(highlight ((t (:inherit nil :background "#2f3f4f"))))
 '(hl-line ((t (:background "#2f3f4f"))))
 '(lazy-highlight ((t (:background "#335f86"))))
 '(line-number-current-line ((t (:inherit line-number :weight bold))))
 '(linum ((t (:inherit (default hl-line) :stipple nil :foreground "#8b8682" :strike-through nil :overline nil :slant normal :height 110 :width condensed))))
 '(linum-highlight-face ((t (:inherit shadow :foreground "seashell2"))))
 '(mc/cursor-face ((t (:background "cyan4" :inverse-video nil :box (:line-width 1 :color "#55cc66" :style released-button)))))
 '(mode-line ((t (:background "#212931" :foreground "#eeeeec" :box (:line-width 1 :color "#264969" :style released-button) :overline "dark violet"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "grey30" :foreground "grey80" :box (:line-width 1 :color "grey40" :style released-button) :overline nil :weight light))))
 '(region ((t (:inherit hl-line :background "#3d7d5e"))))
 '(scroll-bar ((t nil)))
 '(secondary-selection ((t (:background "SkyBlue4"))))
 '(shadow ((t (:foreground "grey64"))))
 '(show-paren-match ((t (:background "#3f5a90" :inverse-video nil :box (:line-width -1 :color "deep sky blue") :underline (:color "deep sky blue" :style wave) :weight bold))))
 '(show-paren-mismatch ((t (:box (:line-width -1 :color "magenta") :underline (:color "magenta" :style wave) :weight bold))))
 '(term ((t (:inherit default :background "gray8" :distant-foreground "deep sky blue" :foreground "#20c6ae"))))
 '(term-bold ((t (:inherit term :weight bold))))
 '(term-underline ((t (:inherit term :underline t))))
 '(warning ((t (:foreground "VioletRed1" :weight bold))))
 '(window-divider ((t (:foreground "dark cyan"))))
 '(window-divider-first-pixel ((t (:foreground "dark cyan"))))
 '(window-divider-last-pixel ((t (:foreground "light sea green")))))



 

 ;; Handwritten section.





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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










