(define (apply-delta* delta state word)
  (if (null? word)
      state
      (apply-delta* delta (apply-delta delta state (car word)) (cdr word))))
