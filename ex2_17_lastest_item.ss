(define (last-pair items)
    (cond
      ((null? items) items)
      ((<= (length items) 1) items)
      (else (last-pair (cdr items)))
    )
  )

(last-pair (list 12 18 0 4))

(last-pair (list 12))

(last-pair (list))

