(define (multiply a b)
  (if (= a 0)
      0
      (add b (multiply (- a 1) b))))
