
(eval-and-compile
  
(defun
   regexp-kill-buffers-named  (REGEX &optional output-temp-buffer)
   "Kills buffers with names matching a regular expression.
    Returns a list of buffer names which were killed.

    Called interatively, prompts for a regular expression and
    displays the result in a temp buffer.

    If called from lisp, a string specifying REGEX must be supplied
    as the first argument. The second argument is optional: if
    present and non-nil, output is displayed in a temp buffer, as
    done for interactive calls."
   (interactive "sregular expression: \nd")

  (let ((output-buffer (if output-temp-buffer
                              (progn
                                (with-output-to-temp-buffer "*buffers killed*" nil )
                                (select-window (get-buffer-window "*buffers killed*"))
                                (read-only-mode 'toggle)
                                (window-buffer)) ))
        (on-matching `(prog1
                         (cons next-buffer-name  acc)
                         (kill-buffer next-buffer)
                         ,(if output-temp-buffer
                                `(princ (concat next-buffer-name "\n")  output-buffer))) ))
     (seq-reduce
       (lambda (acc next-buffer)
         (let ((next-buffer-name  (buffer-name next-buffer)))
           (if (string-match-p REGEX  next-buffer-name)
                   (eval on-matching)
                acc )))
       (buffer-list)
        nil )))


;; tests!

(defun test--regexp-kill-buffers-named () 

  (eval `(let*-while-cond

     (test-result-buffer
             (progn
                 (with-output-to-temp-buffer "*test results*" nil )
                 (select-window (get-buffer-window "*test results*"))
                 (read-only-mode 'toggle)
                 (window-buffer) ))

      (return-value-expected
             '("tmp1" "tmp2" "tmp3") )

      (return-value-interactive-actual
             (progn
                 (find-file "~/tmp1")
                 (find-file "~/tmp2")
                 (find-file "~/tmp3")
                 (regexp-kill-buffers-named "tmp" t))
             (princ
               "FAIL (interactive):  regexp-kill-buffers-named returned nil.\n"
               test-result-buffer) )

      (return-value-interactive-check
             (equal
               return-value-expected
               return-value-interactive-actual )
             (princ
               (concat
                 "FAIL (interactive):  unexpected return value.\n"
                 return-value-actual )
               test-result-buffer) )

      (buffer-output-expected
             "tmp3\ntmp2\ntmp1\n\n" )

      (buffer-output-interactive-actual
             (and (get-buffer "*buffers killed*")
                  (select-window (get-buffer-window "*buffers killed*") )
                  (buffer-string) )
             (princ
               "FAIL (interactive):  empty temp buffer or temp buffer not created.\n"
               test-result-buffer) )

      (buffer-output-interactive-check
             (equal
               buffer-output-expected
               buffer-output-interactive-actual)
             (princ 
               (concat
                 "FAIL (interactive):  unexpected buffer output.\n"
                 buffer-output-interactive-actual)
               test-result-buffer) )

      (test-results-interactive
             (and  (kill-buffer "*buffers killed*")
                    "Interactive tests passed.\n")
             (princ
               "FAIL:  interactive tests passed, killing output buffer failed.\n"
               test-result-buffer))

      (return-value-noninteractive-actual
             (progn
                 (find-file "~/tmp1")
                 (find-file "~/tmp2")
                 (find-file "~/tmp3")
                 (regexp-kill-buffers-named "tmp"))
             (princ
               "FAIL (noninteractive):  regexp-kill-buffers-named returned nil.\n"
               test-result-buffer) )

      (return-value-noninteractive-check
             (equal
               return-value-expected
               return-value-noninteractive-actual )
             (princ
               (concat
                 "FAIL (noninteractive):  unexpected return value.\n"
                 return-value-noninteractive-actual )
               test-result-buffer) )

      (buffer-output-noninteractive-check
             (not (get-buffer "*buffers killed*"))
             (princ 
               "FAIL (noninteractive):  output buffer created.\n"
               test-result-buffer) )

      (test-results-noninteractive
             "Noninteractive tests passed.\n" )

      (:default 
             (princ
               (concat
                 test-results-interactive
                 test-results-noninteractive )
               test-result-buffer)) )) ))
