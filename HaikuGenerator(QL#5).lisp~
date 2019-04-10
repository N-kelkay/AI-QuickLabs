; Nateanel Kelkay
; Quick Lab #5 Haiku Generator

(defparameter *nature* 
  '(ones-> ("rose" "fleur" "leaf" "earth" "bud" "birch" "ash")
    twos-> ("weather" "atmosphere" "glacier" "ocean" "human") 
    threes-> ("universe" "atmosphere" "earth" "oxygen" "wilderness")))

(defparameter *school*
  '(ones-> ("school" "Desk" "chair" "help" "work" "late" "bad")
    twos-> ("Adults" "absent" "study" "teachers" "students")
    threes-> ("misery" "Detention" "schedule" "assignment")))

(defparameter *physics*
  '(ones-> ("force" "spring" "mass" "quantity" "force" "phi")
   twos-> ("normal" "tension" "degree" "degree" "radian" "vector" "center" )
   threes-> ("gravitation" "rotation" "angular" "kiematics" "magnitude")))

(defun haiku ()
  
  ;Final lists that will be out puted 
  (setf finalList1 nil) ; 5 syllable
  (setf finalList2 nil) ; 7 syllable
  (setf finalList3 nil) ; 5 syllable
  
  ;created list of the 3 lists in one of the defparameter and then chooses a random value
  (setf first (car (cdr *school*)))
  (setf second (car (cdddr *school*)))
  (setf third (car (cdr (cddddr *school*))))
  (setf word (helperMeth first second third))
  (setf syllableCount (findSyllable word))
 
  ;adds word to list1
  (cons word finalList1)
  (cons (helperMeth first second third) finalList1)
  (cons (helperMeth first second third) finalList1)
  (setf numofSyl1 (countTotSyllable finalList1))
  (if (not (equalp numofSyl1 5))
      (if (< numofSyl1 5) 
          (cons (helperMeth first second third) finalList1)
          (setf finalList1 (cdr finalList1)) )) 

  ;adds word to list2
  (cons (helperMeth first second third) finalList1)
  (cons (helperMeth first second third) finalList1)
  (cons (helperMeth first second third) finalList1)
  (setf numofSyl2 (countTotSyllable finalList2))
  ;adds word to list3
  (cons (helperMeth first second third) finalList1)
  (cons (helperMeth first second third) finalList1)
  (cons (helperMeth first second third) finalList1)
  (setf numofSyl3 (countTotSyllable finalList3))
  
  ;combines the finished lists into one to create a nested list
  (setf finalList (list finalList1 finalList2 finalList3))
  
  (format t "~{~{~a ~}~%~}" finalList)
)

(defun helperMeth (f s x)

;Random value from the first list
(setf indx1 (random (LIST-LENGTH f)))
(setf valuef (nth indx1 f))

;Random value from the first list
(setf indx2 (random (LIST-LENGTH s)))
(setf values (nth indx2 s))

;Random value from the first list
(setf indx3 (random (LIST-LENGTH x)))
(setf valuex (nth indx3 x))

(setf finalList (list valuef values valuex))
(setf indxFinal (random (LIST-LENGTH finalList)))
(setf finalWord (nth indxFinal finalList))
)

(defun findSyllable (a)
  ;Figures out the number of syllable it has
  (setf num 0)
  (cond
    ((member a first) (setf num 1))
    ((member a second) (setf num 2))
    ((member a third) (setf num 3))
    (t (setf num 0)))
)

(defun countTotSyllable(a)
(setf sum 0)
(dolist (word a sum)
  (setf sum (+ sum (findSyllable word)))))


(haiku)





  