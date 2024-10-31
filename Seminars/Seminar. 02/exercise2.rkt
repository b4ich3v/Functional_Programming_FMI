(define (repeated n f)
  (lambda (x)
    (if (= n 0)
        x
        ((repeated (- n 1) f) (f x)))))
