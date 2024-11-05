(define (trie-add word trie)
  (if (null? word)
      (cons '* trie) ; добавяме край на дума
      (let ((head (car word))
            (tail (cdr word)))
        (if (assoc head trie)
            (cons (cons head (trie-add tail (cdr (assoc head trie)))) (remove head trie))
            (cons (cons head (trie-add tail '())) trie)))))
