(define (accumulate-n op init f begin end)
  (if (> begin end)
      init
      (op (f begin) (accumulate-n op init f (+ 1 begin) end))))
