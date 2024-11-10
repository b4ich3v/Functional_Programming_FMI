(define (max-deg g)
  (apply max (map (lambda (kv) (deg g (car kv))) g)))
