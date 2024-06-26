(define (split-string predicate? str)
  (let loop ((chars (string->list str))
             (current '())
             (words '()))
    (cond ((null? chars)
           (if (null? current)
               (reverse words)
               (reverse (cons (list->string (reverse current)) words))))
          ((predicate? (car chars))
           (if (null? current)
               (loop (cdr chars) current words)
               (loop (cdr chars) '() (cons (list->string (reverse current)) words))))
          (else
           (loop (cdr chars) (cons (car chars) current) words)))))

