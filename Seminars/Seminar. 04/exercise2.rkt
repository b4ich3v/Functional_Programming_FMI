(define (mat-map f m)
  (map (lambda (row) (map f row)) m))
