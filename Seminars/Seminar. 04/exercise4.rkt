(define (scalmul x m)
  (mat-map (lambda (element) (* x element)) m))
