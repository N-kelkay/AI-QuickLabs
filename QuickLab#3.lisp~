; Natenael Kelkay
; Quick Lab #3

;2
(defun ilen (list)
  (setq counter 0)
  (do 
      ((z list (cdr z)))
      ((null z) counter)
      (setq counter (1+ counter))))

;3
(defun icount-x-in-y (x y)
  (setf counter 0)
  (dotimes
      (z (length y) counter)
    (if (equalp x (car y)) (setq counter (1+ counter)))
    (setq y (cdr y)) ))

;4
(defun imember-p (x y)
  (loop
    (unless (not (null y)) (return nil))
    (if (equalp x (car y)) (return (car y)))
   (setf y (cdr y)  ) ))

(imember-p 'x '(y x z))
