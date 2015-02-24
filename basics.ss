(let ( (a 1)
       (b 2)
     )
   (+ a b)
)

(
   (lambda (x y) (+ x y)) 2 7
)

(list 3 5 7)

(define l1 (list 3 5 7))

(car l1)

(cdr l1)

(define (f1 x) (* x x))

(f1 2)

(define (f2 ff x) (+ (ff x) 1))

(f2 f1 2)

(define (zero? x) (= x 0))

(zero? 0)

(zero? 1)

(define (f1 x) (* x x x))

(f2 f1 2)

(f2 (lambda (x) (+ x 1)) 2)

(define (p) (p))

(define (f) 1)

(+ (* 2 4) (- 4 6))

(define a 3)

(define b (+ a 1))

(= a b)

(cond ((= a 4) 6)
        ((= b 4) (+ 6 7 a))
        (else 25))

(>= b a)

((lambda (x) x) 1)

((lambda (x) (x)))

((lambda (x) (x)) 1)

(define l (list 7 8 9))

(car l)

(length l)

(null? l)

(append 2 l)

(append (list 2) l)

(
   (lambda (items) 
     (cdr items)
   ) 
   l)

(
   (lambda (items) 
     (cdr (cdr items))
   ) 
   l)

(
   (lambda (items) 
     (cdr (cdr (cdr items)))
   ) 
   l)
   
 