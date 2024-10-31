(define (at n l)
  (cond
    ((null? l) #f)  
    ((= n 0) (car l))  ; Връща първия елемент, ако n е 0
    (else (at (- n 1) (cdr l)))))  ; Намалява n и продължава
