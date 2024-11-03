(define (assoc-get l k)
  (let ((pair (assoc k l)))
    (if pair (cdr pair) #f)))
