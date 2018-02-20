(define (mhighest l k)
(letrec
    ((mmax (lambda(m l) ;Max function to find the maximum element in the list
              (cond
                ((null? l) m) ;If list is null then return m i.e max till now

                ;if first element is greater then m make it max till now and compare with rest of the list
                ((> (car l) m) (mmax (car l) (cdr l))) 
                (else (mmax m (cdr l))) ;else check for max in the rest of the list
                )
            )
          )
    
      (mremove (lambda (l e) ;it removes an element e from the list
              (cond
                ((null? l) l) ;if list is null then return

                ;if first element is the element we won't to delete then take rest of the list and igonore first element
                ((equal? e (car l)) (cdr l))

                ;else take first element and search for element in the rest of the list
                (else (append (list (car l)) (mremove (cdr l) e))) 
                )
              )
            )
    )
  (if
    (equal? k 0) '()
    (append
     (list (mmax (car l) (cdr l))) ;find the maximum element
     (mhighest
      (mremove l (mmax (car l) (cdr l))) ;remove the current maximum element from the list
      (- k 1))) ;append the element with other k-1 maximum elements
    )
  ))

;example 1
;expected answer (9 8 6)
(define a '(2 5 8 3 9 6))
(mhighest a 3)