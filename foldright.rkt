; Definition of Fold Right
(define (mfoldright f s l)
  (if (null? (cdr l)) ; Check if only last element
      (f s (car l)) ;if last element then apply f with seed to last element
      (f (car l) (mfoldright f s (cdr l))) ; else apply f with first element to foldright of other elements with seed
      )
  )

;example 1
;expected answer = 25
(mfoldright + 2 '(2 5 3 4 9))

;example 2
;expected answer = 6
(mfoldright + 0 '(1 2 3))