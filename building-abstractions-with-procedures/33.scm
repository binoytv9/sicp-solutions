(define (filtered-accumulate filtr combiner null-value term a next b)
	(cond	((> a b) null-value)
		((filtr a) (combiner (term a) (filtered-accumulate filtr combiner null-value term (next a) next b)))
		(else (combiner null-value (filtered-accumulate filtr combiner null-value term (next a) next b)))))

(define (inc x) (+ x 1))
(define (identity x) x)


(define (prime n)
	(if (= n 1)
		false
		(= (smallest-divisor n) n)))

(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
	(cond	((> (square test-divisor) n) n)
		((divides? test-divisor n) test-divisor)
		(else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b) (= (remainder b a) 0))


(define (gcd x y)
	(if (= (remainder x y) 0)
		y
		(gcd y (remainder x y))))

;(a)
(define (sum a b) (filtered-accumulate prime + 0 square a inc b))
;(b)
(define (product a b) 
	(define (gcd? x) (= (gcd x b) 1))
(filtered-accumulate gcd? * 1 identity 1 inc b))
