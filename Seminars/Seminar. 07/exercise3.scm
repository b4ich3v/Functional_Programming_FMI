(define (in-deg g x)
  (length (filter (lambda (kv)
                    (member x (cdr kv)))
                  g)))
