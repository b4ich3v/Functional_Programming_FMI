(define (out-deg g x)
  (let ((neighbors (cdr (assoc x g))))
    (if neighbors (length neighbors) 0)))
