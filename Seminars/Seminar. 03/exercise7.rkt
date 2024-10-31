(define (my-reverse l)
  (define (rev-helper l acc)
    (if (null? l)
        acc
        (rev-helper (cdr l) (cons (car l) acc))))
  (rev-helper l '()))  
