(define (o f g)
  (lambda (x)
    (f (g x))))
