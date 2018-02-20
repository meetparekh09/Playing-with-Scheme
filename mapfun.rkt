(define (mmapfun fl l)
  (cond
    ((null? fl) '()) ;if function list is null then return
    ((null? l) '()) ;if argument list is null then return
    (else
       ;apply first function to first argument and then append mapping of rest of functions to rest of arguments
       (cons  ((car fl) (car l)) (mmapfun (cdr fl) (cdr l))) 
    )
  )
)

;example
(mmapfun (list cadr car cdr) '((a b) (c d) (e f)))

;example
(mmapfun (list cadr car) '((a b) (c d) (e f)))

;example
(mmapfun (list cadr car cdr) '((a b) (c d)))