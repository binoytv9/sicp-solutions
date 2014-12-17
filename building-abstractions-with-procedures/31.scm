(define (product term a next b)
	(if (> a b)
		1
		(* (term a) (product term (next a) next b))))

;(a)
  ;(i)
	(define (factorial n) (product identity 1 inc n))
	(define (identity x) x)
	(define (inc x) (+ x 1))

  ;(ii)
	(define (pi-sum a b) (product foo a incby2 b))
	(define (foo x) (* (/ x (+ x 1)) (/ (+ x 2) (+ x 1))))
	(define (incby2 x) (+ x 2))

;(b)
(define (pro-iter term a next b)
	(define (iter a result)
		(if (> a b)
			result
			(iter (next a) (* (term a) result))))
	(iter a 1))
