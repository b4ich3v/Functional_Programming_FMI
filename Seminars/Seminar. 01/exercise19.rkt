(define (safe-div n)
  (if (even? n)
      (/ n 2)
      (/ (- n 1) 2)))
