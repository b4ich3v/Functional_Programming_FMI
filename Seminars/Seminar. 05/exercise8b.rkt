(define (assoc-merge-sum l1 l2)
  (assoc-merge-resolve (lambda (k v1 v2) (+ v1 v2)) l1 l2))
