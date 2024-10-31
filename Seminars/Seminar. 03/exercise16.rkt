(define (my-member2? l x)
  (exists? (lambda (y) (equal? y x)) l))  
