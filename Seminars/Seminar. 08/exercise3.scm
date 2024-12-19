#lang racket

(require racket/stream)

(define (stream-map f s)
  (if (stream-empty? s)
      '()
      (cons-stream (f (stream-first s))
                   (stream-map f (stream-rest s)))))
