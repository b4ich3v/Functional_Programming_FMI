(define (str-str? needle haystack)
  (let ((pos (string-index haystack needle)))
    (if pos pos #f)))
