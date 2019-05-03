;Natenael Kelkay
;Quick Lab #6

(setf One "****File Path Directory*****") ;/Users/n-kelkay/Desktop/school/AI/QuickLabs/QuickLab\ 6/file1.txt
(setf Two "****File Path Directory*****") ;/Users/n-kelkay/Desktop/school/AI/QuickLabs/QuickLab\ 6/file2.txt

; reads values in from a text file named One
(defun ReadOne ()
  ;Initializing the values
  ;open --> filespec &key direction element-type if-exists if-does-not-exist external-format
  (let* (
         (fileOne (open One))
         (A (read fileOne)) 
         (B (read fileOne))
         (OneA ()) 
         (OneB ())
        )
    ; basically sets OneA to the fileOnes content to what it already has in it
    (dotimes (i A)
      (sef OneA (cons (read fileOne) OneA))
    )

    ; basically sets OneB to the fileOnes content to what it already has in it
    (dotimes (x B)
      (setf OneB (cons (read fileOne) OneB))
    )
    
    ; prints values stored in OneA and OneB
    (print OneA)
    (print OneB)
  )

(defun ReadTwo ()
  (let* (
         (fileTwo (open Two))
         (TwoAll ())
         (rdTwo nil)
        ) 
    (loop until (eq :gubby (setf rdTwo (read fileTwo nil :gubby)))
       do (setf TwoAll (cons rdTwo TwoAll)))
    (print TwoAll)
  )
)
