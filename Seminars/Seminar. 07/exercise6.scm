(define (edge? g x y)
  (let ((neighbors (cdr (assoc x g))))
    (and neighbors (member y neighbors))))
