(define (forall? p l)
  (foldr (lambda (x acc) (and (p x) acc)) #t l))  
