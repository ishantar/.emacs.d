(defmacro
   let*-while-cond  (&rest CLAUSES)
  (let  ((clause (car CLAUSES) )
          (REST   (cdr CLAUSES) ))  
   (if (eq (car clause) :default)
          (cadr clause) 
        (eval
          `(let  ((,(car clause) ,(cadr clause) ))
            (if ,(car clause)
                   (let*-while-cond ,@REST)
                 ,(caddr clause))) ))))
