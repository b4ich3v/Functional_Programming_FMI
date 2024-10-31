(define (fact-iter n acc)
  (if (= n 0)
      acc
      (fact-iter (- n 1) (* n acc))))

(define (fact n)
  (fact-iter n 1))
