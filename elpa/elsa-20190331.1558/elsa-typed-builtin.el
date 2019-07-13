(require 'elsa-types)
(require 'elsa-type-helpers)

;; File: data.c
(put 'eq 'elsa-type (elsa-make-type Mixed -> Mixed -> Bool))
(put 'null 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'type-of 'elsa-type (elsa-make-type Mixed -> Symbol))
(progn
  (put 'consp 'elsa-type (elsa-make-type Mixed -> Bool))
  (put 'consp 'elsa-narrow-types (list (elsa-make-type Cons))))
(put 'atom 'elsa-type (elsa-make-type Mixed -> Bool))
(progn
  (put 'listp 'elsa-type (elsa-make-type Mixed -> Bool))
  (put 'listp 'elsa-narrow-types (list (elsa-make-type List))))
(put 'nlistp 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'symbolp 'elsa-type (elsa-make-type Mixed -> Bool))
(progn
  (put 'keywordp 'elsa-type (elsa-make-type Mixed -> Bool))
  (put 'keywordp 'elsa-narrow-types (list (elsa-make-type Keyword))))
(put 'vectorp 'elsa-type (elsa-make-type Mixed -> Bool))
(progn
  (put 'stringp 'elsa-type (elsa-make-type Mixed -> Bool))
  (put 'stringp 'elsa-narrow-types (list (elsa-make-type String))))
(put 'multibyte-string-p 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'char-table-p 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'vector-or-char-table-p 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'bool-vector-p 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'arrayp 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'sequencep 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'bufferp 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'markerp 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'user-ptrp 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'subrp 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'byte-code-function-p 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'char-or-string-p 'elsa-type (elsa-make-type Mixed -> Bool))
(progn
  (put 'integerp 'elsa-type (elsa-make-type Mixed -> Bool))
  (put 'integerp 'elsa-narrow-types (list (elsa-make-type Int))))
(put 'integer-or-marker-p 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'natnump 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'numberp 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'number-or-marker-p 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'floatp 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'car 'elsa-type (elsa-make-type Cons | Nil -> Mixed))
(put 'car-safe 'elsa-type (elsa-make-type Cons | Nil -> Mixed))
(put 'cdr 'elsa-type (elsa-make-type Cons | Nil -> Mixed))
(put 'cdr-safe 'elsa-type (elsa-make-type Cons | Nil -> Mixed))
(put 'setcar 'elsa-type (elsa-make-type Cons -> Mixed -> Mixed))
(put 'setcdr 'elsa-type (elsa-make-type Cons -> Mixed -> Mixed))
(put 'boundp 'elsa-type (elsa-make-type Symbol -> Bool))
(put 'fboundp 'elsa-type (elsa-make-type Symbol -> Bool))
;; (put 'makunbound 'elsa-type (elsa-make-type ))
;; (put 'fmakunbound 'elsa-type (elsa-make-type ))
;; (put 'symbol-function 'elsa-type (elsa-make-type ))
(put 'symbol-plist 'elsa-type (elsa-make-type Symbol? -> List))
(put 'symbol-name 'elsa-type (elsa-make-type Symbol? -> String))
;; (put 'fset 'elsa-type (elsa-make-type ))
;; (put 'defalias 'elsa-type (elsa-make-type ))
(put 'setplist 'elsa-type (elsa-make-type Symbol -> List -> List))
(put 'subr-arity 'elsa-type (elsa-make-type Mixed -> Cons Int (Int | Const many)))
;; (put 'subr-name 'elsa-type (elsa-make-type ))
;; (put 'interactive-form 'elsa-type (elsa-make-type ))
(put 'indirect-variable 'elsa-type (elsa-make-type Symbol -> Symbol))
(put 'symbol-value 'elsa-type (elsa-make-type Symbol -> Mixed))
(put 'set 'elsa-type (elsa-make-type Symbol -> Mixed -> Mixed))
(put 'default-boundp 'elsa-type (elsa-make-type Symbol -> Bool))
(put 'default-value 'elsa-type (elsa-make-type Symbol -> Mixed))
(put 'set-default 'elsa-type (elsa-make-type Symbol -> Mixed -> Mixed))
;; SPECIAL FORM (put 'setq-default 'elsa-type (elsa-make-type ))
(put 'make-variable-buffer-local 'elsa-type (elsa-make-type Symbol -> Symbol))
(put 'make-local-variable 'elsa-type (elsa-make-type Symbol -> Symbol))
(put 'kill-local-variable 'elsa-type (elsa-make-type Symbol -> Symbol))
;; (put 'make-variable-frame-local 'elsa-type (elsa-make-type ))
(put 'local-variable-p 'elsa-type (elsa-make-type Symbol -> Buffer? -> Bool))
(put 'local-variable-if-set-p 'elsa-type (elsa-make-type Symbol -> Buffer? -> Bool))
(put 'variable-binding-locus 'elsa-type (elsa-make-type Symbol -> Buffer | Frame | Nil))
;; (put 'terminal-local-value 'elsa-type (elsa-make-type ))
;; (put 'set-terminal-local-value 'elsa-type (elsa-make-type ))
;; (put 'indirect-function 'elsa-type (elsa-make-type ))
(put 'aref 'elsa-type (elsa-make-type String | Vector -> Int -> Mixed))
;; TODO: can have a generic type (elsa-make-type String | Vector -> Int -> a -> a)
;; Also other functions which are of a "set" variety which take
;; something, set a variable to that value and return the same thing
;; back.
(put 'aset 'elsa-type (elsa-make-type String | Vector -> Int -> Mixed -> Mixed))
;; TODO: should also accept markers
(put '= 'elsa-type (elsa-make-type Number | Marker -> Variadic (Number | Marker) -> Bool))
(put '< 'elsa-type (elsa-make-type Number | Marker -> Variadic (Number | Marker) -> Bool))
(put '> 'elsa-type (elsa-make-type Number | Marker -> Variadic (Number | Marker) -> Bool))
(put '<= 'elsa-type (elsa-make-type Number | Marker -> Variadic (Number | Marker) -> Bool))
(put '>= 'elsa-type (elsa-make-type Number | Marker -> Variadic (Number | Marker) -> Bool))
(put '/= 'elsa-type (elsa-make-type Number | Marker -> Number | Marker -> Bool))
(put 'number-to-string 'elsa-type (elsa-make-type Number -> String))
(put 'string-to-number 'elsa-type (elsa-make-type String -> Number? -> Number))
(put '+ 'elsa-type (elsa-make-type Variadic (Number | Marker) -> Number))
(put '- 'elsa-type (elsa-make-type Variadic (Number | Marker) -> Number))
(put '* 'elsa-type (elsa-make-type Variadic (Number | Marker) -> Number))
(put '/ 'elsa-type (elsa-make-type Number | Marker -> Variadic (Number | Marker) -> Bool))
(put '% 'elsa-type (elsa-make-type Number | Marker -> Number | Marker -> Number))
(put 'mod 'elsa-type (elsa-make-type Number | Marker -> Number | Marker -> Number))
(put 'max 'elsa-type (elsa-make-type Number | Marker -> Variadic (Number | Marker) -> Bool))
(put 'min 'elsa-type (elsa-make-type Number | Marker -> Variadic (Number | Marker) -> Bool))
;; TODO: should also accept markers
(put 'logand 'elsa-type (elsa-make-type Int... -> Int))
(put 'logior 'elsa-type (elsa-make-type Int... -> Int))
(put 'logxor 'elsa-type (elsa-make-type Int... -> Int))
(put 'ash 'elsa-type (elsa-make-type Int -> Int -> Int))
(put 'lsh 'elsa-type (elsa-make-type Int -> Int -> Int))
(put '1+ 'elsa-type (elsa-make-type Number | Marker -> Int))
(put '1- 'elsa-type (elsa-make-type Number | Marker -> Int))
(put 'lognot 'elsa-type (elsa-make-type Int -> Int))
;; TODO: we can not have a function with just a return type right now
;; as this would break the code fetching args/return.  We need to add
;; methods for this so that all other types simply return itself as
;; return type. See #12
;; (put 'byteorder 'elsa-type (elsa-make-type Int))
;; TODO: Implement bool vectors
;; (put 'bool-vector-exclusive-or 'elsa-type (elsa-make-type ))
;; (put 'bool-vector-union 'elsa-type (elsa-make-type ))
;; (put 'bool-vector-intersection 'elsa-type (elsa-make-type ))
;; (put 'bool-vector-set-difference 'elsa-type (elsa-make-type ))
;; (put 'bool-vector-subsetp 'elsa-type (elsa-make-type ))
;; (put 'bool-vector-not 'elsa-type (elsa-make-type ))
;; (put 'bool-vector-count-population 'elsa-type (elsa-make-type ))
;; (put 'bool-vector-count-consecutive 'elsa-type (elsa-make-type ))

;; File: bytecode.c
(put 'byte-code 'elsa-type (elsa-make-type String -> Vector Mixed -> Int -> Mixed))

;; File: callproc.c
(put 'call-process 'elsa-type
     (elsa-make-type
      String ->
      String? ->
      T | Nil | Const 0 | Cons (Const :file) (Cons String Nil) | Cons (T | Nil | Const 0 | Cons (Const :file) (Cons String Nil)) (Cons (T | Nil | String) Nil) ->
      Mixed ->
      String... ->
      Nil | Int | String))
(put 'call-process-region 'elsa-type
     (elsa-make-type
      (Int | Marker) ->
      (Int | Marker) ->
      String ->
      Mixed ->
      T | Nil | Const 0 | Cons (Const :file) (Cons String Nil) | Cons (T | Nil | Const 0 | Cons (Const :file) (Cons String Nil)) (Cons (T | Nil | String) Nil) ->
      Mixed ->
      String... ->
      Nil | Int | String))
(put 'getenv-internal 'elsa-type (elsa-make-type String -> [String] -> String?))

;; File: kqueue.c
;; (put 'kqueue-add-watch 'elsa-type (elsa-make-type))
;; (put 'kqueue-rm-watch 'elsa-type (elsa-make-type))
;; (put 'kqueue-valid-p 'elsa-type (elsa-make-type))

;; File: print.c
(put 'write-char 'elsa-type (elsa-make-type Int -> T | Marker | Buffer | (Mixed -> Mixed) -> Int))
(put 'terpri 'elsa-type (elsa-make-type T | Marker | Buffer | (Mixed -> Mixed) -> Mixed -> Mixed))
(put 'prin1 'elsa-type (elsa-make-type Mixed -> T | Marker | Buffer | (Mixed -> Mixed) | Symbol -> Mixed))
(put 'prin1-to-string 'elsa-type (elsa-make-type Mixed -> Mixed -> String))
(put 'princ 'elsa-type (elsa-make-type Mixed -> T | Marker | Buffer | (Mixed -> Mixed) | Symbol -> Mixed))
(put 'print 'elsa-type (elsa-make-type Mixed -> T | Marker | Buffer | (Mixed -> Mixed) | Symbol -> Mixed))
(put 'external-debugging-output 'elsa-type (elsa-make-type Int -> Int))
(put 'redirect-debugging-output 'elsa-type (elsa-make-type String? -> Mixed -> Nil))
(put 'error-message-string 'elsa-type (elsa-make-type Cons Symbol Mixed -> String))

;; File: xmenu.c
(put 'x-menu-bar-open-internal 'elsa-type (elsa-make-type Frame? -> Nil))
(put 'menu-or-popup-active-p 'elsa-type (elsa-make-type Bool))

;; File: inotify.c
;; (put 'inotify-add-watch 'elsa-type (elsa-make-type))
;; (put 'inotify-rm-watch 'elsa-type (elsa-make-type))
;; (put 'inotify-valid-p 'elsa-type (elsa-make-type))

;; File: fns.c
;; (put 'identity 'elsa-type (elsa-make-type ))
;; (put 'random 'elsa-type (elsa-make-type ))
(put 'length 'elsa-type (elsa-make-type Sequence? -> Int))
(put 'safe-length 'elsa-type (elsa-make-type Mixed -> Int))
;; (put 'string-bytes 'elsa-type (elsa-make-type ))
;; (put 'string-equal 'elsa-type (elsa-make-type ))
(put 'compare-strings 'elsa-type (elsa-make-type String -> (Int | Nil) -> (Int | Nil) -> String -> (Int | Nil) -> (Int | Nil) -> Bool? -> (Int | T)))
;; (put 'string-lessp 'elsa-type (elsa-make-type ))
;; (put 'string-collate-lessp 'elsa-type (elsa-make-type ))
;; (put 'string-collate-equalp 'elsa-type (elsa-make-type ))
;; (put 'append 'elsa-type (elsa-make-type ))
;; (put 'concat 'elsa-type (elsa-make-type ))
;; (put 'vconcat 'elsa-type (elsa-make-type ))
;; (put 'copy-sequence 'elsa-type (elsa-make-type ))
;; (put 'string-make-multibyte 'elsa-type (elsa-make-type ))
;; (put 'string-make-unibyte 'elsa-type (elsa-make-type ))
;; (put 'string-as-unibyte 'elsa-type (elsa-make-type ))
;; (put 'string-as-multibyte 'elsa-type (elsa-make-type ))
;; (put 'string-to-multibyte 'elsa-type (elsa-make-type ))
;; (put 'string-to-unibyte 'elsa-type (elsa-make-type ))
;; (put 'copy-alist 'elsa-type (elsa-make-type ))
;; (put 'substring 'elsa-type (elsa-make-type ))
;; (put 'substring-no-properties 'elsa-type (elsa-make-type ))
(put 'nthcdr 'elsa-type (elsa-make-type Int -> List -> Mixed))
;; TODO: once generics are introduced this can turn into
;; "Int -> List a -> a" and similarly for elt
(put 'nth 'elsa-type (elsa-make-type Int -> List -> Mixed))
(put 'elt 'elsa-type (elsa-make-type Sequence -> Int -> Mixed))
;; (put 'member 'elsa-type (elsa-make-type ))
;; (put 'memq 'elsa-type (elsa-make-type ))
;; (put 'memql 'elsa-type (elsa-make-type ))
;; TODO: this can be a -> [Mixed] -> Cons a Mixed
(put 'assq 'elsa-type (elsa-make-type Mixed -> [Mixed] -> Cons))
(put 'assoc 'elsa-type (elsa-make-type Mixed -> [Mixed] -> Cons))
;; (put 'rassq 'elsa-type (elsa-make-type ))
;; (put 'rassoc 'elsa-type (elsa-make-type ))
;; (put 'delq 'elsa-type (elsa-make-type ))
;; (put 'delete 'elsa-type (elsa-make-type ))
;; (put 'nreverse 'elsa-type (elsa-make-type ))
;; (put 'reverse 'elsa-type (elsa-make-type ))
;; (put 'sort 'elsa-type (elsa-make-type ))
;; (put 'plist-get 'elsa-type (elsa-make-type ))
;; (put 'get 'elsa-type (elsa-make-type ))
;; (put 'plist-put 'elsa-type (elsa-make-type ))
;; (put 'put 'elsa-type (elsa-make-type ))
;; (put 'lax-plist-get 'elsa-type (elsa-make-type ))
;; (put 'lax-plist-put 'elsa-type (elsa-make-type ))
;; (put 'eql 'elsa-type (elsa-make-type ))
;; (put 'equal 'elsa-type (elsa-make-type ))
;; (put 'equal-including-properties 'elsa-type (elsa-make-type ))
;; (put 'fillarray 'elsa-type (elsa-make-type ))
;; (put 'clear-string 'elsa-type (elsa-make-type ))
;; (put 'nconc 'elsa-type (elsa-make-type ))
;; TODO: generic
(put 'mapconcat 'elsa-type (elsa-make-type (Mixed -> String) -> [Mixed] -> String -> String))
;; (put 'mapcar 'elsa-type (elsa-make-type ))
;; (put 'mapc 'elsa-type (elsa-make-type ))
;; (put 'yes-or-no-p 'elsa-type (elsa-make-type ))
;; (put 'load-average 'elsa-type (elsa-make-type ))
;; (put 'featurep 'elsa-type (elsa-make-type ))
;; (put 'provide 'elsa-type (elsa-make-type ))
;; (put 'require 'elsa-type (elsa-make-type ))
;; (put 'plist-member 'elsa-type (elsa-make-type ))
;; (put 'widget-put 'elsa-type (elsa-make-type ))
;; (put 'widget-get 'elsa-type (elsa-make-type ))
;; (put 'widget-apply 'elsa-type (elsa-make-type ))
;; (put 'locale-info 'elsa-type (elsa-make-type ))
;; (put 'base64-encode-region 'elsa-type (elsa-make-type ))
;; (put 'base64-encode-string 'elsa-type (elsa-make-type ))
;; (put 'base64-decode-region 'elsa-type (elsa-make-type ))
;; (put 'base64-decode-string 'elsa-type (elsa-make-type ))
;; (put 'sxhash 'elsa-type (elsa-make-type ))
;; (put 'make-hash-table 'elsa-type (elsa-make-type ))
;; (put 'copy-hash-table 'elsa-type (elsa-make-type ))
;; (put 'hash-table-count 'elsa-type (elsa-make-type ))
;; (put 'hash-table-rehash-size 'elsa-type (elsa-make-type ))
;; (put 'hash-table-rehash-threshold 'elsa-type (elsa-make-type ))
;; (put 'hash-table-size 'elsa-type (elsa-make-type ))
;; (put 'hash-table-test 'elsa-type (elsa-make-type ))
;; (put 'hash-table-weakness 'elsa-type (elsa-make-type ))
;; (put 'hash-table-p 'elsa-type (elsa-make-type ))
;; (put 'clrhash 'elsa-type (elsa-make-type ))
;; (put 'gethash 'elsa-type (elsa-make-type ))
;; (put 'puthash 'elsa-type (elsa-make-type ))
;; (put 'remhash 'elsa-type (elsa-make-type ))
;; (put 'maphash 'elsa-type (elsa-make-type ))
;; (put 'define-hash-table-test 'elsa-type (elsa-make-type ))
;; (put 'md5 'elsa-type (elsa-make-type ))
;; (put 'secure-hash 'elsa-type (elsa-make-type ))


;; File: dired.c
(put 'directory-files 'elsa-type (elsa-make-type String -> Mixed -> Mixed -> Mixed -> [String]))
(put 'directory-files-and-attributes 'elsa-type (elsa-make-type String -> Mixed -> Mixed -> Mixed -> Mixed -> [[Mixed]] ))
(put 'file-name-completion 'elsa-type (elsa-make-type String -> String -> (String -> Bool) | Nil -> String | Nil | T))
(put 'file-name-all-completions 'elsa-type (elsa-make-type String -> String -> [String]))
(put 'file-attributes 'elsa-type (elsa-make-type String -> [Mixed]))
(put 'file-attributes-lessp 'elsa-type (elsa-make-type [Mixed] -> [Mixed] -> Bool))
(put 'system-users 'elsa-type (elsa-make-type [String]))
(put 'system-groups 'elsa-type (elsa-make-type [String]))


;; File: editfns.c
(put 'char-to-string 'elsa-type (elsa-make-type Int -> String))
(put 'byte-to-string 'elsa-type (elsa-make-type Int -> String))
(put 'string-to-char 'elsa-type (elsa-make-type String -> Int))
(put 'point 'elsa-type (elsa-make-type Int))
(put 'point-marker 'elsa-type (elsa-make-type Marker))
(put 'goto-char 'elsa-type (elsa-make-type Int | Marker -> Int))
;; (put 'region-beginning 'elsa-type (elsa-make-type))
;; (put 'region-end 'elsa-type (elsa-make-type))
;; (put 'mark-marker 'elsa-type (elsa-make-type))
;; (put 'get-pos-property 'elsa-type (elsa-make-type))
;; (put 'delete-field 'elsa-type (elsa-make-type))
;; (put 'field-string 'elsa-type (elsa-make-type))
;; (put 'field-string-no-properties 'elsa-type (elsa-make-type))
;; (put 'field-beginning 'elsa-type (elsa-make-type))
;; (put 'field-end 'elsa-type (elsa-make-type))
;; (put 'constrain-to-field 'elsa-type (elsa-make-type))
(put 'line-beginning-position 'elsa-type (elsa-make-type Int))
(put 'line-end-position 'elsa-type (elsa-make-type Int))
;; (put 'save-excursion 'elsa-type (elsa-make-type))
;; (put 'save-current-buffer 'elsa-type (elsa-make-type))
(put 'buffer-size 'elsa-type (elsa-make-type Buffer? -> Int))
(put 'point-min 'elsa-type (elsa-make-type Int))
(put 'point-min-marker 'elsa-type (elsa-make-type Marker))
(put 'point-max 'elsa-type (elsa-make-type Int))
(put 'point-max-marker 'elsa-type (elsa-make-type Marker))
(put 'gap-position 'elsa-type (elsa-make-type Int))
(put 'gap-size 'elsa-type (elsa-make-type Int))
;; (put 'position-bytes 'elsa-type (elsa-make-type))
;; (put 'byte-to-position 'elsa-type (elsa-make-type))
;; (put 'following-char 'elsa-type (elsa-make-type))
;; (put 'preceding-char 'elsa-type (elsa-make-type))
(put 'bobp 'elsa-type (elsa-make-type Bool))
(put 'eobp 'elsa-type (elsa-make-type Bool))
(put 'bolp 'elsa-type (elsa-make-type Bool))
(put 'eolp 'elsa-type (elsa-make-type Bool))
;; (put 'char-after 'elsa-type (elsa-make-type))
;; (put 'char-before 'elsa-type (elsa-make-type))
;; (put 'user-login-name 'elsa-type (elsa-make-type))
;; (put 'user-real-login-name 'elsa-type (elsa-make-type))
;; (put 'user-uid 'elsa-type (elsa-make-type))
;; (put 'user-real-uid 'elsa-type (elsa-make-type))
;; (put 'group-gid 'elsa-type (elsa-make-type))
;; (put 'group-real-gid 'elsa-type (elsa-make-type))
;; (put 'user-full-name 'elsa-type (elsa-make-type))
;; (put 'system-name 'elsa-type (elsa-make-type))
;; (put 'emacs-pid 'elsa-type (elsa-make-type))
;; (put 'current-time 'elsa-type (elsa-make-type))
;; (put 'time-add 'elsa-type (elsa-make-type))
;; (put 'time-subtract 'elsa-type (elsa-make-type))
;; (put 'time-less-p 'elsa-type (elsa-make-type))
;; (put 'get-internal-run-time 'elsa-type (elsa-make-type))
;; (put 'float-time 'elsa-type (elsa-make-type))
;; (put 'format-time-string 'elsa-type (elsa-make-type))
;; (put 'decode-time 'elsa-type (elsa-make-type))
;; (put 'encode-time 'elsa-type (elsa-make-type))
;; (put 'current-time-string 'elsa-type (elsa-make-type))
;; (put 'current-time-zone 'elsa-type (elsa-make-type))
;; (put 'set-time-zone-rule 'elsa-type (elsa-make-type))
;; TODO: rewrite as (String | Int)... when that syntax is available
(put 'insert 'elsa-type (elsa-make-type Variadic (String | Int) -> Nil))
;; (put 'insert-and-inherit 'elsa-type (elsa-make-type))
;; (put 'insert-before-markers 'elsa-type (elsa-make-type))
;; (put 'insert-before-markers-and-inherit 'elsa-type (elsa-make-type))
;; (put 'insert-char 'elsa-type (elsa-make-type))
;; (put 'insert-byte 'elsa-type (elsa-make-type))
;; (put 'buffer-substring 'elsa-type (elsa-make-type))
;; (put 'buffer-substring-no-properties 'elsa-type (elsa-make-type))
;; (put 'buffer-string 'elsa-type (elsa-make-type))
;; (put 'insert-buffer-substring 'elsa-type (elsa-make-type))
;; (put 'compare-buffer-substrings 'elsa-type (elsa-make-type))
;; (put 'subst-char-in-region 'elsa-type (elsa-make-type))
;; (put 'translate-region-internal 'elsa-type (elsa-make-type))
;; (put 'delete-region 'elsa-type (elsa-make-type))
;; (put 'delete-and-extract-region 'elsa-type (elsa-make-type))
;; (put 'widen 'elsa-type (elsa-make-type))
;; (put 'narrow-to-region 'elsa-type (elsa-make-type))
;; (put 'save-restriction 'elsa-type (elsa-make-type))
;; (put 'message 'elsa-type (elsa-make-type))
;; (put 'message-box 'elsa-type (elsa-make-type))
;; (put 'message-or-box 'elsa-type (elsa-make-type))
;; (put 'current-message 'elsa-type (elsa-make-type))
;; (put 'propertize 'elsa-type (elsa-make-type))
(put 'format 'elsa-type (elsa-make-type String -> Mixed... -> String))
;; (put 'format-message 'elsa-type (elsa-make-type))
;; (put 'char-equal 'elsa-type (elsa-make-type))
;; (put 'transpose-regions 'elsa-type (elsa-make-type))

;; File: alloc.c
(put 'make-string 'elsa-type (elsa-make-type Int -> Int -> String))
(put 'make-bool-vector 'elsa-type (elsa-make-type Int -> Bool -> Boolvector))
(put 'bool-vector 'elsa-type (elsa-make-type Mixed... -> Boolvector))
;; TODO: generic type a -> b -> Cons a b...  This fails deriving the
;; type of something like (cons 1 "foo")... it still thinks the return
;; type is Cons Mixed Mixed
(put 'cons 'elsa-type (elsa-make-type Mixed -> Mixed -> Cons))
(put 'list 'elsa-type (elsa-make-type Mixed... -> List))
;; TODO: generic type
(put 'make-list 'elsa-type (elsa-make-type Int -> Mixed -> [Mixed]))
(put 'make-vector 'elsa-type (elsa-make-type Int -> Mixed -> Vector Mixed))
(put 'vector 'elsa-type (elsa-make-type Mixed... -> Vector))
;; TODO: how to detect the return type?
(put 'make-byte-code 'elsa-type (elsa-make-type [Symbol] | Int -> String -> Vector Mixed -> Int -> String? -> Mixed -> Mixed))
(put 'make-symbol 'elsa-type (elsa-make-type String -> Symbol))
(put 'make-marker 'elsa-type (elsa-make-type Marker))
;; TODO: add Callable
(put 'make-finalizer 'elsa-type (elsa-make-type Mixed -> Mixed))
;; TODO: generic type
(put 'purecopy 'elsa-type (elsa-make-type Mixed -> Mixed))
(put 'garbage-collect 'elsa-type (elsa-make-type [[Mixed]] | Nil))
;; TODO: make this a constant length list
(put 'memory-info 'elsa-type (elsa-make-type [Int]))
(put 'memory-limit 'elsa-type (elsa-make-type Int))
;; TODO: make this a constant length list
(put 'memory-use-counts 'elsa-type (elsa-make-type [Int]))
;; TODO: generic type
(put 'suspicious-object 'elsa-type (elsa-make-type Mixed -> Mixed))

;; File: cmds.c
(put 'forward-point 'elsa-type (elsa-make-type Int -> Int))
(put 'forward-char 'elsa-type (elsa-make-type Int? -> Nil))
(put 'backward-char 'elsa-type (elsa-make-type Int? -> Nil))
(put 'forward-line 'elsa-type (elsa-make-type Int? -> Int))
(put 'beginning-of-line 'elsa-type (elsa-make-type Int? -> Nil))
(put 'end-of-line 'elsa-type (elsa-make-type Int? -> Nil))
(put 'delete-char 'elsa-type (elsa-make-type Int -> Mixed -> Nil))
(put 'self-insert-command 'elsa-type (elsa-make-type Int -> Nil))

;; File: fileio.c
(put 'file-name-directory 'elsa-type (elsa-make-type String -> String?))

;; File: process.c
(put 'processp 'elsa-type (elsa-make-type Mixed -> Bool))
(put 'get-process 'elsa-type (elsa-make-type String -> Process?))
(put 'delete-process 'elsa-type (elsa-make-type (Process | Buffer | String | Nil) -> Mixed))
(put 'process-status 'elsa-type (elsa-make-type (Process | Buffer | String | Nil) -> Symbol?))
(put 'process-exit-status 'elsa-type (elsa-make-type Process -> Int))
(put 'process-id 'elsa-type (elsa-make-type Process -> Number?))
(put 'process-name 'elsa-type (elsa-make-type Process -> String))
(put 'process-command 'elsa-type (elsa-make-type Process -> List String | Bool))
(put 'process-tty-name 'elsa-type (elsa-make-type Process -> String?))
(put 'set-process-buffer 'elsa-type (elsa-make-type Process Buffer -> Buffer))
(put 'process-buffer 'elsa-type (elsa-make-type Process -> Buffer))
(put 'process-mark 'elsa-type (elsa-make-type Process -> Marker))
(put 'set-process-filter 'elsa-type (elsa-make-type Process -> (Process -> String -> Nil) -> Mixed))
(put 'process-filter 'elsa-type (elsa-make-type Process -> (Process -> String -> Nil)))
(put 'set-process-sentinel 'elsa-type (elsa-make-type Process -> (Process -> String -> Nil) -> Mixed))
(put 'process-sentinel 'elsa-type (elsa-make-type Process -> (Process -> String -> Nil)))
(put 'set-process-window-size 'elsa-type (elsa-make-type Process -> Int -> Int -> Bool))
(put 'set-process-inherit-coding-system-flag 'elsa-type (elsa-make-type Process -> Bool -> Bool))
(put 'set-process-query-on-exit-flag 'elsa-type (elsa-make-type Process -> Bool -> Bool))
(put 'process-query-on-exit-flag 'elsa-type (elsa-make-type Process -> Bool))
;; TODO process-contact has an &optional parameter:
(put 'process-contact 'elsa-type (elsa-make-type Process -> (Bool | Symbol | Nil) -> Mixed))
(put 'process-plist 'elsa-type (elsa-make-type Process -> List Mixed))
(put 'set-process-plist 'elsa-type (elsa-make-type Process -> List Mixed -> List Mixed))
;; (put 'process-connection 'elsa-type (elsa-make-type))
(put 'process-type 'elsa-type (elsa-make-type (Process | Buffer | String | Nil) -> Symbol))
;; TODO format-network-address has an &optional parameter:
(put 'format-network-address 'elsa-type (elsa-make-type (Vector Int | String | Cons) -> Bool? -> (String | Nil)))
(put 'process-list 'elsa-type (elsa-make-type () -> List Process))
(put 'make-process 'elsa-type (elsa-make-type List Mixed -> Process))
(put 'make-pipe-process 'elsa-type (elsa-make-type List Mixed -> Process))
(put 'process-datagram-address 'elsa-type (elsa-make-type Process -> Mixed))
(put 'set-process-datagram-address 'elsa-type (elsa-make-type Process -> Mixed -> Mixed | Nil))
;; TODO set-network-process-option has an &optional parameter:
(put 'set-network-process-option 'elsa-type (elsa-make-type Process -> Symbol -> Mixed -> Bool? -> Bool))
(put 'serial-process-configure 'elsa-type (elsa-make-type List Mixed -> Mixed))
(put 'make-serial-process 'elsa-type (elsa-make-type List Mixed -> Process))
(put 'make-network-process 'elsa-type (elsa-make-type List Mixed -> Process))
(put 'network-interface-list 'elsa-type (elsa-make-type () -> List (Cons String Mixed)))
(put 'network-interface-info 'elsa-type (elsa-make-type String -> (List | Nil)))
;; TODO accept-process-output has an &optional parameter:
(put 'accept-process-output 'elsa-type (elsa-make-type Process? -> Number -> Nil -> (Bool | Int) -> Bool))
(put 'internal-default-process-filter 'elsa-type (elsa-make-type Process -> String -> Mixed))
(put 'process-send-region 'elsa-type (elsa-make-type Process -> Int -> Int -> Mixed))
(put 'process-send-string 'elsa-type (elsa-make-type Process -> String -> Mixed))
;; TODO process-running-child-p has an &optional parameter:
(put 'process-running-child-p 'elsa-type (elsa-make-type Process -> (Int | Bool)))
;; TODO interrupt-process has an &optional parameter:
(put 'interrupt-process 'elsa-type (elsa-make-type (Process | Buffer | String | Nil) -> Symbol? -> Mixed))
;; TODO kill-process has an &optional parameter:
(put 'kill-process 'elsa-type (elsa-make-type (Process | String | Nil) -> Symbol? -> Mixed))
;; TODO quit-process has an &optional parameter:
(put 'quit-process 'elsa-type (elsa-make-type (Process | String | Nil) -> Symbol? -> Mixed))
;; TODO stop-process has an &optional parameter:
(put 'stop-process 'elsa-type (elsa-make-type (Process | String | Nil) -> Symbol? -> Mixed))
;; TODO continue-process has an &optional parameter:
(put 'continue-process 'elsa-type (elsa-make-type (Process | String | Nil) -> Symbol? -> Mixed))
(put 'signal-process 'elsa-type (elsa-make-type (Process | Int) -> (Symbol | Int) -> Mixed))
;; TODO process-send-eof has an &optional parameter:
(put 'process-send-eof 'elsa-type (elsa-make-type (Process | Buffer | String | Nil) -> Mixed))
(put 'internal-default-process-sentinel 'elsa-type (elsa-make-type Process -> String -> Mixed))
(put 'set-process-coding-system 'elsa-type (elsa-make-type Process -> Symbol -> Symbol -> Mixed))
(put 'process-coding-system 'elsa-type (elsa-make-type Process -> Cons Symbol Symbol))
(put 'set-process-filter-multibyte 'elsa-type (elsa-make-type Process -> Bool -> Mixed))
(put 'process-filter-multibyte-p 'elsa-type (elsa-make-type Process -> Bool))
(put 'get-buffer-process 'elsa-type (elsa-make-type (Buffer | String) -> Process?))
(put 'process-inherit-coding-system-flag 'elsa-type (elsa-make-type Process -> Bool))
(put 'waiting-for-user-input-p 'elsa-type (elsa-make-type () -> Bool))
(put 'list-system-processes 'elsa-type (elsa-make-type () -> (List Int | Nil)))
(put 'process-attributes 'elsa-type (elsa-make-type Int -> List (Cons Symbol Mixed)))

;; File: syntax.c
;; (put 'syntax-table-p 'elsa-type (elsa-make-type))
;; (put 'syntax-table 'elsa-type (elsa-make-type))
;; (put 'standard-syntax-table 'elsa-type (elsa-make-type))
;; (put 'copy-syntax-table 'elsa-type (elsa-make-type))
;; (put 'set-syntax-table 'elsa-type (elsa-make-type))
(put 'char-syntax 'elsa-type (elsa-make-type Int -> Int))
;; (put 'matching-paren 'elsa-type (elsa-make-type))
;; (put 'string-to-syntax 'elsa-type (elsa-make-type))
;; (put 'modify-syntax-entry 'elsa-type (elsa-make-type))
;; (put 'internal-describe-syntax-value 'elsa-type (elsa-make-type))
;; (put 'forward-word 'elsa-type (elsa-make-type))
;; (put 'skip-chars-forward 'elsa-type (elsa-make-type))
;; (put 'skip-chars-backward 'elsa-type (elsa-make-type))
;; (put 'skip-syntax-forward 'elsa-type (elsa-make-type))
;; (put 'skip-syntax-backward 'elsa-type (elsa-make-type))
;; (put 'forward-comment 'elsa-type (elsa-make-type))
;; (put 'scan-lists 'elsa-type (elsa-make-type))
;; (put 'scan-sexps 'elsa-type (elsa-make-type))
;; (put 'backward-prefix-chars 'elsa-type (elsa-make-type))
;; (put 'parse-partial-sexp 'elsa-type (elsa-make-type))

;; File: keymap.c
(put 'single-key-description 'elsa-type (elsa-make-type Int -> Mixed -> String))

;; File: buffer.c
;; buffer-live-p
;; buffer-list
;; get-buffer
;; get-file-buffer
;; get-buffer-create
;; make-indirect-buffer
;; generate-new-buffer-name
;; buffer-name
;; buffer-file-name
;; buffer-base-buffer
;; buffer-local-value
;; buffer-local-variables
;; buffer-modified-p
;; force-mode-line-update
;; set-buffer-modified-p
;; restore-buffer-modified-p
;; buffer-modified-tick
;; buffer-chars-modified-tick
;; rename-buffer
;; other-buffer
;; buffer-enable-undo
;; kill-buffer
;; bury-buffer-internal
;; set-buffer-major-mode
;; current-buffer
;; set-buffer
;; barf-if-buffer-read-only
;; erase-buffer
;; buffer-swap-text
;; set-buffer-multibyte
;; kill-all-local-variables
;; overlayp
;; make-overlay
;; move-overlay
;; delete-overlay
;; delete-all-overlays
;; TODO: overlay type
(put 'overlay-start 'elsa-type (elsa-make-type Mixed -> Int))
;; TODO: overlay type
(put 'overlay-end 'elsa-type (elsa-make-type Mixed -> Int))
;; overlay-buffer
;; overlay-properties
;; overlays-at
;; overlays-in
;; next-overlay-change
;; previous-overlay-change
;; overlay-lists
;; overlay-recenter
;; overlay-get
;; overlay-put

;; boolean functions
(put 'not 'elsa-type (elsa-make-type Mixed -> Bool))

;; string functions
(put 'split-string 'elsa-type (elsa-make-type String -> String -> List String))
(put 'concat 'elsa-type (elsa-make-type String... -> String))

;; sequence functions

;; built-in variables
(put 'command-line-args-left 'elsa-type-var (elsa-make-type List String | Nil))
(put 'major-mode 'elsa-type-var (elsa-make-type Symbol))
(put 'system-type 'elsa-type-var (elsa-make-type Symbol))
(put 'last-command-event 'elsa-type-var (elsa-make-type Int))
(put 'load-file-name 'elsa-type-var (elsa-make-type String?))
(put 'buffer-file-name 'elsa-type-var (elsa-make-type String?))

;; File: callproc.c
(put 'shell-file-name 'elsa-type-var (elsa-make-type String))
(put 'exec-path 'elsa-type-var (elsa-make-type [String]))
(put 'exec-suffixes 'elsa-type-var (elsa-make-type [String]))
(put 'exec-directory 'elsa-type-var (elsa-make-type String))
(put 'data-directory 'elsa-type-var (elsa-make-type String))
(put 'doc-directory 'elsa-type-var (elsa-make-type String))
(put 'configure-info-directory 'elsa-type-var (elsa-make-type String))
(put 'shared-game-score-directory 'elsa-type-var (elsa-make-type String?))
(put 'initial-environment 'elsa-type-var (elsa-make-type [String]))
(put 'process-environment 'elsa-type-var (elsa-make-type [String]))

;; help.el
(put 'help-function-arglist 'elsa-type (elsa-make-type Symbol -> List Symbol))

(provide 'elsa-typed-builtin)
