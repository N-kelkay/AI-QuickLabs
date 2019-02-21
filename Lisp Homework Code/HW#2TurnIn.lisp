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
  (let ((result (append '() '()))
    (loop
      (cons )))))

;7
(defun question-6 (input)
  (let ((result (append '() '())))
    (dotimes (i x result)
      (integerp i (setf result (cons x result)))) result))

(question-6 '(a 1 2 b 3))


