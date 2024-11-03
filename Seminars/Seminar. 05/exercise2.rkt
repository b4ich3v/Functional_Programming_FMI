(define (assoc-set l k v)
  (let ((existing (assoc k l)))
    (if existing
        (cons (cons k v) (remove (lambda (pair) (eq? (car pair) k)) l))
        (cons (cons k v) l))))
