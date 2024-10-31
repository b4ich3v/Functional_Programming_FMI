(define (fixpoints-of-some-func fs xs)
  (filter (lambda (x)
            (exists? (lambda (f) (equal? (f x) x)) fs))
          xs))  
