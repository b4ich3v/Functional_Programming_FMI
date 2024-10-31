(define (count p a b)
  (accumulate-n (lambda (x y) (+ x y)) 0 (lambda (x) (if (p x) 1 0)) a b))
