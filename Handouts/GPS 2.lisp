(defstruct op name add-list del-list preconds)
(defparameter *state* nil "The current state: a list of conditions.")
(defparameter *ops* nil "The list of available operators.")

; initial state:  son-at-home & car-works
; goal state:  son-at-school

(defparameter *school-ops*  ; getting son to school operations become using-ops in GPS
  (list
   (make-op :name 'drive-son-to-school
            :preconds '(son-at-home car-works)
            :add-list '(son-at-school)
            :del-list '(son-at-home))
   (make-op :name 'shop-installs-battery
            :preconds '(car-needs-battery shop-knows-problem shop-has-money)
            :add-list '(car-works))
   (make-op :name 'tell-shop-problem
            :preconds '(in-communication-with-shop)
            :add-list '(shop-knows-problem))
   (make-op :name 'telephone-shop
            :preconds '(know-phone-number)
            :add-list '(in-communication-with-shop))
   (make-op :name 'look-up-number
            :preconds '(have-phone-book)
            :add-list '(know-phone-number))
   (make-op :name 'give-shop-money
            :preconds '(have-money)
            :add-list '(shop-has-money)
            :del-list '(have-money))
   ))

(defun GPS (start goals using-ops)
  "General Problem Solver: achieve all goals using *ops*."
  (setf *state* start)
  (setf *ops* using-ops)
  (if (every #'achieve goals) 'solved))

(defun find-all (item sequence &rest keyword-args
                 &key (test #'eql) test-not &allow-other-keys)
  (if test-not
      (apply #'remove item sequence 
             :test-not (complement test-not) keyword-args)
      (apply #'remove item sequence
             :test (complement test) keyword-args)))
 
(defun appropriate-p (goal op)
  "An op is appropriate to a goal if it is in its add list."
  (member goal (op-add-list op)))

(defun apply-op (op)
  "Applies an operator if its pre-conds are in *state*"
  (cond ((subsetp (op-preconds op) *state*) 
         (print (op-name op))
         (setf *state* (set-difference (op-del-list op) *state*))
         (setf *state* (union (op-add-list op) *state*))
         )))
 
(defun apply-op2 (op)
  "Applies an operator if its pre-conds are in *state*, or another operator can put them there"
  (cond ((every #'achieve  (op-preconds op))
         (print (op-name op))
           (finish-output) 
         (setf *state* (set-difference  *state* (op-del-list op)))
         (setf *state* (union (op-add-list op) *state*))
         )))
 
(defun achieve (goal)
  "A goal is achieved if it already holds,
  or if there is an appropriate op for it that is applicable."
  (or (member goal *state*)   ; checks if goal is an element of current state - if so done!
      (some #'apply-op2       ; try each operator (from the find-all list) in turn and once one works apply it
            (find-all goal *ops* :test #'appropriate-p)) ; returns list of all operators that match - if none
      (format t "Can't achieve goal ~a (state: ~s) ~&" goal *state*) ;side effect because format always returns nil
      ))
  