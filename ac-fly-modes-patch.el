
(defcustom ac-stop-flymake-on-completing t
  "Non-nil means disble flymake temporarily on completing."
  :type 'boolean
  :group 'auto-complete)
;____________________________________________



(defcustom ac-pause-fly-modes-on-completing 't
  "A non-nil value indicates that flymake and flycheck should be temporarily disabled when ac completion triggers.
   If value is a cons cell, both elements are tested: the result for the car applies ti to flymake and the result for the cdr applies to flycheck.
   If value is not a cons cell, it is tested as a single element and the result applies to both."
  :type '(choice 'boolean 'boolean '(cons 'boolean 'boolean))
  :group 'auto-complete)


(defcustom ac-stop-flycheck-on-completing `(nil nil ac-stop-flymake-on-completing)
  ""
  :type  '(list 'boolean 'boolean 'variable)
  :group 'auto-complete
;  :set-after 'ac-stop-flymake-on-completing
  :get (lambda (NAME)
         (if (car NAME) 
           (eval (caddr NAME))
           (cdr NAME)))
  :set (lambda (NAME VAL) 
         (cond 
           ((eq VAL 'nil)      (progn (setf (car NAME) t) (setf (cadr NAME) nil)))
           ((eq VAL t)         (progn (setf (car NAME) t) (setf (cadr NAME) t)))
           ((eq VAL :shadow)   (progn (setf (car NAME) nil) (setf (cadr NAME) nil) ))))
  :initialize 'custom-set-default)


(defun ac-syntax-checker-workaround ()
  (if ac-stop-flymake-on-completing
      (progn
        (make-local-variable 'ac-flycheck-poll-completion-end-timer)
        (when (require 'flymake nil t)
          (defadvice flymake-on-timer-event (around ac-flymake-stop-advice activate)
            (unless ac-completing
              ad-do-it)))
        (when (require 'flycheck nil t)
          (defadvice flycheck-handle-idle-change (around ac-flycheck-stop-advice activate)
            (if ac-completing
                (setq ac-flycheck-poll-completion-end-timer
                      (run-at-time ac-flycheck-poll-completion-end-interval
                                   nil
                                   #'flycheck-handle-idle-change))
              ad-do-it))))
    (when (featurep 'flymake)
      (ad-disable-advice 'flymake-on-timer-event 'around 'ac-flymake-stop-advice))
    (when (featurep 'flycheck)
      (ad-disable-advice 'flycheck-handle-idle-change 'around 'ac-flycheck-stop-advice))))
