(define (my-filter p l)
  (cond
    ((null? l) '())  
    ((p (car l)) (cons (car l) (my-filter p (cdr l))))  
    (else (my-filter p (cdr l)))))  
