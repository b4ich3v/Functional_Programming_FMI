(define (dot-product row col)
  (apply + (map * row col)))

(define (matmul m n)
  (let ((transposed-n (transpose n)))
    (map (lambda (row)
           (map (lambda (col)
                  (dot-product row col))
                transposed-n))
         m)))
