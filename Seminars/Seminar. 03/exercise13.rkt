(define (sum l)
  (foldr (lambda (x acc) (+ x acc)) 0 l))  
