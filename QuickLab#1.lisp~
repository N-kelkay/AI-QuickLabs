; Natenael Kelkay
; Quick Lab #1

;1
(defun rect-area(num1 num2)
  (* num1 num2))

;2
(defun rev-two (a)
  (list (car (cdr a)) (car a)))

;3
(defun rev-all (a)
  (cond
   ((null a) '())
   (t (append (rev-all (cdr a)) (list (car a)) ) ) ))

;4
(defun len(a)
  (cond
   ((null a) 0)
   (t (1+ (len(cdr a))))))

;5
(defun dottedp (a)
  (cond
   ((atom a) nil)
   ((null (cdr a)) nil)
   ((and (atom (car a)) (atom (cdr a))) t)
   (t nil)))
