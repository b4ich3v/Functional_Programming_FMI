(define (assoc? l)
  (and (every? pair? l)
       (let loop ((keys '()) (pairs l))
         (if (null? pairs)
             #t
             (let ((key (car (car pairs))))
               (if (member key keys)
                   #f
                   (loop (cons key keys) (cdr pairs))))))))
