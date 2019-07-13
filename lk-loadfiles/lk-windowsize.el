(defun
   lk-windowsize   (HORIZONTAL? TOP/LEFT? DELTA)
   "Resizes the selected window by moving one of its edges.

    If HORIZONTAL? is non-nil, the left or right edge is specified to move.
    If TOP/LEFT? is non-nil, the top or left edge is specified to move.
    If using the edge so specified would attempt to move a frame border,
	the edge to move wraps to opposite side of the window.

    AMOUNT specifies the movement distance (in lines/columns).  Positive
    values specify downard/rightward motion, and negative values specify
    leftward/upward motion."

   (adjust-window-trailing-edge
      (window-in-direction
          (if HORIZONTAL?
                 'left
               'above)
          (if TOP/LEFT?
                 (window-in-direction (if HORIZONTAL? 'right 'below))
               'nil ))
      DELTA
      HORIZONTAL? ))


(defun window-top-up  (&optional DISTANCE)
  ""(interactive "P")
  (lk-windowsize  'nil  'nil  (* '-1 (or DISTANCE 1)) ))
 ;
(defun window-top-down  (&optional DISTANCE)
  ""(interactive "P")
  (lk-windowsize  'nil  'nil  (or DISTANCE 1) ))
 ;
(defun window-bottom-up  (&optional DISTANCE)
  ""(interactive "P")
  (lk-windowsize  'nil  't  (* '-1 (or DISTANCE 1)) ))
 ;
(defun window-bottom-down  (&optional DISTANCE)
  ""(interactive "P")
  (lk-windowsize  'nil  't  (or DISTANCE 1)) )
 ;
(defun window-left-out  (&optional DISTANCE)
  ""(interactive "P")
  (lk-windowsize  't  'nil  (* '-1 (or DISTANCE 1)) ))
 ;
(defun window-left-in  (&optional DISTANCE)
  ""(interactive "P")
  (lk-windowsize  't  'nil  (or DISTANCE 1)) )
 ;
(defun window-right-out  (&optional DISTANCE)
  ""(interactive "P")
  (lk-windowsize  't  't  (or DISTANCE 1) ))
 ;
(defun window-right-in  (&optional DISTANCE)
  ""(interactive "P")
  (lk-windowsize  't  't  (* '-1 (or DISTANCE 1)) ))

