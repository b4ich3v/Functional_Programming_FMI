(define (assoc-map f l)
  (map (lambda (pair) (cons (car pair) (f (cdr pair)))) l))
