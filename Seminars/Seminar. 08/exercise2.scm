#lang racket

(require racket/stream)

(define (stream-take s n)
  (cond
    [(<= n 0) '()]
    [(stream-empty? s) '()]
    [else (cons (stream-first s)
                (stream-take (stream-rest s) (- n 1)))]))
