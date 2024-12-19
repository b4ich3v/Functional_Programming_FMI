#lang racket

(require racket/stream)

(define (is-prime? n)
  (cond
    [(< n 2) #f]
    [(= n 2) #t]
    [else
     (let loop ([i 2])
       (cond
         [(> (* i i) n) #t]
         [(= (remainder n i) 0) #f]
         [else (loop (+ i 1))]))]))

(define primes
  (stream-filter is-prime? nats))
