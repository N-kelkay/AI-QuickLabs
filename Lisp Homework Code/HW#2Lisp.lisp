;*********** paper examples (^^) ***********

(defun mys3 (x)
  (do ((i (1- x) (1- i))
       (result x))
      ((= 1 i) result)
    (setq result (* result i))))

;(mys3 4)

(defun mys2 (x)
  (do ((new-list x (cdr new-list))
       (counter 0 (+ 1 counter)))
       ((null new-list) counter)))

;(mys2 '(a b c d g d))

(defun mys (x)
  (do ((to-do x (cdr to-do))
       (new-list nil (cons (car to-do) new-list)))
      ((null to-do) new-list)))

;(mys '(a 5 c))

(defun question-6 (input)
  (let ((y nil))
    (dolist (w input)
      (cond ((numberp w))
            (t (setq y (cons w y)))))
y))

;(question-6 '(numbers -945 34  4 5 6 are my -45 66 life 1 3 4 6))





