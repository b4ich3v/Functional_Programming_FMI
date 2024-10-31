(define (pred n)
  (if (= n 0)
      0
      (succ (pred (- n 1)))))
