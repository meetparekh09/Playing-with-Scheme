;Reverses the list
(define (mreverse l)
  (if (null? (cdr l)) l ;if only one element then return it
      (append (reverse (cdr l)) (list (car l))) ;else append first element to the reverse of rest of the elements
      )
  )

(define (mparamreverse f al)
  (apply f (reverse al)) ;apply f to reversed arguments
  )

;example 1
;expected answer = 1
(mparamreverse - '(1 2))

;example 2
;expected answer = 1/2
(mparamreverse / '(2 1))