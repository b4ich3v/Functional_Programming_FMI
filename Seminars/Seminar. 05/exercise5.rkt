(define (assoc-filter p l)
  (filter (lambda (pair) (p (cdr pair))) l))
