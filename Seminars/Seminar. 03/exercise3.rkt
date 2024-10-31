(define (repeat n x)
  (if (<= n 0)
      '()  
      (cons x (repeat (- n 1) x))))  
