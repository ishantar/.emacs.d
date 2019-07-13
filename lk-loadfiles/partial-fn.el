
;; required utility

(defun last-pair (LIST)
   (if (consp LIST) (cl-loop 
                       with new-head = LIST
                       while (cdr new-head)
                           do (setq new-head (cdr new-head))
                       finally return new-head) 
       (error "argument must be a nonempty list (consp)")))


;; nestable, positionable, n-ary argument subgroups!
(defmacro %p (&rest PREST)
  (let ((fna   (car PREST))
        (pargs (cdr PREST)))
    (eval
     `(lambda (&rest EREST)
       (let* ((fnc (if ,(functionp fna) ',fna (eval ',fna)))
              (rargs ',pargs)
             (args (if (eq :a (car rargs))
                           (progn
                              (setf  (cdr (last-pair EREST)) (cdr rargs) )
                              EREST )
                        (progn
                           (setf  (cdr (last-pair rargs)) EREST )
                            rargs ))))
         (apply fnc args) )))))

(defun %λ (&rest PARGS)
  (eval  `(lambda (&rest CARGS)
   (letrec ((fnc #',(car PARGS))
            (spec ',(cdr PARGS))
            (map-arg #'(lambda (e)
                (if (listp e)
                       (mapcar map-arg e)
                     (if (keywordp e)
                            (seq-elt 
                              CARGS
                              (- (aref (symbol-name e) 1) 49))
                          e)))))
     (if (functionp fnc)
            (apply fnc (mapcar map-arg spec))
          (eval (cons ',(car PARGS) (mapcar map-arg spec)) ))))))
