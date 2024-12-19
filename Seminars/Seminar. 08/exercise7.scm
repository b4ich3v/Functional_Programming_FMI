#lang racket

(require racket/stream)

(define (iterate f x)
  (cons-stream x (iterate f (f x))))
