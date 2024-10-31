(define (fib-iter n a b)
  (if (= n 0)
      a
      (fib-iter (- n 1) b (+ a b))))

(define (fib n)
  (fib-iter n 0 1))
