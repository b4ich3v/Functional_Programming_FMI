(define (forall? p a b)
  (accumulate-n (lambda (x y) (if (and x y) #t #f)) #t (lambda (x) (p x)) a b))
