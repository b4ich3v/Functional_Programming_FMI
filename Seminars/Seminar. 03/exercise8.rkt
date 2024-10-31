(define (insert x n l)
  (cond
    ((= n 0) (cons x l))  
    ((null? l) (cons x '()))  
    (else (cons (car l) (insert x (- n 1) (cdr l)))))) 
