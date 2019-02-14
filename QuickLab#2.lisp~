; Natenael Kelkay
; Quick Lab #2

; 1
(defun our-last (a)
  (cond
   ((null a) nil)
   ((equalp (length a) 1) (car a))
   (t (our-last (cdr a)))))

;2
(defun count-x-in-y (x y)
  (cond
   ((null y) 0)
   ((equalp x (car y)) (1+ (count-x-in-y x (cdr y))))
   (t (count-x-in-y x (cdr y)))))

;******* #3 (start) **********
;3
(defun average-r (a)
  (cond
   ((null a) nil)
   (t (/ (numTotal a) (numCount a))) ))

;Counts the number of number elements in a list - helper for #3
(defun numCount (a)
  (cond
   ((null a) 0)
   ((integerp (car a)) (1+ (totlen (cdr a)) ))
   (t (totlen (cdr a)))))

;Adds up the numger in a list - Helper for 3
(defun numTotal (a)
  (cond
   ((null a) 0)
   ((integerp (car a)) (+ (car a) (numTotal (cdr a))))
   (t (numTotal (cdr a)))))

;******* #3 (End) **********

;4
(defun squash-list (a)
  (cond
   ((null a) nil)
   ((listp (car a)) (squash-list (append (car a) (cdr a))))
   (t (cons (car a) (squash-list (cdr a))))))

;5
(defun our-member-p (x y)
  (cond
   ((null y) nil)
   ((equalp x (car y)) (car y))
   (t (our-member-p x (cdr y))) ))

;Helper for 5
(defun memberHelp (x y)
  (cond
   ((null y) nil)
   ((equalp x (car y)) (car y))
   (t (our-member-p x (cdr y))) ))