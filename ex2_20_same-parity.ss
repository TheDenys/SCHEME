(define (parity . params)
  (define (parity-inner items p)
    (cond
      ((null? items) items)
      ((OR (AND (odd? p) (odd? (car items))) (AND (even? p) (even? (car items)))) (cons (car items) (parity-inner (cdr items) p)))
      (else (parity-inner (cdr items) p))
      )
    )
  (parity-inner (cdr params) (car params))
)
 
(parity 2 3 4 5 6 7)