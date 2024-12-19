#lang racket

(require racket/stream)

(define (sieve s)
  (cons-stream (stream-first s)
               (sieve (stream-filter (λ (x) (not (= (remainder x (stream-first s)) 0))) 
                                     (stream-rest s)))))

(define primes2 (sieve (stream-drop nats 2))) 
