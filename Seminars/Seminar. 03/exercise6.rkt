(define (push-back x l)
  (if (null? l)
      (list x)  
      (cons (car l) (push-back x (cdr l)))))  
