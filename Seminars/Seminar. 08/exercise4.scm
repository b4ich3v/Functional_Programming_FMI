#lang racket

(require racket/stream)

(define (stream-filter p s)
  (cond
    [(stream-empty? s) '()]
    [(p (stream-first s))
     (cons-stream (stream-first s)
                  (stream-filter p (stream-rest s)))]
    [else (stream-filter p (stream-rest s))]))
