; Natenael Kelkay
; Lisp homework #2

;3
(defun mystery-fun-4 (x)
  (let ((result 1))
    (dotimes (i x)
      (setf result (* result (+ i 1)))) result))

;4
(defun mystery-fun-5 (x)
  (let ((counter 0))
    (dolist (i x counter)
      (setf counter (+ counter 1))) counter))

;5
(defun mystery-fun-6 (x)
  (setq result nil)
  ;Loop just runs the program again and again, although it does not go throught a list
  ;you have to manualy go through the list
    (loop 
      (unless (not (null x)) (return result))
      
      (setq result (cons (car x) result))

      (setq x (cdr x)) 
      ))

;7
(defun question-6 (input)
  (let ((result '()))
    (dolist (i input result)
      (cond
      ((numberp i) (setf result (cons i result)))
      (t result) )) ))
