(define (fib n)
  (fib-iter 1 0 n)
)

(define (fib-iter a b count)
  (if (= count 0)
      b
     (fib-iter (+ a b) a (- count 1))))

(define (sum-even-fib max)
  (define (sum-int pos sum max)
    (let ((fn (fib pos)))
    (if (> fn max)
        sum
        (sum-int (+ pos 1) (+ sum (if (even? fn) fn 0)) max)
    )
    )
  )
  (sum-int 2 0 max)
)

(sum-even-fib 4000000)
