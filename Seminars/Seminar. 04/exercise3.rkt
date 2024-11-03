(define (mat? m)
  (and (every? (lambda (row) (every? number? row)) m)
       (apply = (map length m))))
