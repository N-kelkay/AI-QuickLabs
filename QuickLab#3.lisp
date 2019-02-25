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

;(imember-p 'x '(y x z))

;5
(defun combinations (x y z)
  (setf comb '())
  (loop
   ; (((unless (not (null x)))(unless (not (null y)))(unless (not (null z)))) (return comb))
    (append (append (car x) (car y)) (car z))
    (setf x (cdr x))
    (setf y (cdr y))
    (setf z (cdr z))
    ))

(defun combinations2 (x y z)
  (loop 
    for a in x
    for b in y
    for c in z
    collect (list (list a b) c) ))

;(combinations2 '(a b c) '(1 2) '(x y))

(defun remove-redundancies (l)
    (setq finalList '())
    (dolist (i l finalList)
        (cond 
            (
             (not (member i finalList))
                 
             (setq finalList (append finalList (list i)))             
            )
        )
    )
 )

