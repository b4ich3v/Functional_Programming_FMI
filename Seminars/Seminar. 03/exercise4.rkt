(define (my-member? l x)
  (cond
    ((null? l) #f)  
    ((equal? (car l) x) #t)  
    (else (my-member? (cdr l) x))))  
