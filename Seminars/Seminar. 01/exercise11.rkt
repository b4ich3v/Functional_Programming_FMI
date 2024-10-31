(define (palindrome? base n)
  (define (to-base n base)
    (if (= n 0)
        '()
        (cons (modulo n base) (to-base (quotient n base) base))))
  
  (define digits (to-base n base))
  (equal? digits (reverse digits)))
