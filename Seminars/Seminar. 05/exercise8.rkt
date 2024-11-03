(define (assoc-merge-resolve f l1 l2)
  (foldl (lambda (pair acc)
           (let ((k (car pair)) (v2 (cdr pair)))
             (assoc-set acc k
                        (if (assoc-get l1 k)
                            (f k (assoc-get l1 k) v2)
                            v2))))
         l1 l2))
