(define (add a b)
  (if (= a 0)
      b
      (succ (add (- a 1) b))))
