(define (fact n)
  (if (= n 0)
      1
      (multiply n (fact (- n 1)))))
