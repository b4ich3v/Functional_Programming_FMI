(define (len l)
  (if (null? l)
      0
      (+ 1 (len (cdr l)))))  ; Дължината е 1 + дължината на опашката
