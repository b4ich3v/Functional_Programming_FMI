#lang racket

(define nats
  (define-stream (nats-helper n)
    (cons-stream n (nats-helper (+ n 1))))
  (nats-helper 0))
