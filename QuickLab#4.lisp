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

