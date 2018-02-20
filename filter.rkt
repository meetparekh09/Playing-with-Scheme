(define (mfilter pred l)
  (cond
    ((null? l) '()) ;if list is empty then return
    ;if predicate is true for i append i along with rest of the filtered elements
    ((pred (car l)) (cons (car l) (mfilter pred (cdr l)))) 
    (else (mfilter pred (cdr l))) ;else ignore i and filter other elements
    )
  )

;example
(mfilter even? '(1 2 3 4))