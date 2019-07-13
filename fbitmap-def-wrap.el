(let ((defbitmap
         (lambda ()
          (define-fringe-bitmap 'flycheck-fringe-bitmap-double-arrow
;;;
  (if (daemonp)
      (add-hook 'server-after-make-frame-hook defbitmap)
    (when (fboundp 'define-fringe-bitmap) (funcall defbitmap))))
