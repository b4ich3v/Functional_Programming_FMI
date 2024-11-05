(define (apply-delta delta state symb)
  (let ((transition (assoc (list state symb) delta)))
    (if transition
        (cadr transition)
        #f))) ; ако няма преход, връщаме #f

