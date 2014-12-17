;(a)
(define (accumulate combiner null-value term a next b)
	(if (> a b)
		null-value
		(combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (sum a b) (accumulate + 0 identity a inc b))
(define (product a b) (accumulate * 1 identity a inc b))

(define (inc x) (+ x 1))
(define (identity x) x)

;(b)
(define (accumulate-iter combiner null-value term a next b)
	(define (iter a result)
		(if (> a b)
			result
			(iter (next a) (combiner (term a) result))))
	(iter a null-value))

(define (sum-i a b) (accumulate-iter + 0 identity a inc b))
(define (product-i a b) (accumulate-iter * 1 identity a inc b))

