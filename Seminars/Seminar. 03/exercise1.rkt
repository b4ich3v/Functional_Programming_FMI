(define (is-list? x)
  (cond
    ((null? x) #t)  
    ((pair? x) #t)  
    (else #f)))     
