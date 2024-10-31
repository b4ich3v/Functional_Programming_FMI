(define (is-bijection-over f items)
  (define mapped (my-map f items))
  (and (equal? (length (remove-duplicates mapped)) (length items))
       (equal? (length (remove-duplicates items)) (length items))))  
