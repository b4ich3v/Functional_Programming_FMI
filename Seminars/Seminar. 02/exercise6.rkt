(define (exists? p a b)
  (accumulate-n (lambda (x y) (if (or x y) #t #f)) #f (lambda (x) (p x)) a b))
