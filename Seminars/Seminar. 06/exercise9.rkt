(define (trie-words trie)
  (define (collect node prefix)
    (cond ((null? node) '())
          ((eq? (car node) '*)
           (list (list->string prefix)))
          (else
           (append
            (collect (cdr node) (append prefix (list (car node))))
            (collect (cdr (cdr node)) prefix)))))
  (collect trie '()))
