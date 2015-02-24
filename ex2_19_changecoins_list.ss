(define us-coins (list 50 25 10 5 1))

(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(define (cc amount coin-values)
    (cond ((= amount 0) 1)
    ((or (< amount 0) (no-more? coin-values)) 0)
    (else
        (+ (cc amount
        (except-first-denomination coin-values))
        (cc (- amount
        (first-denomination coin-values))
        coin-values)
        )
    )
    )
)

(define (first-denomination items)
    (if (or (null? items) (= (length items) 0))
        items
        (car items)
        )
    )

(define (except-first-denomination items)
    (if (or (null? items) (= (length items) 0))
        items
        (cdr items)
        )
    )

(define (no-more? items) (= (length items) 0))

(cc 100 us-coins)

(cc 100 (list 1 5 10 25 50))