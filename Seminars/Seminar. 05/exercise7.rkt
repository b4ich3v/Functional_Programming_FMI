(define (assoc-merge l1 l2)
  (foldl (lambda (pair acc) (assoc-set acc (car pair) (cdr pair))) l1 l2))
