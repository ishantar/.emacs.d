(defun   reload-buffer  (&optional ASK USE)
  ""
  (interactive "P\ni")
  (let*
   ((original-buffer  (buffer-name (current-buffer)) )

    (target-buffer    (cond (USE USE)
                            (ASK (call-interactively
                                  (lambda (a)""(interactive "bbuffer name: ") a)))
                            (t original-buffer)) )

    (target-file      (and target-buffer
                            (switch-to-buffer target-buffer)
                             buffer-file-name) )

    (work-result      (cond ((not target-file)
                               (concat "Error reloading " target-buffer ": no such file."))
                            ((and (switch-to-buffer target-buffer)
                                   (not (set-buffer-modified-p nil))
                                    (kill-buffer target-buffer)
                                     (find-file target-file))
                               (concat "File reloaded: " target-file))
                            (t
                               (concat "Error reloading file: " target-file))) ))

    (switch-to-buffer original-buffer)
    (prog1 work-result
            (minibuffer-message work-result)) ))


(defun   reload-file-in-buffer  (BUFFER) 
  ""
  (interactive "bbuffer name: ")
  (reload-buffer nil BUFFER) )
