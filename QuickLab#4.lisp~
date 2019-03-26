; Natenael Kelkay
; Quick Lab 4

;1
(defun maxNum (&rest args)
    (setf tempMax (car args))
    
    (dolist (indArg args tempMax)
        
        (cond ((> indArg tempMax)
               
               (setf tempMax indArg)))))

(defun minNum (&rest args)
    (setf tempMax (car args))
    
    (dolist (indArg args tempMax)
        
        (cond ((< indArg tempMax)
               
               (setf tempMax indArg)))))

;2
(defun calcVal (obj list)
  (dolist (value list)
    (print value)
    (format t "~8d" (funcall obj value))))

;3
(defun sq (x)
  (* x x))

(defun recp (x)
  (/ 1 x))

(defun n-even (x)
  (cond
   ((not (oddp x)) x)
   (t (+ x 1))))

;4
(defun tableP (obj low up)
    (let ((numlist '()))
    (setf numList (cons low numList))
    (loop
      (unless (not (equalp low up)) (return numList))
      (setf low (+ low 1))
      (setf numList (cons low numList)))
      (setf numlist (cdr numlist))
      (setf numlist (reverse numlist))
         
      (funcall obj 'sq numlist)
      ))
