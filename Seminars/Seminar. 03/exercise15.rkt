(define (exists? p l)
  (foldr (lambda (x acc) (or (p x) acc)) #f l))  
