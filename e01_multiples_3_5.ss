(define (sum-mul-3-5 max)
  (define (sum-int pos sum max)
    (if (= pos max)
        sum
        (sum-int (+ pos 1) (+ sum 
                            (if (OR (= (modulo pos 3) 0) (= (modulo pos 5) 0)) pos 0)
                            ) max)
    )
  )
  (sum-int 0 0 max)
)

(sum-mul-3-5 1000)