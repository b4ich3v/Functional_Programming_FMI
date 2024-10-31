(define (foldr l op init)
  (if (null? l)
      init  
      (op (car l) (foldr (cdr l) op init))))  
