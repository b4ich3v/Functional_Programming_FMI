(define (my-map f l)
  (if (null? l)
      '()  
      (cons (f (car l)) (my-map f (cdr l)))))  
