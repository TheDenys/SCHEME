(define (rev items)
    (define (rev-it items revitems pos)
        (if (< pos 0)
          revitems
          (rev-it items (append revitems (list (list-ref items pos))) (- pos 1))
        )
    )
    (rev-it items (list) (- (length items) 1))
)

(rev (list 9 8 7 6))

(define (rev items)
    (if (null? items)
        items
        (append (rev (cdr items)) (list (car items)))
        )
    )

(rev (list 9 8 7 6))
